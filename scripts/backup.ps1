param(
    [string]$JenkinsContainer = "jenkins-qa",
    [string]$BackupDir = "backups"
)

function Write-ColorOutput {
    param([string]$Message, [string]$Color = "White")
    Write-Host $Message -ForegroundColor $Color
}

function Test-DockerContainer {
    param([string]$ContainerName)
    try {
        $null = docker inspect $ContainerName
        return $true
    } catch {
        return $false
    }
}

$DATE = Get-Date -Format "yyyyMMdd_HHmmss"

Write-ColorOutput "🔵 Iniciando backup do Jenkins QA..." "Cyan"

# Verificar se Docker está disponível
try {
    $dockerVersion = docker --version
    Write-ColorOutput "🐳 Docker detectado: $dockerVersion" "Green"
} catch {
    Write-ColorOutput "❌ Docker não está disponível" "Red"
    exit 1
}

# Verificar se container existe e está rodando
if (-not (Test-DockerContainer $JenkinsContainer)) {
    Write-ColorOutput "❌ Container '$JenkinsContainer' não encontrado ou não está rodando" "Red"
    Write-ColorOutput "💡 Execute: docker-compose up -d" "Yellow"
    exit 1
}

try {
    # Criar diretório de backup se não existir
    if (!(Test-Path $BackupDir)) {
        New-Item -ItemType Directory -Path $BackupDir -Force
        Write-ColorOutput "📁 Diretório de backup criado: $BackupDir" "Yellow"
    }

    # Backup da lista de plugins
    Write-ColorOutput "📦 Exportando lista de plugins..." "Cyan"
    docker exec $JenkinsContainer java -jar /var/jenkins_home/war/WEB-INF/jenkins-cli.jar -s http://localhost:8080/ list-plugins > "$BackupDir\plugins_list_$DATE.txt"
    
    # Backup de jobs e configurações (apenas estrutura)
    Write-ColorOutput "📋 Exportando jobs e configurações..." "Cyan"
    docker exec $JenkinsContainer find /var/jenkins_home/jobs -name "config.xml" > "$BackupDir\jobs_structure_$DATE.txt" 2>$null
    
    Write-ColorOutput "✅ Backup concluído com sucesso!" "Green"
    Write-ColorOutput "📄 Plugins: $BackupDir\plugins_list_$DATE.txt" "White"
    Write-ColorOutput "📁 Jobs: $BackupDir\jobs_structure_$DATE.txt" "White"
    Write-ColorOutput "🕒 Timestamp: $DATE" "Gray"
}
catch {
    Write-ColorOutput "❌ Erro durante o backup: $($_.Exception.Message)" "Red"
}
function iniciarServidor {
    # Establece la variable de entorno JAVA_HOME
    $env:JAVA_HOME = "C:\Java"
    
    # Añade el directorio bin del JDK al PATH del sistema
    $env:PATH += ";C:\Java\jdk-22.0.2\bin"
    
    # Define los puertos y protocolos para las reglas de firewall
    $puertos = 404
    $protocolos = @("TCP", "UDP")
    $perfilesDeFirewall = "Domain,Private,Public"

    # Crea reglas de firewall para permitir el tráfico en el puerto 404 para IPv4 e IPv6
    foreach ($protocolo in $protocolos) {
        foreach ($perfil in $perfilesDeFirewall.Split(',')) {
            $descripcionEntrante = "Permitir Puerto $puertos $protocolo IPv4 Entrante ($perfil)"
            $descripcionSaliente = "Permitir Puerto $puertos $protocolo IPv4 Saliente ($perfil)"
            
            # Verifica y crea reglas de firewall solo si no existen
            if (-not (Get-NetFirewallRule -DisplayName $descripcionEntrante -ErrorAction SilentlyContinue)) {
                New-NetFirewallRule -DisplayName $descripcionEntrante -Direction Inbound -Protocol $protocolo -LocalPort $puertos -Action Allow -Enabled True -Profile $perfil
            }
            if (-not (Get-NetFirewallRule -DisplayName $descripcionSaliente -ErrorAction SilentlyContinue)) {
                New-NetFirewallRule -DisplayName $descripcionSaliente -Direction Outbound -Protocol $protocolo -LocalPort $puertos -Action Allow -Enabled True -Profile $perfil
            }
        }
    }

    # Inicia el servidor de Minecraft con privilegios de administrador
    Start-Process "C:\ServidorDeMinecraft\bedrock_server\bedrock_server.exe" -Verb RunAs
}

iniciarServidor

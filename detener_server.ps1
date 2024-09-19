function detenerServidorMinecraft {
    # Obtiene el proceso del servidor de Minecraft
    $proceso = Get-Process -Name "bedrock_server" -ErrorAction SilentlyContinue

    # Verifica si el proceso está en ejecución
    if ($proceso) {
        # Obtiene el ID del proceso
        $idProceso = $proceso.Id

        # Detiene el proceso de Minecraft forzadamente
        Stop-Process -Id $idProceso -Force
        Write-Output "Servidor de Minecraft detenido correctamente."
    } else {
        Write-Output "El servidor de Minecraft no está en ejecución."
    }
}

detenerServidorMinecraft

function DescargarZipExtraerEnC {
    $url = "https://download.java.net/java/GA/jdk22.0.2/c9ecb94cd31b495da20a27d4581645e8/9/GPL/openjdk-22.0.2_windows-x64_bin.zip"
    $rutaDeDescarga = "C:\javaJDK.zip"
    $rutaDeExtraccion = "C:\Java"

    # Crear la carpeta en C: si no existe
    if (-not (Test-Path -Path $rutaDeExtraccion)) {
        try {
            New-Item -Path $rutaDeExtraccion -ItemType Directory -Force
            Write-Host "Carpeta creada: $rutaDeExtraccion"
        } catch {
            Write-Error "No se pudo crear la carpeta $rutaDeExtraccion. $_"
            return
        }
    }

    # Descargar el archivo ZIP
    try {
        Start-BitsTransfer -Source $url -Destination $rutaDeDescarga
        Write-Host "Archivo descargado en: $rutaDeDescarga"
    } catch {
        Write-Error "No se pudo descargar el archivo desde $url. $_"
        return
    }

    # Extraer el archivo ZIP
    try {
        Expand-Archive -Path $rutaDeDescarga -DestinationPath $rutaDeExtraccion -Force
        Write-Host "Archivo extraído en: $rutaDeExtraccion"
    } catch {
        Write-Error "No se pudo extraer el archivo ZIP en $rutaDeExtraccion. $_"
        return
    }
}

DescargarZipExtraerEnC

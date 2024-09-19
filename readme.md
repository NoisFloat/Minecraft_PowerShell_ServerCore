## Instrucciones de instalación y uso

### Requisitos previos:
Antes de iniciar el servidor de Minecraft, es necesario instalar el JDK de Java. A continuación, se explican los pasos para ello.

### Instalación de JDK (se ejecuta una sola vez):
1. Ejecuta el script **instalar_jdk.ps1**.
   - Este script descargará e instalará el JDK de Java en la ruta `C://Java` de tu máquina.
   - Este paso solo es necesario la **primera vez** que configures el servidor.

### Inicio del servidor:
1. Ejecuta el script **iniciar_server_.ps1** cada vez que quieras **iniciar** el servidor de Minecraft.
   - Este script inicia el servidor con los parámetros configurados.

### Parar el servidor:
1. Para detener el servidor, ejecuta el script **detener_server.ps1**.
   - Este script apagará el servidor de forma segura.

---

# Configuración del Servidor de Minecraft: Actividad Evaluativa 3

Este README contiene los parámetros que han sido configurados para personalizar el servidor de Minecraft y las instrucciones para ejecutar los scripts asociados.

## Parámetros del servidor

### Nombre del servidor:
- **Nombre**: `Actividad Evaluativa 3`
- **Descripción**: Este es el nombre del servidor que será visible para los jugadores conectados.

### Dificultad:
- **Dificultad**: `hard`
- **Descripción**: El servidor está configurado en dificultad difícil, lo que proporciona un mayor reto para los jugadores.

### Cheats (Trampas):
- **allow-cheats**: `true`
- **Descripción**: Los comandos de trampas están habilitados, lo que permitirá a los jugadores ejecutar comandos como `/give`, `/tp`, entre otros.

### Número máximo de jugadores:
- **max-players**: `5`
- **Descripción**: El servidor permite hasta 5 jugadores simultáneamente debido a limitaciones de hardware.

### Modo en línea:
- **online-mode**: `false`
- **Descripción**: La autenticación a través de Xbox Live está desactivada para evitar posibles problemas con cuentas de Microsoft.

### Lista de permisos:
- **allow-list**: `false`
- **Descripción**: No se utiliza una lista de permitidos (whitelist) ya que, de momento, no se ha definido quiénes serán los jugadores.

### Puertos del servidor:
- **server-port (IPv4)**: `404`
- **server-portv6 (IPv6)**: `405`
- **Descripción**: El puerto 404 para IPv4 y el 405 para IPv6 han sido elegidos como referencia a los códigos de materias (con uno añadido para IPv6).

### Distancia de renderizado:
- **view-distance**: `10`
- **Descripción**: La distancia de renderizado se ha limitado a 10 chunks para optimizar el rendimiento del servidor.

### Distancia de ticks:
- **tick-distance**: `4`
- **Descripción**: Los chunks se actualizarán hasta una distancia de 4 chunks desde los jugadores, configurado para mejorar el rendimiento debido a limitaciones de hardware.

### Hilos máximos:
- **max-threads**: `4`
- **Descripción**: El servidor está configurado para utilizar un máximo de 4 hilos del procesador debido a las limitaciones del hardware.




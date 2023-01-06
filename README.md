# Instalacion de ruby on rails para el funcionamiento del repositorio.
###Fabrizzio Hormazabal
###webiici
Pasos para hacer funcionar el repositorio.

#1. Instalar Ruby
Descarga la última versión estable de Ruby desde el sitio web oficial de Ruby: https://rubyinstaller.org

Haz doble clic en el archivo de instalación descargado y sigue las instrucciones para instalar Ruby en tu computadora.

Una vez que la instalación haya finalizado, abre una ventana de la línea de comandos (puedes hacerlo buscando "cmd" en el menú Inicio).

En la ventana de la línea de comandos, escribe el siguiente comando para verificar que Ruby se ha instalado correctamente:

Ahora abrimos cmd y escribimos el siguente codigo.
```
ruby --version
```
Con esta linea de comandos veremos si ruby esta correctamente instalado 

#2. Instalar Ruby on rails y SQLite
Para instalar ruby on rails tenemos que escribir en cmd lo siguente.

```
gem install rails
```
```
gem install sqlite3-ruby
```

y verificar si esta correctamente instalado en cmd con.

```
rails --version
```

#3. Clonar el repositorio
Ahora debe clonar el repositorio para poder utilizarlo.

debe ejecutar lo siguente en la terminal cmd, en su carpeta favorita.
```
git clone git@github.com:fbrzzhormazabal/webicci.git
```

#4. Entrar a el proyecto "webicci"
en la terminal cmd ejecutamos.

```
cd webicci
```

estando dentro de la carpeta de webicci ejecutaremos lo siguiente en la terminal.

```
gem install bundler
```

```
rails db:migrate
```

para poder abrir la pagina web se debe ejectuar el siguente comando

```
rails server
```

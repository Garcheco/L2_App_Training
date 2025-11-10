Aquí tienes el contenido preparado en formato README.md, listo para copiar y pegar en tu repositorio GitHub. Este formato es ideal para mostrar el plan detallado y ejercicios de la semana 1 de RH134 de forma clara y estructurada:

```markdown
# RH134 - Semana 1: Plan Detallado y Ejercicios Hands-on

## Objetivos de la Semana 1

- Mejorar la productividad en la línea de comandos con Bash.
- Crear y ejecutar scripts básicos en Bash.
- Usar filtros y herramientas de procesamiento de texto.
- Consolidar conocimientos de comandos fundamentales.

---

## Plan Detallado y Ejercicios Día a Día

### Día 1: Navegación y Operaciones Básicas

- `cd ~`
- `mkdir practicas_rh134`
- `cd practicas_rh134`
- `touch archivo1.txt archivo2.txt archivo3.txt`
- `mkdir datos`
- `mv archivo3.txt datos/`
- `ls -l`
- `ls -l datos/`
- `rm archivo2.txt`

### Día 2: Edición Básica y Búsqueda

- Edita `archivo1.txt` con `nano` o `vim`, escribe algunas líneas y guarda:
  ```
  nano archivo1.txt
  ```
- Muestra las primeras líneas del archivo:
  ```
  head archivo1.txt
  ```
- Muestra las últimas líneas del archivo:
  ```
  tail archivo1.txt
  ```
- Busca una palabra específica dentro del archivo:
  ```
  grep "palabra" archivo1.txt
  ```
- Cuenta líneas, palabras y caracteres:
  ```
  wc archivo1.txt
  ```

### Día 3: Primeros Scripts Bash

- Crea un script llamado `hola.sh` que imprima “¡Hola, RH134!”:
  ```
  echo -e '#!/bin/bash\necho "¡Hola, RH134!"' > hola.sh
  chmod +x hola.sh
  ./hola.sh
  ```
- Modifica el script para que reciba un parámetro y lo muestre:
  ```
  #!/bin/bash
  echo "Hola, $1"
  ```
  Ejecuta con argumento:
  ```
  ./hola.sh Mundo
  ```

### Día 4: Condicionales y Bucles

- Crea un script `chequear.sh` que reciba un archivo y diga si existe:
  ```
  #!/bin/bash
  if [ -f "$1" ]; then
    echo "El archivo $1 existe."
  else
    echo "El archivo $1 no existe."
  fi
  ```
- Prueba con:
  ```
  ./chequear.sh archivo1.txt
  ./chequear.sh inexistente.txt
  ```
- Bucle que imprima del 1 al 5:
  ```
  for i in {1..5}; do
    echo "Iteración $i"
  done
  ```

### Día 5: Filtros y Pipes

- Extrae líneas con "una" y ordénalas:
  ```
  grep "una" archivo1.txt | sort
  ```
- Cuenta líneas que contienen "Linux" (sin importar mayúsculas/minúsculas):
  ```
  grep -i "linux" archivo1.txt | wc -l
  ```
- Script para contar líneas en archivos `.txt`:
  ```
  #!/bin/bash
  for f in *.txt; do
    echo "$f: $(wc -l < $f) líneas"
  done
  ```

### Día 6: Laboratorio Integrador

- Script `procesar.sh` para verificar si es archivo, directorio o no existe:
  ```
  #!/bin/bash
  read -p "Archivo/directorio: " ruta
  if [ -f "$ruta" ]; then
    echo "Es un archivo regular."
    head -3 "$ruta"
  elif [ -d "$ruta" ]; then
    echo "Es un directorio."
  else
    echo "No existe."
  fi
  ```

### Día 7: Repaso y Quiz

- Revisa y mejora tus scripts.
- Checklist de temas dominados: manejo de archivos, edición, scripting, condicionales, bucles, pipes.
- Quiz: escribe un script que imprima un texto 5 veces:
  ```
  #!/bin/bash
  for i in {1..5}; do
    echo "$1"
  done
  ```

---

## Recomendaciones para el Aprendizaje

- Dedica 20-30 minutos diarios a practicar.
- Modifica los scripts para probar variantes.
- Documenta dudas y errores para resolverlos.
- Repasa ejercicios y conceptos al final de la semana.

---
```
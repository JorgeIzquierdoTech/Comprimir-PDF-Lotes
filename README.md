Paso 1: Descargar e instalar Ghostscript
Ve al sitio oficial de Ghostscript y descarga la versión correspondiente a tu sistema operativo.
Instala Ghostscript siguiendo las instrucciones del instalador.

Paso 3: Crear el archivo Batch
Abre un editor de texto como Bloc de notas.
Copia y pega el código.

Paso 4: Personalizar el script
input_folder: Cambia C:\ruta\a\pdfs\originales por la carpeta donde están los PDFs a comprimir.
output_folder: Cambia C:\ruta\a\pdfs\comprimidos por la carpeta donde se guardarán los PDFs comprimidos.
-dPDFSETTINGS=/ebook: Puedes ajustar la calidad de compresión:
/screen: Baja calidad (para visualización en pantalla).
/ebook: Calidad moderada.
/printer: Calidad alta para impresión.
/prepress: Calidad máxima (archivo más pesado).

Paso 5: Ejecutar el script
Haz doble clic en el archivo .bat que has creado.
El script comprimirá todos los PDFs en la carpeta de entrada y los guardará en la carpeta de salida.


## Forked from https://github.com/mrrootsec/vitalsource_downloader

### Adaptação do original para utilizar com o Minha Biblioteca



# How to use
To use the script, follow these steps:


1. Use the cookies.txt extension to download the cookies from your browser and save the cookies.txt file in the same folder as this script. 
2. Open a terminal and navigate to the directory where the script is saved.
3. Type chmod +x minhabiblioteca_downloader.sh to make the script executable.
4. Type ./minhabiblioteca_downloader.sh <ISBN_number> <start_page> <end_page>

For example, to download pages 1 to 9, type `./minhabiblioteca_downloader.sh 1234567891011 1 9`.  

Page 0 is the first page of the book.

Note: the script will create a directory named after the ISBN of the book in the same directory where the script is run. If the directory already exists, the script will continue downloading images to that directory.

Once all images have been downloaded, they will be converted into a pdf named after the ISBN (requires ImageMagick to be installed).


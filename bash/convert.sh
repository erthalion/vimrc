mkdir wget
echo "Cloning site..."
wget -mkEpnp -l3 http://angular.ru
echo "Start converting to pdf.."
cd angular.ru
find . -name '*.html' | xargs -n 1 ./to_pdf.sh
cd ../
mkdir pdfs
find ./angular.ru -name '*.pdf' -exec mv {} ./pdfs/ \;

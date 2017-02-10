# Install wkhtmltopdf
set -e
WKHTMLTOPDF_TAR_FILE=wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

cd /usr/local/share/
curl -O http://download.gna.org/wkhtmltopdf/0.12/0.12.4/${WKHTMLTOPDF_TAR_FILE}
tar -xf $WKHTMLTOPDF_TAR_FILE
apt-get install libXrender1 -y
mv ./wkhtmltox/bin/wkhtmltopdf /bin

rm $WKHTMLTOPDF_TAR_FILE

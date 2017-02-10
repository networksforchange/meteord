# Install Wkhtmltopdf
set -e
apt-get update
apt-get -y install libXrender1

WKHTMLTOPDF_TAR_FILE=wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

cd /usr/local/share/
curl -L -O http://download.gna.org/wkhtmltopdf/0.12/0.12.4/${WKHTMLTOPDF_TAR_FILE}
tar xjf $WKHTMLTOPDF_TAR_FILE
mv ./wkhtmltox/bin/wkhtmltopdf /bin

rm $WKHTMLTOPDF_TAR_FILE

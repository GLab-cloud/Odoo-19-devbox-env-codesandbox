# Update and install system dependencies
sudo apt-get update && sudo apt-get install -y \
    libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev \
    libjpeg-dev zlib1g-dev libpq-dev

# Clone Odoo 19 source code
git clone --depth 1 --branch 19.0 https://github.com/odoo/odoo.git

# Install Python requirements
pip install -r odoo/requirements.txt

# Start PostgreSQL service and create user
sudo service postgresql start
sudo -u postgres createuser -s odoo

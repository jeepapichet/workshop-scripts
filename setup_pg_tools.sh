wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d ~/sam-installation
sudo ./sam-installation/install --update

sudo yum install -y mocha jq
sudo yum groupinstall 'Development Tools' -y


# Install psql
sudo amazon-linux-extras install epel
sudo tee /etc/yum.repos.d/pgdg.repo<<EOF
[pgdg13]
name=PostgreSQL 13 for RHEL/CentOS 7 - x86_64
baseurl=http://download.postgresql.org/pub/repos/yum/13/redhat/rhel-7-x86_64
enabled=1
gpgcheck=0
EOF

sudo yum install -y postgresql13

# get sample databaese
wget https://jeepaws.net/employees.dump
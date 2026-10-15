
#!/bin/bash
set -euxo pipefail

exec > >(tee /var/log/user-data.log) 2>&1

apt-get update
apt-get install -y docker.io docker-compose-v2 git

systemctl enable --now docker

mkdir -p /opt/docker-compose-demo
cd /opt/docker-compose-demo

git clone "${repository_url}" app
cd app

docker compose config
docker compose up --build -d
docker compose ps

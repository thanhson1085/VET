
## Prerequisite
- Docker
- Docker Compose
- Git

Install Docker:
```
curl -sSL https://get.docker.com/ | sh
```
Install Docker Compose:
```
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

## Setup

Clone this source code:
```
git clone https://github.com/thanhson1085/VET.git
```

Create `.pwd` file
```
touch .pwd
```

Edit `.pwd` file and input the password for your ethereum address if you want.

Build docker images:
```
docker-compose -f docker-stack.yml build
```

Create `.env` file by using the sample - `.env.example` file.

Contact me to know the value of `WS_SECRET`.

Finnaly, just run:
```
docker-compose -f docker-stack.yml up -d
```



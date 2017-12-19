
## Prerequisite
- Docker
- Docker Compose

## Setup

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



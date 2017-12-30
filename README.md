The purpose of this testnet is that we want to create a fast testnet for Vietnamese Blockchain Developers.
The tesnet is using Ethereum Proof Of Authority (same as Rinkeby), but Block Time is just two seconds.

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

Enter `VET` directory, Create `.pwd` file
```
cd VET && touch .pwd
```

Edit `.pwd` file and input the password for your ethereum address if you want.

Create `.env` file by using the sample - `.env.example` file.

Contact me to know the value of `WS_SECRET` in `.env` file. (My FB: [https://www.facebook.com/thanhson1085](https://www.facebook.com/thanhson1085))

To access Docker sockets, make sure you are added to the group `docker`:

```
sudo usermod -a -G docker $USER
```

Remember to log out and login again for this to take effect.

Finally, just run:
```
docker-compose -f docker-stack.yml up -d
```

If you forgot to add yourself to the group `docker` and/or logout, you will see similar error:

```
$ docker-compose -f docker-stack.yml up -d
ERROR: Couldn't connect to Docker daemon at http+docker://localunixsocket - is it running?

If it's at a non-standard location, specify the URL with the DOCKER_HOST environment variable.
```

**NOTE:** For safety, do not run as `root`!

## How to become a Validator?
There is not a official way for now. Just contact me via Facebook.

## How to get free Ethereum in this testnet?
Star this repository.

Join Facebook Group: Vietnam Blockchain Developers [https://www.facebook.com/groups/1561844270543595/](https://www.facebook.com/groups/1561844270543595/)

Apply this form: [https://goo.gl/aQicTH](https://goo.gl/aQicTH)

Note: We will develop a better way to get free ether later

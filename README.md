# -- Inception --

## Usage (Linux only) -- 👈

```bash
git clone https://github.com/NetworkFlux/Inception.git && cd Inception && make
```

## Topics -- 🗝
1. Docker
2. Docker-Compose
3. NGINX
4. MariaDB
5. WordPress

## Challenge -- 💡
This project is about setting up a private server using Docker containers. The server will be using NGINX as server, MariaDB as database and WordPress as actual site

## Objectives -- ✅
This program will launch a functioning server hosted by a VM or your machine.
- Setting up and configure NGINX
- Setting up and configure MariaDB
- Setting up and configure WordPress
- Setting up and configure the necessary protocols

## Rules -- 🚨
- The server must only be accessible by HTTPS. In order for HTTPS to work, an SSL protocol must be established.
- The server can then be accessed in any browser by entering 127.0.0.1 in the search bar.

## Comments -- ⚙️
There is not much more to say about this project. A lot of it consist of setting up the various services and make them run into Docker containers. The 3 containers must then be used together using Docker-Compose. At the end, we end up with a functioning structure that can be customizable as wished and used for whatever you want.

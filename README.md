# My Personal Website 
This is a static personal portfolio website built with HTML & CSS, served via **Nginx** inside a lightweight **Alpine** Docker container.  
It uses **Docker Compose** for simple deployment and is securely hosted using **Cloudflare Tunnel**.

## 🔧 Pre-requisites
- docker desktop or docker installed on your computer
- docker compose installed on your computer
## 🔧 Tech Stack
- **HTML/CSS** — Static site content
- **Nginx** — Web server
- **Alpine Linux** — Minimal Docker base image
- **Dockerfile** — Custom Nginx image for the site
- **Docker Compose** — Simple orchestration
- **Cloudflare Tunnel** — Secure hosting without public IP
---
## 📂 Project Structure
```
MY-PERSONAL-WEBSITE/
├── Dockerfile
├── README.md
├── docker-compose.yml
├── index.html
├── indexv1.html
└── me.jpg
```
## ⚙️ Usage
**1️⃣ Clone the repo**
```bash
git clone https://github.com/<your-username>/my-personal-website.git
cd my-personal-website

2️⃣ Build the image

docker build -t personal-website .

3️⃣ Run with Docker Compose

docker-compose up -d

4️⃣ Access locally

http://localhost:8080

🌐 Hosting via Cloudflare Tunnel
To expose your site without opening ports:
Follow the instruction on cloudflare for Tunnel creation for docker environment.
Note: Your  Tunnel container  and website container should be on same docker network.

#docker compose for cloudflared
services:
  cloudflared:
    image: cloudflare/cloudflared
    container_name: cloudflared
    environment:
      - TZ=Europe/Stockholm # Change this to your timezone
      - TUNNEL_TOKEN=${TOKEN}
    restart: unless-stopped
    command: tunnel --no-autoupdate run
    networks:
      - cloudflared
networks:
  cloudflared:
    name: cloudflared
Note: you can hardcore your cloudflare tunnel token or save in .env


📜 License
This project is licensed under the MIT License.

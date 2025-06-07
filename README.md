# Raspberry Pi Docker Setup Script ⚙️🐳

This script automates the installation of Docker on Raspberry Pi OS Lite (64-bit), making your Pi ready for local container builds and deployments.

## Features

* Installs Docker using the official Docker convenience script
* Adds the current user to the Docker group
* Optional: Installs Docker Compose
* Optional: Prompts to reboot when done

---

## Usage

### 1. Download or create the script on your Pi

```bash
nano install_docker_pi.sh
```

Paste the script contents inside, then save and exit (`Ctrl+X`, then `Y`, then `Enter`).

### 2. Make it executable

```bash
chmod +x install_docker_pi.sh
```

### 3. Run the script

```bash
./install_docker_pi.sh
```

Follow the prompts to:

* Install Docker
* Optionally install Docker Compose
* Optionally reboot the system

---

## Verification

After rebooting or logging out/in:

```bash
docker run hello-world
```

You should see a confirmation message from Docker.

---

## Notes

* This script is optimized for Raspberry Pi OS Lite 64-bit.
* Built for use in homelab and cluster environments.
* Can be used for personal projects or containerizing workloads directly on your Pi.

---

## License

Feel free to reuse or modify this script for personal or educational purposes.

---

## Project

This script is part of **Project Midnight Byte**, a Raspberry Pi-based Kubernetes cluster for scientific exploration, AI, and cosmic curiosity. 🌌💾

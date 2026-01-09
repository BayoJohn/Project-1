High-Availability Cloud Infrastructure & Monitoring Stack

Overview
This project demonstrates a **production-style, high-availability cloud infrastructure** built on AWS using modern DevOps tools and practices.

The system is designed to:
- Eliminate single points of failure
- Automate application deployment
- Provide self-healing capabilities
- Offer real-time monitoring and observability

It simulates how real-world cloud-native applications are deployed, monitored, and maintained in production environments.



Architecture Overview
The infrastructure consists of multiple containerized services orchestrated using Docker Compose and deployed on an AWS EC2 instance.

Architecture Highlights
- Multiple web service replicas for high availability
- Reverse proxy and load balancer for traffic distribution
- Automated CI/CD pipeline for continuous deployment
- Monitoring stack for metrics and visualization
- Self-healing mechanism for unhealthy containers

> Architecture Diagram 
<img width="1227" height="792" alt="diagram-export-1-4-2026-12_14_16-AM" src="https://github.com/user-attachments/assets/4c833e8f-1a48-417b-80b5-b70d8641f5de" />

  Tech Stack
- Cloud Provider:** AWS (EC2)
- **Containerization:** Docker, Docker Compose
- **Reverse Proxy / Load Balancer:** Nginx / Caddy
- **CI/CD:** GitHub Actions
- **Monitoring:** Prometheus, Grafana
- **Registry:** Docker Hub



   Key Features
- High Availability:** Multiple replicas prevent downtime from single container failure
- CI/CD Automation:** Fully automated build, push, and deployment pipeline
- Self-Healing:** Containers are automatically restarted when unhealthy
- Load Balancing:** Traffic distributed evenly across replicas
- SSL/TLS Automation:** Secure HTTPS traffic using automated certificates
- Monitoring & Observability:** Real-time system and container metrics



CI/CD Pipeline (GitHub Actions)
The CI/CD pipeline is triggered on every push to the `main` branch.
Pipeline Workflow
1. Build Docker images
2. Push images to Docker Hub
3. Deploy updated containers to AWS EC2
4. Restart services with zero manual intervention

Workflow location:

This approach reduces deployment time, minimizes human error, and ensures consistency across deployments.


Self-Healing Mechanism
The system uses:
- Docker health checks
- Autoheal container

If a container becomes unhealthy:
- It is automatically detected
- The container is restarted without manual intervention

This ensures **high uptime (~99.9%)** and improved reliability.


Monitoring & Observability
A full monitoring stack is deployed using Prometheus and Grafana.

Metrics Collected
- CPU usage
- Memory usage
- Disk usage
- Network traffic
- Container health status

Visualization
Grafana dashboards provide real-time visibility into system performance and resource usage.

Grafana Access




Setup & Deployment Guide

Prerequisites
- AWS EC2 instance (Ubuntu recommended)
- Docker & Docker Compose installed
- Docker Hub account
- GitHub account

---

Clone the Repository
```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name



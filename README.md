### 📊 Project Architecture
```mermaid
graph TD
    subgraph Development
        A[Developer] -->|Git Push| B(GitHub Repository)
    end

    subgraph CI/CD_Pipeline
        B -->|Trigger| C[GitHub Actions]
        C -->|Build & Push| D[Docker Hub]
    end

    subgraph Production_AWS_EC2
        D -->|Pull Image| E[Docker Compose]
        subgraph Containers
            E --> F1[Web Replica 1]
            E --> F2[Web Replica 2]
            E --> F3[Web Replica 3]
            G[Nginx/Caddy Load Balancer] --> F1
            G --> F2
            G --> F3
        end
        H[Docker Autoheal] -.->|Monitor Health| F1
        H -.->|Restart if Down| F1
    end

    subgraph Observability
        I[Prometheus] -->|Scrape Metrics| F1
        I -->|Scrape Metrics| F2
        I -->|Scrape Metrics| F3
        I --> J[Grafana Dashboard]
    end

    style G fill:#f9f,stroke:#333,stroke-width:2px
    style H fill:#bbf,stroke:#333,stroke-dasharray: 5 5

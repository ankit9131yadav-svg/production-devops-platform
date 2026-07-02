# Production Grade DevOps Platform on AWS

## Project Overview

This project demonstrates a complete production-grade DevOps implementation on AWS using Infrastructure as Code, CI/CD automation, monitoring, alerting, and centralized logging.

The platform automates application deployment through Jenkins pipelines, Ansible configuration management, Docker containerization, Prometheus-Grafana monitoring, Alertmanager email notifications, and ELK Stack log management.

---

## Architecture

GitHub
↓
Jenkins CI/CD
↓
Docker Build
↓
DockerHub Push
↓
Ansible Deployment
↓
Production Server

Production Server
├── Docker Container
├── Nginx Reverse Proxy
├── Node Exporter
└── Filebeat

Monitoring Server
├── Prometheus
├── Grafana
├── Alertmanager
├── Elasticsearch
├── Logstash
└── Kibana

---

## Technologies Used

### Cloud
- AWS EC2
- AWS Security Groups
- AWS Networking

### Infrastructure as Code
- Terraform

### CI/CD
- Jenkins
- GitHub Webhooks

### Configuration Management
- Ansible

### Containerization
- Docker
- DockerHub

### Monitoring
- Prometheus
- Grafana
- Alertmanager

### Logging
- Elasticsearch
- Logstash
- Kibana
- Filebeat

### Web Server
- Nginx

---

## CI/CD Workflow

1. Developer pushes code to GitHub
2. Jenkins Pipeline triggers automatically
3. Docker image is built
4. Image pushed to DockerHub
5. Ansible deploys application
6. Production server updates container
7. Monitoring and logging continue automatically

---

## Monitoring Features

- Server Health Monitoring
- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Service Monitoring
- Email Alerts via Gmail SMTP

---

## Logging Features

- Centralized Log Collection
- Filebeat Log Shipping
- Logstash Processing
- Elasticsearch Storage
- Kibana Visualization

---

## Screenshots

### Jenkins Pipeline

![Jenkins](screenshots/jenkins/jenkins-success.png)

### Prometheus Targets

![Prometheus](screenshots/prometheus/prometheus-targets.png)

### Grafana Dashboard

![Grafana](screenshots/grafana/grafana-dashboard.png)

### Alert Email

![Alert](screenshots/alerts/email-alert.png)

### Kibana Logs

![Kibana](screenshots/kibana/kibana-logs.png)

### Application Running

![App](screenshots/application/app-running.png)

---

## Future Enhancements

- Kubernetes Deployment
- Helm Charts
- ArgoCD GitOps
- Blue-Green Deployment
- AWS EKS
- SonarQube Integration

---

## Author

Ankit Raj
DevOps Engineer
AWS | Terraform | Jenkins | Docker | Kubernetes | Ansible | Monitoring

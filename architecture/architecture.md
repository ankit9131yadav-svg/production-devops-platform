# Architecture Documentation

## Overview

The Production DevOps Platform is designed to automate application delivery, infrastructure monitoring, alerting, and centralized log management using industry-standard DevOps tools.

The platform consists of three AWS EC2 instances:

### Jenkins Server

Responsibilities:

* Continuous Integration
* Continuous Deployment
* Docker Image Build
* DockerHub Image Push
* Ansible Deployment Automation

### Production Server

Responsibilities:

* Application Hosting
* Docker Container Runtime
* Reverse Proxy using Nginx
* Metrics Export using Node Exporter
* Log Shipping using Filebeat

### Monitoring Server

Responsibilities:

* Metrics Collection using Prometheus
* Visualization using Grafana
* Alert Management using Alertmanager
* Log Storage using Elasticsearch
* Log Processing using Logstash
* Log Visualization using Kibana

---

## CI/CD Workflow

1. Developer pushes code to GitHub.
2. Jenkins pipeline is triggered.
3. Jenkins builds Docker image.
4. Docker image is pushed to DockerHub.
5. Jenkins executes Ansible playbook.
6. Ansible deploys the latest image to the Production Server.
7. Application becomes available through Nginx reverse proxy.

---

## Monitoring Workflow

1. Prometheus scrapes Node Exporter metrics from the Production Server.
2. Metrics are stored in Prometheus.
3. Grafana visualizes infrastructure metrics.
4. Alertmanager evaluates alert rules.
5. Email notifications are sent through Gmail SMTP when thresholds are breached.

---

## Logging Workflow

1. Application logs are generated on the Production Server.
2. Filebeat collects logs.
3. Logs are forwarded to Logstash.
4. Logstash processes and enriches logs.
5. Elasticsearch indexes the logs.
6. Kibana visualizes logs for analysis and troubleshooting.

---

## Benefits

* Automated deployments
* Infrastructure as Code
* Centralized monitoring
* Automated alerting
* Centralized log management
* Faster troubleshooting
* Production-grade DevOps workflow

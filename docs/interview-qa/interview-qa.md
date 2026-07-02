# Project Interview Questions and Answers

## Explain Your Project

This project is a production-grade DevOps platform implemented on AWS. It automates application deployment using Jenkins, Docker, DockerHub, and Ansible while providing monitoring through Prometheus and Grafana and centralized logging through the ELK Stack.

---

## Why Did You Use Jenkins?

Jenkins was used to automate CI/CD workflows including Docker image build, DockerHub push, and Ansible deployment.

---

## Why Docker?

Docker ensures consistent deployments across environments and simplifies application packaging.

---

## Why Ansible?

Ansible provides agentless automation for application deployment and server configuration.

---

## Why Nginx?

Nginx acts as a reverse proxy and provides a production-ready entry point for applications.

---

## Why Prometheus?

Prometheus collects infrastructure metrics and enables alert generation.

---

## Why Grafana?

Grafana visualizes infrastructure and application metrics through dashboards.

---

## Why Alertmanager?

Alertmanager sends email notifications whenever alert conditions are triggered.

---

## Why ELK Stack?

ELK provides centralized logging and enables faster troubleshooting and log analysis.

---

## How Does Deployment Work?

GitHub Push
→ Jenkins Trigger
→ Docker Build
→ DockerHub Push
→ Ansible Deploy
→ Production Server

---

## How Does Monitoring Work?

Node Exporter
→ Prometheus
→ Grafana
→ Alertmanager
→ Email Alerts

---

## How Does Logging Work?

Application Logs
→ Filebeat
→ Logstash
→ Elasticsearch
→ Kibana

---

## What Production Issues Did You Simulate?

* Server Down Alert
* Application Failure
* Container Failure
* Log Collection Verification
* Pipeline Failure Troubleshooting

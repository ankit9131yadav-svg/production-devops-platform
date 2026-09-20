## 👨‍💻 Author

### Ankit Raj
**DevOps Engineer | Cloud Enthusiast | Lifelong Learner**

I build and troubleshoot cloud-native infrastructure, CI/CD pipelines, containerized applications, Kubernetes platforms, monitoring systems, and automation workflows.

### Core Skills

`AWS` `Linux` `Git` `GitHub` `Jenkins` `Docker` `Kubernetes` `Helm` `ArgoCD` `Terraform` `Ansible` `Prometheus` `Grafana` `Alertmanager` `ELK`

---

# 📌 Project Overview

This project is a **production-oriented DevOps platform** built from the ground up to demonstrate the complete software delivery lifecycle.

The platform integrates:

- Infrastructure as Code
- CI/CD automation
- Containerization
- Kubernetes orchestration
- Helm-based application packaging
- GitOps deployment using ArgoCD
- Environment separation
- Auto scaling
- Network security
- Health checks
- Monitoring
- Alerting
- Centralized logging
- Infrastructure automation
- Production-style troubleshooting

The primary goal was to understand not only individual DevOps tools, but how they work together as a complete platform.

#  High-Level Architecture

                         ┌─────────────────┐
                         │    Developer    │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │     GitHub      │
                         │ Source Control  │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │     Jenkins     │
                         │       CI        │
                         └────────┬────────┘
                                  │
                         Docker Build / Push
                                  │
                                  ▼
                         ┌─────────────────┐
                         │    DockerHub    │
                         │ Image Registry  │
                         └────────┬────────┘
                                  │
                                  │
                                  ▼
                         ┌─────────────────┐
                         │     ArgoCD      │
                         │     GitOps      │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │      Helm       │
                         │  Configuration  │
                         └────────┬────────┘
                                  │
                                  ▼
                    ┌──────────────────────────┐
                    │       Kubernetes         │
                    │                          │
                    │  ┌──────┐ ┌──────────┐  │
                    │  │ DEV  │ │ STAGING  │  │
                    │  └──────┘ └──────────┘  │
                    │                          │
                    │       PRODUCTION        │
                    └────────────┬─────────────┘
                                 │
                ┌────────────────┴────────────────┐
                │                                 │
                ▼                                 ▼
       ┌─────────────────┐              ┌─────────────────┐
       │   Monitoring    │              │     Logging     │
       │                 │              │                 │
       │ Prometheus      │              │ Filebeat        │
       │ Grafana         │              │ Logstash        │
       │ Alertmanager    │              │ Elasticsearch   │
       │ Gmail           │              │ Kibana          │
       └─────────────────┘              └─────────────────┘



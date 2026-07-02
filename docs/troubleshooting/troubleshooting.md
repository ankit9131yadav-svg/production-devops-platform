# Troubleshooting Guide

## Jenkins Build Failure

Check:

- Jenkins Console Output
- GitHub Connectivity
- Docker Availability

## Docker Image Push Failure

Check:

docker login

DockerHub credentials

## Ansible Deployment Failure

Check:

inventory file

SSH connectivity

ansible all -m ping

## Prometheus Target Down

Check:

systemctl status node_exporter

Port 9100 accessibility

## Grafana Dashboard Empty

Check:

Prometheus datasource

Target health

## Alert Email Not Received

Check:

Alertmanager logs

SMTP configuration

Gmail App Password

## ELK Logs Not Visible

Check:

Filebeat service

Logstash service

Elasticsearch indices

Kibana index pattern

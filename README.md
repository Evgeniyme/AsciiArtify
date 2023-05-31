# Comparison of Kubernetes Deployment Tools

## Introduction
AsciiArtify is a startup planning to develop a new software product that converts images into ASCII art using Machine Learning. They are considering different Kubernetes-based options for local development, including minikube, kind, and k3d. This document provides a comparative analysis of these tools and recommends the best choice for AsciiArtify's Proof of Concept (PoC).

## Kubernetes Manifests Table

| NAME                | PROMPT               | DESCRIPTION                                         | EXAMPLE                                       |
| ------------------- | -------------------- | --------------------------------------------------- | --------------------------------------------- |
| app-job-rsync       | Kubernetes Job       | Job for data synchronization                        | [Link](./yaml/app-job-rsync.yaml)             |
| app-cronjob         | Kubernetes CronJob   | Regularly scheduled task                            | [Link](./yaml/app-cronjob.yaml)               |
| app-multicontainer  | Kubernetes Pod       | Deployment with multiple containers                 | [Link](./yaml/app-multicontainer.yaml)        |
| app-resource        | Kubernetes Pod       | Pod with resource requests and limits               | [Link](./yaml/app-resource.yaml)              |
| app-secret-env      | Kubernetes Pod       | Pod using secrets in env variables                  | [Link](./yaml/app-secret-env.yaml)            |
| app                 | Kubernetes Pod       | Simple pod with a single container                  | [Link](./yaml/app.yaml)                       |
| app-livenessprob    | Kubernetes Pod       | Pod with a liveness probe                           | [Link](./yaml/app-livenessProbe.yaml)         |
| app-readinessprob   | Kubernetes Pod       | Pod with a readiness probe                          | [Link](./yaml/app-readinessProbe.yaml)        |
| app-volume          | Kubernetes Pod       | Pod with a volume mount                             | [Link](./yaml/app-volumeMounts.yaml)          |
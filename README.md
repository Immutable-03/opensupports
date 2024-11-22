# OpenSupports Application Deployment with Terraform

## Overview
This repository contains Terraform configurations and CI/CD workflows for deploying the OpenSupports application on AWS.

## Features
- Automated VPC, EC2, RDS, and S3 provisioning.
- Modularized Terraform configuration for multiple environments.
- CI/CD pipeline using GitHub Actions for automatic deployment.

## Instructions

### Prerequisites
- AWS credentials with permissions to manage EC2, S3, and RDS.
- Terraform installed locally.
- GitHub repository with secrets configured.

### Deployment Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/opensupports.git
   cd opensupports


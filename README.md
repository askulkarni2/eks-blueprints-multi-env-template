# eks-blueprints-multi-env-template

This is a template repo for multi-env EKS Blueprint for Terraform. The repo deploys an EKS Cluster with MNG and the following addons
1. Ingress-Nginx
2. AWS Load Balancer Controller
3. External DNS
4. Cert Manager
5. Vault
6. Datadog
7. ArgoCD

## Pre-Reqs

1. Deploy the CloudFormation [stack](deployment/cfn-role.yaml) to the desired AWS account.
2. Create a GitHub Environment for the respective AWS account with appropriate environment names such as dev, preprod, prod.
3. Add an environment secret `ROLE_TO_ASSUME` with the IAM Role ARN created in 1 as the secret value.

## Deployment

This CD of the stack is done via Github [worklow](.github/workflows/terraform.yml).

# terraform-ai-agent


 <img width="940" height="627" alt="image" src="https://github.com/user-attachments/assets/dfbc4d8f-f604-47fa-87f7-0bd645a4750c" />


# Terraform AI Agent on AWS

This project implements an AI‑driven Terraform automation pipeline using:
- Amazon Bedrock
- AWS Lambda
- GitHub Pull Requests
- OPA (Conftest)
- Terraform
- GitHub Actions (OIDC → AWS)

## Flow
1. User submits request
2. AI generates Terraform
3. Code pushed to feature branch
4. Pull Request created
5. Human approval required
6. OPA policies validated
7. Terraform applied to AWS

  

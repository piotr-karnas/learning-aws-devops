## Multi-Environment Demo
**1 moduł × 2 środowiska = enterprise IaC**

# dev (default workspace)
terraform apply -var-file="terraform.tfvars"     # 10.8.x

# staging (staging workspace)  
terraform workspace new staging
terraform apply -var-file="staging.tfvars" # 10.9.x

**AWS Console result:**
- dev-vpc (10.8.0.0/16)
- staging-vpc (10.9.0.0/16) 

✅ variables.tf: vpc_cidr, public_subnet_cidr, environment (default + tfvars override)
✅ main.tf refactored: var.vpc_cidr → "${var.environment}-vpc" dynamic tags
✅ outputs.tf: vpc_id, public_subnet_id, vpc_cidr (for downstream modules)
✅ terraform plan/apply z tfvars

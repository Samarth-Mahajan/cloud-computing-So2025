# terraform.tfvars
# Configuration file for customizing your deployment

# AWS Region (Free tier available in most regions)
aws_region = "eu-central-1"

# EC2 Instance Type (t2.micro is free tier eligible)
instance_type = "t2.micro"

# Auto Scaling Configuration
# Change these values to scale your application:
# - For small deployment: min=1, max=2, desired=1
# - For medium deployment: min=2, max=5, desired=3
# - For large deployment: min=3, max=10, desired=5

min_size = 1           # Minimum number of instances
max_size = 3           # Maximum number of instances  
desired_capacity = 2   # Desired number of instances

# Note: Each t2.micro instance gives you 750 hours/month in free tier
# With 2 instances, you'll use 1,500 hours/month (exceeds free tier)
# For free tier compliance, set: min_size=1, max_size=1, desired_capacity=1
# Terraform AWS Security Group

This Terraform project creates an AWS Security Group with specific ingress rules using the HashiCorp AWS provider.

## Prerequisites

Before you begin, ensure you have:

1. [Terraform](https://www.terraform.io/) installed on your machine.
2. AWS credentials configured with the necessary permissions.

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/nyilinhtut1994/Creating_SGs_On_AWS_With_Terraform.git
   cd terraform-aws-security-group

2. **Update configuration:**

Update the `main.tf` file and `variable.tf`with your desired configuration, replacing placeholder values.

3. **Initialize Terraform:**

    ```bash
    terraform init

4. **Review the plan:**

    ```bash
    terraform plan

5. **Apply the changes:**

    ```bash
    terraform apply

6. **Confirm the changes:**

Type yes when prompted.

## Variables
The following variables are available for customization in the main.tf file:

* `vpc_id`: The ID of the VPC where the security group will be created.
Feel free to adjust these variables to match your environment.

## Providers
This project uses multiple AWS profiles as providers. Make sure you have the necessary AWS profiles configured in your AWS CLI configuration.

* `main`: Main AWS profile for creating resources.
* `prod`: AWS profile for the production environment.
* `dev`: AWS profile for the development environment.

## Outputs
The following output is provided:

* `security_group`: The ID of the created AWS Security Group.
You can use this output value in other Terraform projects or scripts.


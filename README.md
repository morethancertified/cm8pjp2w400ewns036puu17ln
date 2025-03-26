**Ticket Type:** Task  
**Title:** Import Existing AWS Resources into Terraform  
**Project:** AWS Infrastructure Management  
**Assignee:** You  
**Reporter:** Derek Morgan  
**Priority:** High  
**Labels:** Terraform, AWS, Import  
**Epic Link:** Infrastructure as Code Migration  
**Sprint:** Sprint 03/AWS Integration

**Lab Setup**
This lab requires resources to be deployed to AWS using CloudFormation. CloudFormation is used to ensure you don't lose state and control over the resources if this instance were to be deleted or fail. 

You should have supplied your AWS credentials during the lab setup. Otherwise, you'll need admin access to your AWS environment configured within this system. 

Please inspect any files in the bootstrap directory before deploying. 

**Launch Cloudformation script to Bootstrap the Lab Resources from the bootstrap directory** \
`mtc-init --deploy`

**Destroy the Lab Resources** \
`mtc-init --destroy`

**Description:**

Your team has been managing AWS resources manually, but now wants to bring them under Terraform control. You need to import existing AWS infrastructure (VPC, Subnets, and Security Group) into your Terraform configuration using import blocks. This approach allows you to start managing these resources with Terraform without recreating them. These resources have been deployed using a CloudFormation template. This is available to you in the bootstrap directory, but to ensure there is no stale information, use data sources to fetch the information needed to import. \

**Hint:** To simplify things, you may want to check out the `--generate-config-out` flag to simplify the process, but it may require some modification afterwards. 

**Acceptance Criteria:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!  

**Implementation Notes:**

- <a href="https://developer.hashicorp.com/terraform/language/import" target="_blank">Terraform Import Documentation</a>  
- <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs" target="_blank">AWS Provider Documentation</a>
- <a href="https://developer.hashicorp.com/terraform/language/import" target="_blank">Terraform Import Tutorial</a>

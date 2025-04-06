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
This lab has resources deployed to a simulated AWS environment within the codespace. All  bootstrapping should be completed automatically when the codespace is created. If you'd like to use your own AWS environment instead of the simulated environment, configure your AWS credentials and run the Cloudformation stack from the bootstrap directory.

**Description:**

Your team has been managing AWS resources manually, but now wants to bring their resources under Terraform control. You need to import existing AWS infrastructure (VPC, Subnets, and Security Group) into your Terraform configuration that belongs to your Team (Team A). This approach allows you to start managing these resources with Terraform without recreating them. These resources have been deployed using a CloudFormation template. This is available to you in the bootstrap directory, but to ensure there is no stale information, use data sources to fetch the information needed to import.

1. Retrieve resources belonging to VPC-A using Data Sources.
2. Define the configuration for those resources.
3. Import the resources using import blocks. 
4. Apply the configuration to import the resources. Ensure there are no new resources created, modified, or destroyed. 

**Hint:** To simplify things, you may want to check out the `--generate-config-out` flag to simplify the process, but it may require some modification afterwards. 

**Acceptance Criteria:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!  

**Implementation Notes:**

- <a href="https://developer.hashicorp.com/terraform/language/import" target="_blank">Terraform Import Documentation</a>  
- <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs" target="_blank">AWS Provider Documentation</a>
- <a href="https://developer.hashicorp.com/terraform/language/import" target="_blank">Terraform Import Documentation</a>

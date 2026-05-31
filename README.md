# terraform-aws-security-logging-centralized-bucket

Security logging and threat detection for the AWS stack. CloudTrail for API 
auditing, GuardDuty for threat detection, VPC Flow Logs for network visibility. 
All logs land in one encrypted S3 bucket.

## What's in here

- CloudTrail — full API activity across the account, log file validation on
- VPC Flow Logs — accept/reject at the ENI level
- GuardDuty — enabled and exporting findings to S3 and CloudWatch
- S3 — versioned, encrypted, no public access, lifecycle policies set
- CloudWatch + SNS — alarms on GuardDuty findings and security metrics

## Modules

- `cloudtrail` — multi-region trail, S3 delivery
- `guard-duty` — detector, findings export
- `vpc` — updated to include flow logs
- `cloud-metrics` — security-focused alarms
- `sns` — finding and alarm routing
- `s3` — centralized logging bucket

## Usage

```bash
terraform init
terraform plan -var-file="env/dev/terraform.tfvars"
```

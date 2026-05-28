resource "aws_cloudtrail" "cloudtrail-logs" {
  name = "cloud-trail-logs"

s3_bucket_name = var.central_log_bucket281330
s3_key_prefix = "cloudtrail-logs"

include_global_service_events = true  
enable_log_file_validation = true
is_multi_region_trail = true
}
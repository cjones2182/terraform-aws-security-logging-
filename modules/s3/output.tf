output "central_log_bucket281330" {
 description = "alb_access logs bucket" 
 value = aws_s3_bucket.central_log_bucket281330.id
}
output "central_log_bucket281330_arn" {
 description = "alb_access logs bucket arn" 
 value = aws_s3_bucket.central_log_bucket281330.arn
}
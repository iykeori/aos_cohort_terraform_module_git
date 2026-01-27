# ACM 
output "certificate_arn" {
  description = "The ARN of the ACM certificate"
  value       = aws_acm_certificate_validation.acm_certificate_validation.certificate_arn

}

output "domain_name" {
  description = "The domain name"
  value       = aws_acm_certificate.acm_certificate.domain_name
}

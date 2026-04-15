package terraform.security

deny[msg] {
  res := input.resource_changes[_]
  res.type == "aws_s3_bucket"
  res.change.after.acl == "public-read"

  msg := sprintf("Public S3 bucket blocked: %s", [res.address])
}
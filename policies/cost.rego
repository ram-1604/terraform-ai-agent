package terraform.cost

deny[msg] {
  res := input.resource_changes[_]
  res.type == "aws_instance"
  res.change.after.instance_type == "m5.24xlarge"

  msg := "Instance size exceeds allowed cost threshold"
}
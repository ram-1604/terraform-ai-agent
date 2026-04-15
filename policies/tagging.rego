package terraform.tags

deny[msg] {
  res := input.resource_changes[_]
  required := {"Owner", "CostCenter", "Environment"}
  missing := required - object.keys(res.change.after.tags)
  count(missing) > 0

  msg := sprintf(
    "Missing tags %v on %s",
    [missing, res.address]
  )
}

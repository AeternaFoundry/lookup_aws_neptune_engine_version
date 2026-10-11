data "aws_neptune_engine_version" "neptune_engine_version_lookup" {
  for_each = var.neptune_engine_version_lookup

  default_only              = each.value.default_only
  engine                    = each.value.engine
  has_major_target          = each.value.has_major_target
  has_minor_target          = each.value.has_minor_target
  latest                    = each.value.latest
  parameter_group_family    = each.value.parameter_group_family
  preferred_major_targets   = each.value.preferred_major_targets
  preferred_upgrade_targets = each.value.preferred_upgrade_targets
  preferred_versions        = each.value.preferred_versions
  region                    = each.value.region
  version                   = each.value.version
}


variable "neptune_engine_version_lookup" {
  description = <<EOT
Map of neptune_engine_version_lookup, attributes below
Optional:
    - default_only
    - engine
    - has_major_target
    - has_minor_target
    - latest
    - parameter_group_family
    - preferred_major_targets
    - preferred_upgrade_targets
    - preferred_versions
    - region
    - version
EOT

  type = map(object({
    default_only              = optional(bool)
    engine                    = optional(string)
    has_major_target          = optional(bool)
    has_minor_target          = optional(bool)
    latest                    = optional(bool)
    parameter_group_family    = optional(string)
    preferred_major_targets   = optional(list(string))
    preferred_upgrade_targets = optional(list(string))
    preferred_versions        = optional(list(string))
    region                    = optional(string)
    version                   = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


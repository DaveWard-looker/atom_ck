project_name: "atom_calvin_klein"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

local_dependency: {
  project: "atom_fashion_hub_project"
  override_constant: connection {
    value: "bi_ck_connection"
  }
  override_constant: schema {
    value: "ecomm_ck"
  }
}

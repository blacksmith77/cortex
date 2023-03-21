project_name: "cortex"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

remote_dependency: operational_dashboards {
  url: "https://github.com/looker-open-source/block-cortex-sap.git"
  ref: "master"

  override_constant: CONNECTION_NAME {
    value: "cortex_reporting"
  }

  override_constant: GCP_PROJECT {
    value: "innovation-sandbox-380216"
  }

  override_constant: REPORTING_DATASET {
    value: "CORTEX_REPORTING"
  }

  override_constant: CLIENT {
    value: "100"
  }
}


remote_dependency: demand_sensing {
  url: "https://github.com/looker-open-source/block-cortex-demand-sensing.git"
  ref: "master"

  override_constant: CONNECTION_NAME {
    value: "cortex_reporting"
  }

  override_constant: GCP_PROJECT {
    value: "innovation-sandbox"
  }

  override_constant: REPORTING_DATASET {
    value: "CORTEX_REPORTING"
  }

  override_constant: CLIENT {
    value: "100"
  }

  override_constant: years_of_past_data {
    value: "5"
  }
}


#remote_dependency: ga360_block {
#  url: "https://github.com/llooker/google_ga360.git"
#  ref: "master"
#  override_constant: connection {
#    value: "cortex_reporting"
#  }
#}

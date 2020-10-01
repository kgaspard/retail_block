project_name: "retail-block"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements

################ Constants ################

constant: CONNECTION_NAME {
  # value: "retail-block-connection"
  value: "sephora-poc"
  export: override_required
}

constant: SCHEMA_NAME {
  # value: "looker-private-demo.retail"
  value: "rich-tome-273419.sephora_poc"
  export: override_required
}

constant: WEATHER_SCHEMA_NAME {
  # value: "bigquery-public-data.ghcn_d"
  value: "rich-tome-273419.eu_weather"
  export: override_required
}

constant: TRANSACTIONS_TABLE_NAME {
  # value: "transactions"
  value: "CM_SA_FAC_TICKET_Part*"
  export: override_required
}

constant: CHANNELS_TABLE_NAME {
  value: "dim_channels"
  export: override_required
}

constant: CUSTOMERS_TABLE_NAME {
  value: "dim_customers"
  export: override_required
}

constant: PRODUCTS_TABLE_NAME {
  # value: "dim_products"
  value: "CM_SA_DIM_MATERIAL"
  export: override_required
}

constant: STORES_TABLE_NAME {
  # value: "dim_stores"
  value: "CM_SA_DIM_STORE"
  export: override_required
}

constant: CONFIG_PROJECT_NAME {
  value: "retail-block-config"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }

  override_constant: WEATHER_SCHEMA_NAME {
    value: "@{WEATHER_SCHEMA_NAME}"
  }

  override_constant: TRANSACTIONS_TABLE_NAME {
    value: "@{TRANSACTIONS_TABLE_NAME}"
  }

  override_constant: CHANNELS_TABLE_NAME {
    value: "@{CHANNELS_TABLE_NAME}"
  }

  override_constant: CUSTOMERS_TABLE_NAME {
    value: "@{CUSTOMERS_TABLE_NAME}"
  }

  override_constant: PRODUCTS_TABLE_NAME {
    value: "@{PRODUCTS_TABLE_NAME}"
  }

  override_constant: STORES_TABLE_NAME {
    value: "@{STORES_TABLE_NAME}"
  }
}

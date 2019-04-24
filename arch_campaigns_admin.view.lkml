include: "arch_campaigns.view.lkml"

view: arch_campaigns_admin {
  extends: [arch_campaigns]

  dimension: agency {
    hidden: no
  }

  measure: num_campaigns {
    view_label: "Z - Metadata"
    label: "# Campaigns"

    type: count_distinct

    sql: ${TABLE}.campaign_uid ;;
  }

  measure: num_adgroups {
    view_label: "Z - Metadata"
    label: "# Adgroups"

    type: count_distinct

    sql: ${TABLE}.adgroup_uid ;;
  }

  measure: num_rows {
    view_label: "Z - Metadata"
    label: "# Rows [ALL]"

    type: count
  }

  dimension: client_id {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Client ID"
    hidden: no
  }

  dimension: client_uid {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Client UID"
    hidden: no
  }

  dimension: organization_id {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Organization ID"
    hidden: no
  }

  dimension: organization_uid {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Organization UID"
    hidden: no
  }

  dimension: campaign_id {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Campaign ID"
    hidden: no
  }

  dimension: campaign_uid {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Campaign UID"
    hidden: no
  }

  dimension: adgroup_id {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Adgroup ID"
    hidden: no
  }

  dimension: adgroup_uid {
    view_label: "Z - Metadata"
    group_label: "Database IDs"
    label: "Adgroup UID"
    hidden: no
  }

  dimension: row_num {
    view_label: "Z - Metadata"
    label: "Row Index"
    hidden: no
  }

}

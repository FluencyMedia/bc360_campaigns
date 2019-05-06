view: facts_campaigns {
  derived_table: {
    sql: SELECT
            *
          FROM (
            SELECT * FROM `arch_campaigns.facts_campaigns_bq`
            UNION ALL
            SELECT * FROM `arch_campaigns.facts_campaigns_sm`
          ) ;;
  }

  dimension: source {
    label: "Data Source"
    type: string

    sql: ${TABLE}.source ;;
  }

  dimension: medium {
    label: "Medium"
    type: string

    sql: ${TABLE}.medium ;;
  }


  dimension: account_id {
    label: "Account ID"
    type: string

    sql: ${TABLE}.account_id ;;
  }

  dimension: campaign_id {
    label: "Campaign ID"
    type: string

    sql: ${TABLE}.campaign_id ;;
  }

  dimension: adgroup_id {
    label: "Ad Group ID"
    type: string

    sql: ${TABLE}.account_id ;;
  }

  measure: date_min {
    label: "Date - Start"
    type: min

    sql: ${TABLE}.date_start ;;
  }


  measure: date_max {
    label: "Date - End"
    type: max

    # value_format: ""
    sql: ${TABLE}.date_end ;;
  }

  measure: impressions_sum {
    label: "# Impressions"
    type: sum

    value_format_name: decimal_0
    sql: ${TABLE}.impressions ;;
  }

  measure: clicks_sum {
    label: "# Clicks"
    type: sum

    value_format_name: decimal_0
    sql: ${TABLE}.clicks ;;
  }

  measure: cost_sum {
    label: "$ Cost"
    type: sum

    value_format_name: usd
    sql: ${TABLE}.cost ;;
  }

  measure: outcomes_bulk {
    label: "# Outcomes"
    type: sum

    value_format_name: decimal_0
    sql: ${TABLE}.outcomes_bulk ;;
  }

}




##### SCROLL ANCHOR

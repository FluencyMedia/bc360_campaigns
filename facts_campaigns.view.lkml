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
    type: number

    sql: ${TABLE}.account_id ;;
  }

  dimension: campaign_id {
    label: "Campaign ID"
    type: number

    sql: ${TABLE}.campaign_id ;;
  }

  dimension: adgroup_id {
    label: "Ad Group ID"
    type: number

    sql: ${TABLE}.adgroup_id ;;
  }

  measure: date_min {
    label: "Date - Start"
    type: date

    sql: ${TABLE}.date_start ;;
  }


  measure: date_max {
    label: "Date - End"
    type: date

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

  measure: outcomes_bulk_sum {
    label: "# Outcomes [BULK]"
    type: sum

    value_format_name: decimal_0
    sql: ${TABLE}.outcomes_bulk ;;
  }

  measure: outcomes_sum {
    label: "# Outcomes"
    type: sum

    value_format_name: decimal_0
    sql: ${TABLE}.outcomes ;;
  }

  measure: ctr {
    view_label: "5. Performance"
    label: "% CTR"

    type: number
    value_format_name: percent_2

    sql: 1.0*(${clicks_sum}) / nullif(${impressions_sum},0) ;;  }

  measure: cpc {
    view_label: "5. Performance"
    label: "$ CPC"

    type: number
    value_format_name: usd

    sql: 1.0*(${cost_sum}) / nullif(${clicks_sum},0) ;;  }

  measure: cpm {
    view_label: "5. Performance"
    label: "$ CPM"

    type: number
    value_format_name: usd

    sql: 1.0*(${cost_sum}) / nullif((${impressions_sum}/1000),0) ;;  }

  measure: cpo {
    view_label: "6. Outcomes"
    label: "$ CPO"
    description: "Cost / Outcome"

    type: number
    value_format_name: usd

    sql: 1.0*(${cost_sum}) / nullif(${outcomes_bulk_sum},0) ;;  }

  measure: otr {
    view_label: "6. Outcomes"
    label: "% OTR"
    description: "Outcomes / Clicks"

    type: number
    value_format_name: percent_2

    sql: 1.0*(${outcomes_bulk_sum}) / nullif(${clicks_sum},0) ;;  }

}




##### SCROLL ANCHOR

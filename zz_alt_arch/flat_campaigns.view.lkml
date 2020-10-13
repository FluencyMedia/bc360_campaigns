include: "/**/*.view.lkml"

view: flat_campaigns {
  sql_table_name: flat_arch.flat_campaigns ;;

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.account_uid ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: adgroup_id {
    type: string
    sql: ${TABLE}.adgroup_id ;;
  }

  dimension: adgroup_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.adgroup_uid ;;
  }

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_group {
    type: string
    sql: ${TABLE}.campaign_group ;;
  }

  dimension: campaign_group_id {
    type: string
    sql: ${TABLE}.campaign_group_id ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_location {
    type: string
    sql: ${TABLE}.campaign_location ;;
  }

  dimension: campaign_matchtype {
    type: string
    sql: ${TABLE}.campaign_matchtype ;;
  }

  dimension: campaign_mode {
    type: string
    sql: ${TABLE}.campaign_mode ;;
  }

  dimension: campaign_region {
    type: string
    sql: ${TABLE}.campaign_region ;;
  }

  dimension: campaign_tier {
    type: string
    sql: ${TABLE}.campaign_tier ;;
  }

  dimension: campaign_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaign_uid ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: organization_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.organization_uid ;;
  }

  dimension: program {
    type: string
    sql: ${TABLE}.program ;;
  }

  dimension: row_num {
    type: number
    sql: ${TABLE}.row_num ;;
  }

  dimension: service_detail {
    type: string
    sql: ${TABLE}.service_detail ;;
  }

  dimension: service_line {
    type: string
    sql: ${TABLE}.service_line ;;
  }

  dimension: service_line_code {
    type: string
    sql: ${TABLE}.service_line_code ;;
  }

  dimension: service_offering {
    type: string
    sql: ${TABLE}.service_offering ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

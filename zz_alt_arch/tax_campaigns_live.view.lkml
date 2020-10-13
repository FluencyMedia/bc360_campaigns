include: "/**/*.view.lkml"

view: tax_campaigns_live {
  sql_table_name: tax_main.tax_campaigns_live ;;

  dimension: adgroups {
    hidden: yes
    sql: ${TABLE}.adgroups ;;
  }

  dimension: ids {
    hidden: yes
    sql: ${TABLE}.ids ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: names {
    type: string
    sql: ${TABLE}.names ;;
  }

  dimension: uids {
    hidden: yes
    sql: ${TABLE}.uids ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: tax_campaigns_live__uids {
  dimension: account_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.account_uid ;;
  }

  dimension: campaign_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaign_uid ;;
  }
}

view: tax_campaigns_live__ids {
  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
}

view: tax_campaigns_live__adgroups {
  dimension: ids {
    hidden: yes
    sql: ${TABLE}.ids ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: names {
    type: string
    sql: ${TABLE}.names ;;
  }

  dimension: uids {
    hidden: yes
    sql: ${TABLE}.uids ;;
  }
}

view: tax_campaigns_live__adgroups__uids {
  dimension: account_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.account_uid ;;
  }

  dimension: adgroup_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.adgroup_uid ;;
  }

  dimension: campaign_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaign_uid ;;
  }
}

view: tax_campaigns_live__adgroups__ids {
  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: adgroup_id {
    type: number
    sql: ${TABLE}.adgroup_id ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
}

view: arch_campaigns {
  label: "3. Campaigns"

  sql_table_name: bc360-main.arch_campaigns.arch_campaigns ;;


  ########## METADATA { ##########

  dimension: row_num {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.row_num ;;
  }

  dimension: client_id {
    hidden: yes
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_uid {
    hidden: yes
    type: string
    sql: ${TABLE}.client_uid ;;
  }

  dimension: organization_id {
    hidden: yes
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: organization_uid {
    hidden: yes
    type: string
    sql: ${TABLE}.organization_uid ;;
  }

  dimension: campaign_id {
    hidden: yes
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_uid {
    hidden: yes
    type: string
    sql: ${TABLE}.campaign_uid ;;
  }

  dimension: adgroup_id {
    hidden: yes
    type: string
    sql: ${TABLE}.adgroup_id ;;
  }

  dimension: adgroup_uid {
    hidden: yes
    type: string
    sql: ${TABLE}.adgroup_uid ;;
  }

  ########## METADATA } ##########



  ########## DIMENSIONS { ##########

  dimension: medium {
    label: "Medium"
    description: "Digital Channel Used"

    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: campaign {
    label: "Campaign"
    description: "Campaign Within Digital Channel"

    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_group {
    label: "Campaign Group"
    description: "Campaign Group Within Digital Channel"

    type: string
    sql: ${TABLE}.campaign_group ;;
  }

  dimension: campaign_region {
    group_label: "Campaign Geography"
    label: "Region"

    type: string
    sql: ${TABLE}.campaign_region ;;
  }

  dimension: campaign_tier_base {
    view_label: "Z - Metadata"
    group_label: "Metrics - Base Values"
    label: "Campaign Tier*"

    hidden: yes

    type: string
    sql: ${TABLE}.campaign_tier ;;
  }

  dimension: campaign_tier {
    label: "Campaign Tier"

    type: string

    case: {
      when: {
        sql: ${campaign_tier_base} = 'S&C' ;;
        label: "S&C"
      }
      when: {
        sql: ${campaign_tier_base} = 'T&P' ;;
        label: "T&P"
      }
      when: {
        sql: ${campaign_tier_base} = 'P&F' ;;
        label: "P&F"
      }
      when: {
        sql: ${campaign_tier_base} = 'Brand' ;;
        label: "Brand"
      }
      when: {
        sql: ${campaign_tier_base} = 'Competitor' ;;
        label: "Competitor"
      }
      when: {
        sql: ${campaign_tier_base} IN ('General', 'Varied') ;;
        label: "General"
      }
      when: {
        sql: ${campaign_tier_base} IS null ;;
        label: "NA"
      }
      else: "Other"
    }

  }

  dimension: campaign_location {
    group_label: "Campaign Geography"
    label: "Campaign Location"

    type: string

    sql: ${TABLE}.campaign_location ;;
  }

  dimension: adgroup {
    group_label: "Campaign Architecture"
    label: "Ad Group"
    description: "Adgroup Within Digital Channel"

    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: service_line_code {
    hidden: yes

    type: string
    sql: ${TABLE}.service_line_code ;;
  }

  dimension: service_offering {
    view_label: "2. Services"
    group_label: "Service Architecture"
    label: "Service Offering"
    description: "Service Line Offering"

    type: string
    sql: ${TABLE}.service_offering ;;
  }

  dimension: service_detail {
    view_label: "2. Services"
    group_label: "Service Architecture"
    label: "Service Detail"
    description: "Service Detail"

    type: string
    sql: ${TABLE}.service_detail ;;
  }

  dimension: agency {
    label: "Agency"
    description: "Agency Managing Any Given Campaign"

    hidden: yes

    type: string
    sql: ${TABLE}.agency ;;
  }

  ########## DIMENSIONS } ##########

}

include: "/**/arch_campaigns_admin.view.lkml"

view: arch_campaigns {
  extends: [arch_campaigns_admin]

  dimension: organization_id { hidden: yes }
  dimension: account_id { hidden: no }
  dimension: campaign_id { hidden: no }
  dimension: adgroup_id { hidden: no }
  dimension: campaign_tier_base { hidden: no }
  dimension: service_line_code { hidden: no }

  dimension: agency { hidden: yes }

  measure: num_programs { hidden: yes }
  measure: num_services { hidden: yes }
  measure: num_campaign_groups { hidden: yes }
  measure: num_campaigns { hidden: yes }
  measure: num_adgroups { hidden: yes }
}

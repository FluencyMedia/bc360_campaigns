include: "arch_campaigns_admin.view.lkml"

view: arch_campaigns {
  extends: [arch_campaigns_admin]

  dimension: organization_id { hidden: yes }
  dimension: account_id { hidden: yes }
  dimension: campaign_id { hidden: yes }
  dimension: adgroup_id { hidden: yes }
  dimension: campaign_tier_base { hidden: yes }
  dimension: service_line_code { hidden: yes }

  measure: num_programs { hidden: yes }
  measure: num_services { hidden: yes }
  measure: num_campaign_groups { hidden: yes }
  measure: num_campaigns { hidden: yes }
  measure: num_adgroups { hidden: yes }
}

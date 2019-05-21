include: "arch_campaigns_admin.view.lkml"

view: arch_campaigns {
  extends: [arch_campaigns_admin]

  dimension: organization_id {
    hidden: yes
  }

  dimension: account_id {
    hidden: yes
    }

  dimension: campaign_id {
    hidden: yes
    }

  dimension: adgroup_id {
    hidden: yes
    }

}

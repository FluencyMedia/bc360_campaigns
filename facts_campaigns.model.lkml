connection: "bc360_main"

include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_clients/*.view.lkml"

include: "*.view.lkml"

persist_with: dg_bc360_clients

label: "BC360 - Admin"

explore: facts_campaigns {
  group_label: "BC360 - QA"
  label: "FACTS - Campaigns"

  join: arch_campaigns_admin {
    relationship: one_to_many
    type: left_outer
    sql_on: ${facts_campaigns.adgroup_id} = ${arch_campaigns_admin.adgroup_id}
    ;;
  }

  # join: arch_clients_admin {

  # }
}

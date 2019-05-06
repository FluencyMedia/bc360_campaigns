connection: "bc360_main"

include: "//bc360_admin/bc360_triggers.lkml"

include: "*.view.lkml"

persist_with: dg_bc360_clients

label: "BC360 - Admin"

explore: facts_campaigns {
  group_label: "BC360 - QA"
  label: "FACTS - Campaigns"
}
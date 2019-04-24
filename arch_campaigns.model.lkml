connection: "bc360_main"

include: "//bc360_admin/bc360_triggers.lkml"

include: "*.view.lkml"

persist_with: dg_bc360_clients

explore: arch_campaigns {
  group_label: "BC360 - Admin"
  label: "Campaign Architecture"
}

explore: arch_campaigns_admin {
  group_label: "BC360 - Admin"
  label: "Campaign Architecture [ADMIN]"
}

connection: "bc360_main"

include: "//bc360_admin/bc360_triggers.lkml"

include: "*.view.lkml"

persist_with: dg_bc360_clients

label: "BC360 - Admin Tools"

explore: arch_campaigns_admin {
  label: "Campaign Architecture [ADMIN]"
  hidden: no
}

explore: flat_campaigns {
  hidden: yes
  label: "Campaign Architecture [FLAT]"
}

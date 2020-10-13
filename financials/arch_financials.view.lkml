include: "/**/*.view.lkml"

view: arch_financials {
  derived_table: {
    datagroup_trigger: dg_bc360_campaigns

    sql:  SELECT
            ROW_NUMBER() OVER () row_index,
            service_line_code,
            medium,
            roi_label,
            patients,
            patients_new,
            payments_per_patient,
            payments_per_patient_new,
            roi_coeff,
          FROM arch_campaigns.arch_financials af
          WHERE roi_label LIKE "%General";;
  }

  dimension: service_line_code {
    primary_key: yes
    label: "Service Line Code [ROI]"
    hidden: yes

    sql: ${TABLE}.service_line_code ;;
  }

  dimension: roi_label {
    label: "ROI Label"

    sql: ${TABLE}.roi_label ;;
  }

  dimension: medium {
    label: "Medium"

    sql: ${TABLE}.medium ;;
  }

  measure: patients_sum {
    label: "# Patients"
    type: number
    value_format_name: decimal_0
    sql: NULLIF(SUM(${TABLE}.patients), 0) ;;
  }

  measure: patients_new_sum {
    label: "# Patients - New"
    type: number
    value_format_name: decimal_0
    sql: NULLIF(SUM(${TABLE}.patients_new), 0) ;;
  }

  measure: patients_new_share {
    label: "% Patients - New"
    type: number
    value_format_name: percent_1
    sql: 1.0*(${patients_new_sum}) / NULLIF(${patients_sum},0);;
  }

}

# The name of this view in Looker is "V Booking V2s5"
view: v_booking_v2s5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `salesops_sf.v_booking_v2s5`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cpaa S" in Explore.

  dimension: cpaa_s {
    type: number
    sql: ${TABLE}.CPaaS ;;
  }

  dimension: cpaa_s2 {
    type: number
    sql: ${TABLE}.CPaaS2 ;;
  }

  dimension: cpaa_s2c {
    type: number
    sql: ${TABLE}.CPaaS2c ;;
  }

  dimension: cpaa_sc {
    type: number
    sql: ${TABLE}.CPaaSc ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: SQdepartment {
    type: string
    sql: ${TABLE}.SQ_department ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }

  dimension: mrg_amount {
    type: number
    sql: ${TABLE}.MRG_Amount ;;
  }

  dimension: NewLogo {
    type:  number
    sql: ${TABLE}.newlogo ;;

  }

 dimension: upsellcross {
  type: number
  sql: ${TABLE}.UpsellCross ;;


 }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_mrg_amount {
    type: sum
    sql: ${mrg_amount} ;;
  }

  measure: average_mrg_amount {
    type: average
    sql: ${mrg_amount} ;;
  }

  dimension: mrg_incremental {
    type: number
    sql: ${TABLE}.MRG_Incremental ;;
  }

  dimension: mrpf {
    type: number
    sql: ${TABLE}.MRPF ;;
  }

  dimension: mrpfcount {
    type: number
    sql: ${TABLE}.MRPFCount ;;
  }

  dimension: oppowner_id {
    type: string
    sql: ${TABLE}.OppownerId ;;
  }

  dimension: quota {
    type: number
    sql: ${TABLE}.quota ;;
  }

  dimension: rep {
    type: string
    sql: ${TABLE}.Rep ;;
  }

  dimension: roleid {
    type: string
    sql: ${TABLE}.roleid ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: total_booking {
    type: number
    sql: ${TABLE}.total_booking ;;
  }

  dimension: voice {
    type: number
    sql: ${TABLE}.Voice ;;
  }

  dimension: voicec {
    type: number
    sql: ${TABLE}.Voicec ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  # added dimenstions and measures that are not from BigQuery

  measure: quota_percent {
    type: number
    value_format: "0.00%"
    sql: (sum(${total_booking})/nullif(sum(${quota}),0)) ;;
  }
  measure: avg_v {
    type: number
    sql: sum(${voice})/nullif(sum(${voicec}),0) ;;
  }

  measure: avg_1_0 {
    type: number
    sql: sum(${cpaa_s})/nullif(sum(${cpaa_sc}),0) ;;
  }

  measure: avg_2_0 {
    type: number
    sql: sum(${cpaa_s2})/nullif(sum(${cpaa_s2c}),0) ;;
  }

  measure: avg_tot {
    type: number
    sql: sum(${total_booking})/nullif(${tot_counts},0) ;;
  }

  measure: tot_counts {
    type: number
    sql: sum(ifnull(${voicec},0)+ifnull(${cpaa_sc},0)+ifnull(${cpaa_s2c},0)) ;;
  }

  measure: PercentIncr {
    type: number
    sql: sum(${mrg_incremental})/nullif(sum(${total_booking}),0) ;;
  }



}

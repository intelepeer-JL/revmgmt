# The name of this view in Looker is "V Booking S5"
view: v_booking_s5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `salesops_sf.v_booking_s5`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Arr" in Explore.

  dimension: arr {
    type: number
    sql: ${TABLE}.ARR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_arr {
    type: sum
    sql: ${arr} ;;
  }

  measure: average_arr {
    type: average
    sql: ${arr} ;;
  }

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
    sql: ${TABLE}.Department ;;
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
    sql: ${TABLE}.Month ;;
  }

  dimension: mrg_amount {
    type: number
    sql: ${TABLE}.MRG_Amount ;;
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

  dimension: quota {
    type: number
    sql: ${TABLE}.Quota ;;
  }

  dimension: rep {
    type: string
    sql: ${TABLE}.Rep ;;
  }

  dimension: role_id {
    type: string
    sql: ${TABLE}.Role_Id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
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
    drill_fields: []
  }

  # added dimenstions and measures that are not from BigQuery

  measure: quota_percentage {
    type: number
    sql: (sum(${total_booking})/nullif(sum(${quota}),0)) ;;
  }
  measure: avg_v {
    type: number
    sql: sum(${voice})/nullif(sum(${voicec}),0) ;;
  }

  measure: avg_1 {
    type: number
    sql: sum(${cpaa_s})/nullif(sum(${cpaa_sc}),0) ;;
  }

  measure: avg_2 {
    type: number
    sql: sum(${cpaa_s2})/nullif(sum(${cpaa_s2c}),0) ;;
  }

  measure: avg_t {
    type: number
    sql: sum(${total_booking})/nullif(${t_counts},0) ;;
  }

  measure: t_counts {
    type: number
    sql: sum(ifnull(${voicec},0)+ifnull(${cpaa_sc},0)+ifnull(${cpaa_s2c},0)) ;;
  }

  measure: PercentIncremental {
    type: number
    sql: sum(${mrg_incremental})/nullif(sum(${total_booking}),0) ;;
  }




}

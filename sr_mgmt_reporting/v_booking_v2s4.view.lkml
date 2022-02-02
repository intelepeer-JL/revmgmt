# The name of this view in Looker is "V Booking V2s4"
view: v_booking_v2s4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_booking_v2s4`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  dimension: quota {
    type: number
    sql: ${TABLE}.Quota ;;
  }

  dimension: rep {
    type: string
    sql: ${TABLE}.Rep ;;
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
}

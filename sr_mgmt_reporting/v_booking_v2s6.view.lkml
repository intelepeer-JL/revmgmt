# The name of this view in Looker is "V Booking V2s6"
view: v_booking_v2s6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `salesops_sf.v_booking_v2s6`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Booking" in Explore.

  dimension: booking {
    type: number
    sql: ${TABLE}.booking ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_booking {
    type: sum
    sql: ${booking} ;;
  }

  measure: average_booking {
    type: average
    sql: ${booking} ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: mgmt_plan {
    type: number
    sql: ${TABLE}.Mgmt_plan ;;
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

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: team_quota {
    type: number
    sql: ${TABLE}.team_quota ;;
  }
 measure: tot_quot {
   type: sum
  sql: ${TABLE}.team_quota ;;
 }

  measure: tot_mgmt {
    type: sum
    sql: ${TABLE}.Mgmt_plan ;;

  }

 measure: mgmt_eff {
   type: number
  value_format: "0.0%"
  sql: ((${total_booking})/nullif((${mgmt_plan}),0)) ;;

 }

  measure: count {
    type: count
    drill_fields: []
  }
}

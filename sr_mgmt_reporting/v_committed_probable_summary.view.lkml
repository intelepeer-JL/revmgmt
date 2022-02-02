# The name of this view in Looker is "V Committed Probable Summary"
view: v_committed_probable_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_Committed_Probable_Summary`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Closed" in Explore.

  dimension: closed {
    type: number
    sql: ${TABLE}.Closed ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_closed {
    type: sum
    sql: ${closed} ;;
  }

  measure: average_closed {
    type: average
    sql: ${closed} ;;
  }

  dimension: committed {
    type: number
    sql: ${TABLE}.Committed ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.IsActive ;;
  }

  dimension: opp_owner {
    type: string
    sql: ${TABLE}.OppOwner ;;
  }

  dimension: probable {
    type: number
    sql: ${TABLE}.Probable ;;
  }

  dimension: quota {
    type: number
    sql: ${TABLE}.Quota ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.Role ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

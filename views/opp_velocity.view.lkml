# The name of this view in Looker is "Opp Velocity"
view: opp_velocity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.opp_velocity`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: close {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Close ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Closedoppduartion" in Explore.

  dimension: closedoppduartion {
    type: number
    sql: ${TABLE}.closedoppduartion ;;
  }

  dimension_group: completion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CompletionDate ;;
  }

  dimension: coreectedduartion {
    type: number
    sql: ${TABLE}.coreectedduartion ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EndDate ;;
  }

  dimension: end_stage {
    type: string
    sql: ${TABLE}.EndStage ;;
  }

  dimension: first_stage {
    type: string
    sql: ${TABLE}.FirstStage ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.IsClosed ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.IsWon ;;
  }

  dimension: last_amount {
    type: number
    sql: ${TABLE}.Last_Amount ;;
  }

  dimension: lostamount {
    type: number
    sql: ${TABLE}.lostamount ;;
  }

  dimension: opendoppduartion {
    type: number
    sql: ${TABLE}.opendoppduartion ;;
  }

  dimension_group: oppend {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.oppend ;;
  }

  dimension: oppid {
    type: string
    sql: ${TABLE}.oppid ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.OpportunityId ;;
  }

  dimension_group: oppstart {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.oppstart ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.StageName ;;
  }

  dimension: stageduration {
    type: number
    sql: ${TABLE}.stageduration ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.StartDate ;;
  }

  dimension: wonamount {
    type: number
    sql: ${TABLE}.wonamount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [stage_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_closedoppduartion {
    type: sum
    hidden: yes
    sql: ${closedoppduartion} ;;
  }

  measure: average_closedoppduartion {
    type: average
    hidden: yes
    sql: ${closedoppduartion} ;;
  }

  measure: total_coreectedduartion {
    type: sum
    hidden: yes
    sql: ${coreectedduartion} ;;
  }

  measure: average_coreectedduartion {
    type: average
    hidden: yes
    sql: ${coreectedduartion} ;;
  }

  measure: total_last_amount {
    type: sum
    hidden: yes
    sql: ${last_amount} ;;
  }

  measure: average_last_amount {
    type: average
    hidden: yes
    sql: ${last_amount} ;;
  }

  measure: total_lostamount {
    type: sum
    hidden: yes
    sql: ${lostamount} ;;
  }

  measure: average_lostamount {
    type: average
    hidden: yes
    sql: ${lostamount} ;;
  }

  measure: total_opendoppduartion {
    type: sum
    hidden: yes
    sql: ${opendoppduartion} ;;
  }

  measure: average_opendoppduartion {
    type: average
    hidden: yes
    sql: ${opendoppduartion} ;;
  }

  measure: total_sequence {
    type: sum
    hidden: yes
    sql: ${sequence} ;;
  }

  measure: average_sequence {
    type: average
    hidden: yes
    sql: ${sequence} ;;
  }

  measure: total_stageduration {
    type: sum
    hidden: yes
    sql: ${stageduration} ;;
  }

  measure: average_stageduration {
    type: average
    hidden: yes
    sql: ${stageduration} ;;
  }

  measure: total_wonamount {
    type: sum
    hidden: yes
    sql: ${wonamount} ;;
  }

  measure: average_wonamount {
    type: average
    hidden: yes
    sql: ${wonamount} ;;
  }
}

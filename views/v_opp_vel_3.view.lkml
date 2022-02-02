# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: v_opp_vel_3 {
#   hidden: no

#   join: v_opp_vel_3__opp_end {
#     view_label: "V Opp Vel 3: Oppend"
#     sql: LEFT JOIN UNNEST(${v_opp_vel_3.opp_end}) as v_opp_vel_3__opp_end ;;
#     relationship: one_to_many
#   }

#   join: v_opp_vel_3__opp_start {
#     view_label: "V Opp Vel 3: Oppstart"
#     sql: LEFT JOIN UNNEST(${v_opp_vel_3.opp_start}) as v_opp_vel_3__opp_start ;;
#     relationship: one_to_many
#   }
# }

# The name of this view in Looker is "V Opp Vel 3"
view: v_opp_vel_3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_opp_vel_3`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Close Date" in Explore.

  dimension: close_date {
    type: string
    sql: ${TABLE}.CloseDate ;;
  }

  dimension: closedoppduration {
    type: number
    sql: ${TABLE}.closedoppduration ;;
  }

  dimension: curr_stage_group {
    type: string
    sql: ${TABLE}.CurrStageGroup ;;
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

  dimension: is_lost {
    type: yesno
    sql: ${TABLE}.IsLost ;;
  }

  dimension: is_open {
    type: yesno
    sql: ${TABLE}.IsOpen ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.IsWon ;;
  }

  dimension: last_amount {
    type: number
    sql: ${TABLE}.Last_Amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_last_amount {
    type: sum
    sql: ${last_amount} ;;
  }

  measure: average_last_amount {
    type: average
    sql: ${last_amount} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: opend {
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
    sql: ${TABLE}.opend ;;
  }

  dimension: openoppduration {
    type: number
    sql: ${TABLE}.openoppduration ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: opp_end {
    hidden: yes
    sql: ${TABLE}.OppEnd ;;
  }

  dimension: opp_start {
    hidden: yes
    sql: ${TABLE}.OppStart ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.OpportunityID ;;
  }

  dimension_group: opstrt {
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
    sql: ${TABLE}.opstrt ;;
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

  dimension_group: stage_end {
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
    sql: ${TABLE}.StageEnd ;;
  }

  dimension_group: stage_start {
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
    sql: ${TABLE}.StageStart ;;
  }

  dimension: stageduration {
    type: number
    sql: ${TABLE}.stageduration ;;
  }

  dimension: stageorder {
    type: number
    sql: ${TABLE}.stageorder ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "V Opp Vel 3 Opp End"
view: v_opp_vel_3__opp_end {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: v_opp_vel_3__opp_end {
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
    sql: v_opp_vel_3__opp_end ;;
  }
}

# The name of this view in Looker is "V Opp Vel 3 Opp Start"
view: v_opp_vel_3__opp_start {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: v_opp_vel_3__opp_start {
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
    sql: v_opp_vel_3__opp_start ;;
  }
}

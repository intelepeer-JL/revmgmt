# The name of this view in Looker is "V Current Funnel"
view: v_current_funnel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_Current_Funnel`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Name" in Explore.

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: close_date {
    type: string
    sql: ${TABLE}.CloseDate ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension_group: current_execution {
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
    sql: ${TABLE}.CurrentExecutionDate ;;
  }

  dimension: id18__c {
    type: string
    sql: ${TABLE}.Id18__c ;;
  }

  dimension: OppName {
    type: string
    sql: ${TABLE}.OppName ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.IsClosed ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.IsWon ;;
  }

  dimension: last_activity_date {
    type: string
    sql: ${TABLE}.LastActivityDate ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension: last_referenced_date {
    type: string
    sql: ${TABLE}.LastReferencedDate ;;
  }

  dimension: last_viewed_date {
    type: string
    sql: ${TABLE}.LastViewedDate ;;
  }

  dimension: opp_owner {
    type: string
    sql: ${TABLE}.OppOwner ;;
  }

  dimension: opp_type {
    type: string
    sql: ${TABLE}.OppType ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.Partner ;;
  }

  dimension: stage_group {
    type: string
    sql: ${TABLE}.StageGroup ;;
  }

  dimension: stageorder {
    type: number
    sql: ${TABLE}.stageorder ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: sub_agent {
    type: string
    sql: ${TABLE}.Sub_Agent ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: total_amount__c {
    type: number
    sql: ${TABLE}.Total_Amount__c ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, account_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_stageorder {
    type: sum
    hidden: yes
    sql: ${stageorder} ;;
  }

  measure: average_stageorder {
    type: average
    hidden: yes
    sql: ${stageorder} ;;
  }

  measure: total_total_amount__c {
    type: sum
    hidden: yes
    sql: ${total_amount__c} ;;
  }

  measure: average_total_amount__c {
    type: average
    hidden: yes
    sql: ${total_amount__c} ;;
  }

  measure: adds {

  }

}

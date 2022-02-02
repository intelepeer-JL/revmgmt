# The name of this view in Looker is "V Commit Probable"
view: v_commit_probable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_Commit_Probable`
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
  # This dimension will be called "Accnt Link" in Explore.

  dimension: accnt_link {
    type: string
    sql: ${TABLE}.accnt_link ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
    link: {
      label: "Account"
      url: " {{v_lock_stretch.accnt_link._value}}"
    }
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: close {
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
    sql: ${TABLE}.CloseDate ;;
  }

  dimension_group: closemonth {
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
    sql: ${TABLE}.closemonth ;;
  }

  dimension_group: closequarter {
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
    sql: ${TABLE}.closequarter ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.ForecastCategory ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}.ForecastCategoryName ;;
  }

  dimension: important_notes {
    type: string
    sql: ${TABLE}.important_notes ;;
  }

  dimension: monthly_revenue__c {
    type: number
    sql: ${TABLE}.Monthly_Revenue__c ;;
  }

  dimension: opp_link {
    type: string
    sql: ${TABLE}.opp_link ;;
  }

  dimension: opp_name {
    type: string
    sql: ${TABLE}.OppName ;;
  }

  dimension: opp_owner {
    type: string
    sql: ${TABLE}.OppOwner ;;
  }

  dimension: opp_record_type {
    type: string
    sql: ${TABLE}.OppRecordType ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension_group: refresh {
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
    sql: ${TABLE}.refresh ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: sap_id__c {
    type: string
    sql: ${TABLE}.SAP_ID__c ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.StageName ;;
  }

  dimension: tot_amount {
    type: number
    sql: ${TABLE}.totalAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [id, opp_name, stage_name, forecast_category_name, account_name]
  }
}

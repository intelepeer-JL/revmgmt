# The name of this view in Looker is "Opportunity History"
view: opportunityhistory {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.OpportunityHistory`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " ID" in Explore.

  dimension: _id {
    type: string
    sql: ${TABLE}._Id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: close_date {
    type: string
    sql: ${TABLE}.CloseDate ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CreatedById ;;
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

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}.ExpectedRevenue ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.ForecastCategory ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.OpportunityId ;;
  }

  dimension: prev_amount {
    type: number
    sql: ${TABLE}.PrevAmount ;;
  }

  dimension: prev_close_date {
    type: string
    sql: ${TABLE}.PrevCloseDate ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.Probability ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.StageName ;;
  }

  dimension_group: system_modstamp {
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
    sql: ${TABLE}.SystemModstamp ;;
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

  measure: total_amount {
    type: sum
    hidden: yes
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    hidden: yes
    sql: ${amount} ;;
  }

  measure: total_expected_revenue {
    type: sum
    hidden: yes
    sql: ${expected_revenue} ;;
  }

  measure: average_expected_revenue {
    type: average
    hidden: yes
    sql: ${expected_revenue} ;;
  }

  measure: total_prev_amount {
    type: sum
    hidden: yes
    sql: ${prev_amount} ;;
  }

  measure: average_prev_amount {
    type: average
    hidden: yes
    sql: ${prev_amount} ;;
  }

  measure: total_probability {
    type: sum
    hidden: yes
    sql: ${probability} ;;
  }

  measure: average_probability {
    type: average
    hidden: yes
    sql: ${probability} ;;
  }
}

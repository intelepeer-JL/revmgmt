# The name of this view in Looker is "V Funnel Analytics"
view: v_funnel_analytics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_Funnel_Analytics`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accnt Link" in Explore.


  dimension: account_filter {
    type: yesno
    sql: ${TABLE}.AccountFilter ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
    link: {
      label: "Account"
      url: " {{v_funnel_analytics.accnt_link._value}}"
  }
  }




  dimension: accnt_link {
    type: string
    sql: ${TABLE}.accnt_link ;;
  }

  dimension: is_top_10 {
    type: yesno
    sql:
      exists(
        select *
        from(
          select account_name
          from v_funnel_analytics
          group by sum(amount)desc
          limit 10
          )top_10
          where ${account_name}=top_10.account_name);;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: avgadds {
    type: number
    sql:  ${oppcount}/13;;
  }


  measure: avgval {
    type: number
    sql:  ${total_amount}/13;;
  }

  measure: oppcount {
    type:  count_distinct
    sql: ${opp_id} ;;
  }



  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }





  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: close_month {
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
    sql: ${TABLE}.CloseMonth ;;
  }

  dimension_group: closedate {
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
    sql: ${TABLE}.closedate ;;
  }

  dimension: closemonth13filter {
    type: yesno
    sql: ${TABLE}.closemonth13filter ;;
  }

  dimension: closemonthname {
    type: string
    sql: ${TABLE}.closemonthname ;;
  }

  dimension: closemonthnum {
    type: number
    sql: ${TABLE}.closemonthnum ;;
  }

  dimension: closemonthwindow {
    type: yesno
    sql: ${TABLE}.closemonthwindow ;;
  }

  dimension: closeyear {
    type: string
    sql: ${TABLE}.closeyear ;;
  }

  dimension: creadtedmonth4 {
    type: yesno
    sql: ${TABLE}.creadtedmonth4 ;;
  }

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

  dimension_group: created_month {
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
    sql: ${TABLE}.CreatedMonth ;;
  }

  dimension_group: created_quarter {
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
    sql: ${TABLE}.CreatedQuarter ;;
  }

  dimension: createdmonth13filter {
    type: yesno
    sql: ${TABLE}.createdmonth13filter ;;
  }

  dimension: createdmonthname {
    type: string
    sql: ${TABLE}.createdmonthname ;;
  }

  dimension: createdmonthnum {
    type: number
    sql: ${TABLE}.createdmonthnum ;;
  }

  dimension: createdyear {
    type: string
    sql: ${TABLE}.createdyear ;;
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

  dimension: current_month_filter {
    type: yesno
    sql: ${TABLE}.CurrentMonthFilter ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: funnel_trend_filter {
    type: yesno
    sql: ${TABLE}.FunnelTrendFilter ;;
  }

  dimension: funnelpipeline {
    type: yesno
    sql: ${TABLE}.Funnelpipeline ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.IsActive ;;
  }

  dimension: last_activity {
    type: number
    sql: ${TABLE}.Last_Activity ;;
  }

  dimension: ly_funnel {
    type: number
    sql: ${TABLE}.LY_Funnel ;;
  }

  dimension: opp_age {
    type: number
    sql: ${TABLE}.Opp_age ;;
  }

  dimension: opp_filter {
    type: yesno
    sql: ${TABLE}.OppFilter ;;
  }

  dimension: opp_id {
    type: string
    sql: ${TABLE}.OppId ;;
  }

  dimension: opp_link {
    hidden: yes
    type: string
    sql: ${TABLE}.opp_link ;;
  }

  dimension: opp_name {
    type: string
    sql: ${TABLE}.OppName ;;
    link: {
      label: "Opportunity"
      url: " {{v_funnel_analytics.opp_link._value}}"
    }
  }

  dimension: opp_owner {
    type: string
    sql: ${TABLE}.OppOwner ;;
  }

  dimension: opp_record {
    type: string
    sql: ${TABLE}.Opp_Record ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.Role ;;
  }

  dimension: sales_partner {
    type: string
    sql: ${TABLE}.Sales_Partner ;;
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

  dimension: statusorder {
    type: number
    sql: ${TABLE}.statusorder ;;
  }

  dimension: sub_agent {
    type: string
    sql: ${TABLE}.Sub_Agent ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: ty_funnel {
    type: number
    sql: ${TABLE}.TY_Funnel ;;
  }

  dimension: updated_on {
    type: string
    sql: ${TABLE}.updated_on ;;
  }

  dimension: value_filter {
    type: yesno
    sql: ${TABLE}.Value_Filter ;;
  }

  measure: count {
    type: count
    drill_fields: [opp_name, closemonthname, createdmonthname, account_name]
  }
}

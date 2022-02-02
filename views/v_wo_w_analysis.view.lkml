# The name of this view in Looker is "V Wo W Analysis"
view: v_wo_w_analysis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_WoW_analysis`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Name" in Explore.

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: close_date {
    type: string
    sql: ${TABLE}.CloseDate ;;
  }

  dimension: closedloss {
    type: number
    sql: ${TABLE}.closedloss ;;
  }

  dimension: closedwon {
    type: number
    sql: ${TABLE}.closedwon ;;
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
    sql: ${TABLE}.Created ;;
  }

  dimension: inactive {
    type: number
    sql: ${TABLE}.inactive ;;
  }

  dimension: lw_active {
    type: number
    sql: ${TABLE}.LW_Active ;;
  }

  dimension: lw_amount {
    type: number
    sql: ${TABLE}.LW_Amount ;;
  }

  dimension: lw_status {
    type: string
    sql: ${TABLE}.LW_Status ;;
  }

  dimension: newadd {
    type: number
    sql: ${TABLE}.newadd ;;
  }

  dimension: opp_name {
    type: string
    sql: ${TABLE}.OppName ;;
  }

  dimension: opp_owner {
    type: string
    sql: ${TABLE}.OppOwner ;;
  }

  dimension: opp_owner_id {
    type: string
    sql: ${TABLE}.OppOwnerID ;;
  }

  dimension: removed {
    type: number
    sql: ${TABLE}.removed ;;
  }

  dimension: rengaged {
    type: number
    sql: ${TABLE}.Rengaged ;;
  }

  dimension: stalled {
    type: number
    sql: ${TABLE}.Stalled ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: totalid {
    type: string
    sql: ${TABLE}.totalid ;;
  }

  dimension: tw_active {
    type: number
    sql: ${TABLE}.TW_Active ;;
  }

  dimension: tw_amount {
    type: number
    sql: ${TABLE}.TW_Amount ;;
  }

  dimension: tw_status {
    type: string
    sql: ${TABLE}.TW_Status ;;
  }

  dimension: value_change {
    type: number
    sql: ${TABLE}.ValueChange ;;
  }

  dimension: TW_Status_Count {
    type: number
    sql:  case when ${tw_status} = "Active" then 1 else null end ;;
  }

  dimension: lW_Status_Count {
    type: number
    sql:  case when ${lw_status} = "Active" then 1 else null end ;;
  }

  dimension: value_count {
    type: number
    sql:  case when ${category}="Change in Value" then 1 else null end ;;
  }

  dimension: stalled_count {
    type: number
    sql:  case when ${category}="Stalled" then 1 else null end ;;
  }

  dimension: reengaged_count {
    type: number
    sql:  case when ${category}="Re-engaged" then 1 else null end ;;
  }

  dimension: new_count {
    type: number
    sql:  case when ${category}="New Funnel Add" then 1 else null end ;;
  }

  dimension: inactive_count {
    type: number
    sql:  case when ${category}="Inactive(Consolidated)" then 1 else null end ;;
  }

  dimension: lost_count {
    type: number
    sql:  case when ${category}="Closed Lost" then 1 else null end ;;
  }

  dimension: won_count {
    type: number
    sql:  case when ${category}="Closed Won" then 1 else null end ;;
  }

  dimension: removed_count {
    type: number
    sql:  case when ${category}="Removed From Previous Week" then 1 else null end ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.



  measure: total_tw_count{
    type: sum
    sql: ${TW_Status_Count} ;;
  }

  measure: total_lw_count{
    type: sum
    sql: ${lW_Status_Count} ;;
  }

  measure: wow_count_change {
    type: number
    sql: ${total_tw_count}-${total_lw_count} ;;
  }

  measure: WOW_Change {
    type: number
    sql: ${total_tw_active}-${total_lw_active} ;;
    value_format: "$#,##0;($#,##0)"
  }

  dimension: wow_val{
    type: number
    sql: ${tw_active}-${lw_active} ;;
  }

  measure: wow_avg {
    type: number
    sql: ${WOW_Change}/nullif(${wow_count_change},0) ;;
    value_format: "$#,##0;($#,##0)"
  }


  measure: count {
    type: count
    drill_fields: [opp_name, account_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_closedloss {
    type: sum
    hidden: yes
    sql: ${closedloss} ;;
  }

  measure: average_closedloss {
    type: average
    hidden: yes
    sql: ${closedloss} ;;
  }

  measure: total_closedwon {
    type: sum
    hidden: yes
    sql: ${closedwon} ;;
  }

  measure: average_closedwon {
    type: average
    hidden: yes
    sql: ${closedwon} ;;
  }

  measure: total_inactive {
    type: sum
    hidden: yes
    sql: ${inactive} ;;
  }

  measure: average_inactive {
    type: average
    hidden: yes
    sql: ${inactive} ;;
  }

  measure: total_lw_active {
    type: sum
    hidden: yes
    sql: ${lw_active} ;;
  }

  measure: average_lw_active {
    type: average
    hidden: yes
    sql: ${lw_active} ;;
  }

  measure: total_lw_amount {
    type: sum
    hidden: yes
    sql: ${lw_amount} ;;
  }

  measure: average_lw_amount {
    type: average
    hidden: yes
    sql: ${lw_amount} ;;
  }

  measure: total_newadd {
    type: sum
    hidden: yes
    sql: ${newadd} ;;
  }

  measure: average_newadd {
    type: average
    hidden: yes
    sql: ${newadd} ;;
  }

  measure: total_removed {
    type: sum
    hidden: yes
    sql: ${removed} ;;
  }

  measure: average_removed {
    type: average
    hidden: yes
    sql: ${removed} ;;
  }

  measure: total_rengaged {
    type: sum
    hidden: yes
    sql: ${rengaged} ;;
  }

  measure: average_rengaged {
    type: average
    hidden: yes
    sql: ${rengaged} ;;
  }

  measure: total_stalled {
    type: sum
    hidden: yes
    sql: ${stalled} ;;
  }

  measure: average_stalled {
    type: average
    hidden: yes
    sql: ${stalled} ;;
  }

  measure: total_tw_active {
    type: sum
    hidden: yes
    sql: ${tw_active} ;;
  }

  measure: average_tw_active {
    type: average
    hidden: yes
    sql: ${tw_active} ;;
  }

  measure: total_tw_amount {
    type: sum
    hidden: yes
    sql: ${tw_amount} ;;
  }

  measure: average_tw_amount {
    type: average
    hidden: yes
    sql: ${tw_amount} ;;
  }

  measure: total_value_change {
    type: sum
    hidden: yes
    sql: ${value_change} ;;
  }

  measure: average_value_change {
    type: average
    hidden: yes
    sql: ${value_change} ;;
  }
}

# The name of this view in Looker is "V Wo W Analysis Grouped"
view: v_wo_w_analysis_grouped {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_WoW_analysis_grouped`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Closedloss" in Explore.

  dimension: closedloss {
    type: number
    sql: ${TABLE}.closedloss ;;
  }

  dimension: closedloss_a {
    type: number
    sql: ${TABLE}.closedloss_a ;;
  }

  dimension: closedloss_c {
    type: number
    sql: ${TABLE}.closedloss_c ;;
  }

  dimension: closedwon {
    type: number
    sql: ${TABLE}.closedwon ;;
  }

  dimension: closedwon_a {
    type: number
    sql: ${TABLE}.closedwon_a ;;
  }

  dimension: closedwon_c {
    type: number
    sql: ${TABLE}.closedwon_c ;;
  }

  dimension: inactive {
    type: number
    sql: ${TABLE}.inactive ;;
  }

  dimension: inactive_a {
    type: number
    sql: ${TABLE}.inactive_a ;;
  }

  dimension: inactive_c {
    type: number
    sql: ${TABLE}.inactive_c ;;
  }

  dimension: lw_active {
    type: number
    sql: ${TABLE}.LW_Active ;;
  }

  dimension: lw_active_a {
    type: number
    sql: ${TABLE}.LW_Active_a ;;
  }

  dimension: lw_active_c {
    type: number
    sql: ${TABLE}.LW_Active_c ;;
  }

  dimension: newadd {
    type: number
    sql: ${TABLE}.newadd ;;
  }

  dimension: newadd_a {
    type: number
    sql: ${TABLE}.newadd_a ;;
  }

  dimension: newadd_c {
    type: number
    sql: ${TABLE}.newadd_c ;;
  }

  dimension: removed {
    type: number
    sql: ${TABLE}.removed ;;
  }

  dimension: removed_a {
    type: number
    sql: ${TABLE}.removed_a ;;
  }

  dimension: removed_c {
    type: number
    sql: ${TABLE}.removed_c ;;
  }

  dimension: rengaged {
    type: number
    sql: ${TABLE}.Rengaged ;;
  }

  dimension: rengaged_a {
    type: number
    sql: ${TABLE}.Rengaged_a ;;
  }

  dimension: rengaged_c {
    type: number
    sql: ${TABLE}.Rengaged_c ;;
  }

  dimension: stalled {
    type: number
    sql: ${TABLE}.Stalled ;;
  }

  dimension: stalled_a {
    type: number
    sql: ${TABLE}.Stalled_a ;;
  }

  dimension: stalled_c {
    type: number
    sql: ${TABLE}.Stalled_c ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: tw_active {
    type: number
    sql: ${TABLE}.TW_Active ;;
  }

  dimension: tw_active_a {
    type: number
    sql: ${TABLE}.TW_Active_a ;;
  }

  dimension: tw_active_c {
    type: number
    sql: ${TABLE}.TW_Active_c ;;
  }

  dimension: value_change {
    type: number
    sql: ${TABLE}.ValueChange ;;
  }

  dimension: value_change_a {
    type: number
    sql: ${TABLE}.ValueChange_a ;;
  }

  dimension: value_change_c {
    type: number
    sql: ${TABLE}.ValueChange_c ;;
  }

  dimension: wo_wchange_c {
    type: number
    sql: ${TABLE}.WoWChange_c ;;
  }

  dimension: wow {
    type: number
    sql: ${TABLE}.wow ;;
  }

  dimension: wow_a {
    type: number
    sql: ${TABLE}.wow_a ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
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

  measure: total_closedloss_a {
    type: sum
    hidden: yes
    sql: ${closedloss_a} ;;
  }

  measure: average_closedloss_a {
    type: average
    hidden: yes
    sql: ${closedloss_a} ;;
  }

  measure: total_closedloss_c {
    type: sum
    hidden: yes
    sql: ${closedloss_c} ;;
  }

  measure: average_closedloss_c {
    type: average
    hidden: yes
    sql: ${closedloss_c} ;;
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

  measure: total_closedwon_a {
    type: sum
    hidden: yes
    sql: ${closedwon_a} ;;
  }

  measure: average_closedwon_a {
    type: average
    hidden: yes
    sql: ${closedwon_a} ;;
  }

  measure: total_closedwon_c {
    type: sum
    hidden: yes
    sql: ${closedwon_c} ;;
  }

  measure: average_closedwon_c {
    type: average
    hidden: yes
    sql: ${closedwon_c} ;;
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

  measure: total_inactive_a {
    type: sum
    hidden: yes
    sql: ${inactive_a} ;;
  }

  measure: average_inactive_a {
    type: average
    hidden: yes
    sql: ${inactive_a} ;;
  }

  measure: total_inactive_c {
    type: sum
    hidden: yes
    sql: ${inactive_c} ;;
  }

  measure: average_inactive_c {
    type: average
    hidden: yes
    sql: ${inactive_c} ;;
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

  measure: total_lw_active_a {
    type: sum
    hidden: yes
    sql: ${lw_active_a} ;;
  }

  measure: average_lw_active_a {
    type: average
    hidden: yes
    sql: ${lw_active_a} ;;
  }

  measure: total_lw_active_c {
    type: sum
    hidden: yes
    sql: ${lw_active_c} ;;
  }

  measure: average_lw_active_c {
    type: average
    hidden: yes
    sql: ${lw_active_c} ;;
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

  measure: total_newadd_a {
    type: sum
    hidden: yes
    sql: ${newadd_a} ;;
  }

  measure: average_newadd_a {
    type: average
    hidden: yes
    sql: ${newadd_a} ;;
  }

  measure: total_newadd_c {
    type: sum
    hidden: yes
    sql: ${newadd_c} ;;
  }

  measure: average_newadd_c {
    type: average
    hidden: yes
    sql: ${newadd_c} ;;
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

  measure: total_removed_a {
    type: sum
    hidden: yes
    sql: ${removed_a} ;;
  }

  measure: average_removed_a {
    type: average
    hidden: yes
    sql: ${removed_a} ;;
  }

  measure: total_removed_c {
    type: sum
    hidden: yes
    sql: ${removed_c} ;;
  }

  measure: average_removed_c {
    type: average
    hidden: yes
    sql: ${removed_c} ;;
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

  measure: total_rengaged_a {
    type: sum
    hidden: yes
    sql: ${rengaged_a} ;;
  }

  measure: average_rengaged_a {
    type: average
    hidden: yes
    sql: ${rengaged_a} ;;
  }

  measure: total_rengaged_c {
    type: sum
    hidden: yes
    sql: ${rengaged_c} ;;
  }

  measure: average_rengaged_c {
    type: average
    hidden: yes
    sql: ${rengaged_c} ;;
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

  measure: total_stalled_a {
    type: sum
    hidden: yes
    sql: ${stalled_a} ;;
  }

  measure: average_stalled_a {
    type: average
    hidden: yes
    sql: ${stalled_a} ;;
  }

  measure: total_stalled_c {
    type: sum
    hidden: yes
    sql: ${stalled_c} ;;
  }

  measure: average_stalled_c {
    type: average
    hidden: yes
    sql: ${stalled_c} ;;
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

  measure: total_tw_active_a {
    type: sum
    hidden: yes
    sql: ${tw_active_a} ;;
  }

  measure: average_tw_active_a {
    type: average
    hidden: yes
    sql: ${tw_active_a} ;;
  }

  measure: total_tw_active_c {
    type: sum
    hidden: yes
    sql: ${tw_active_c} ;;
  }

  measure: average_tw_active_c {
    type: average
    hidden: yes
    sql: ${tw_active_c} ;;
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

  measure: total_value_change_a {
    type: sum
    hidden: yes
    sql: ${value_change_a} ;;
  }

  measure: average_value_change_a {
    type: average
    hidden: yes
    sql: ${value_change_a} ;;
  }

  measure: total_value_change_c {
    type: sum
    hidden: yes
    sql: ${value_change_c} ;;
  }

  measure: average_value_change_c {
    type: average
    hidden: yes
    sql: ${value_change_c} ;;
  }

  measure: total_wo_wchange_c {
    type: sum
    hidden: yes
    sql: ${wo_wchange_c} ;;
  }

  measure: average_wo_wchange_c {
    type: average
    hidden: yes
    sql: ${wo_wchange_c} ;;
  }

  measure: total_wow {
    type: sum
    hidden: yes
    sql: ${wow} ;;
  }

  measure: average_wow {
    type: average
    hidden: yes
    sql: ${wow} ;;
  }

  measure: total_wow_a {
    type: sum
    hidden: yes
    sql: ${wow_a} ;;
  }

  measure: average_wow_a {
    type: average
    hidden: yes
    sql: ${wow_a} ;;
  }
}

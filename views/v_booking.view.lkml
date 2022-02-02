# The name of this view in Looker is "V Booking"
view: v_booking {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_booking`
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
  # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    sql: ${TABLE}.AccountId ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.Account_Name ;;
  }

  dimension: account_owner {
    type: string
    sql: ${TABLE}.AccountOwner ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: arr {
    type: number
    sql: ${TABLE}.ARR ;;
  }

  dimension: bundle__c {
    type: yesno
    sql: ${TABLE}.Bundle__c ;;
  }

  dimension: bundle_type__c {
    type: string
    sql: ${TABLE}.Bundle_Type__c ;;
  }



  dimension_group: close_date {
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

  dimension: cpaas_products__c {
    type: string
    sql: ${TABLE}.CPAAS_Products__c ;;
  }

  dimension: expected_mrg_arg_amount__c {
    type: string
    sql: ${TABLE}.Expected_MRG_ARG_Amount__c ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_modified_date_time__c {
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
    sql: ${TABLE}.Last_Modified_Date_Time__c ;;
  }

  dimension: mrc_price__c {
    type: string
    sql: ${TABLE}.MRC_Price__c ;;
  }

  dimension: mrc_quantity__c {
    type: string
    sql: ${TABLE}.MRC_Quantity__c ;;
  }

  dimension: mrr {
    type: number
    sql: ${TABLE}.MRR ;;
  }

  dimension_group: msa {
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
    sql: ${TABLE}.MSA_Date ;;
  }

  dimension: negotiating_mrg__c {
    type: string
    sql: ${TABLE}.Negotiating_MRG__c ;;
  }

  dimension: opp_name {
    type: string
    sql: ${TABLE}.OppName ;;
  }

  dimension: opp_owner {
    type: string
    sql: ${TABLE}.OppOwner ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: partner_name {
    type: string
    sql: ${TABLE}.Partner_Name ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.RecordType ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.StageName ;;
  }

  dimension: sub_agent {
    type: string
    sql: ${TABLE}.Sub_Agent ;;
  }

  dimension: term_commitment__c {
    type: string
    sql: ${TABLE}.Term_Commitment__c ;;
  }

  dimension: user_role_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.UserRoleId ;;
  }

  dimension: user_role_id_1 {
    type: string
    sql: ${TABLE}.UserRoleId_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_arr {
    type: sum
    hidden: yes
    sql: ${arr} ;;
  }

  measure: average_arr {
    type: average
    hidden: yes
    sql: ${arr} ;;
  }

  measure: total_mrr {
    type: sum
    hidden: yes
    sql: ${mrr} ;;
  }

  measure: average_mrr {
    type: average
    hidden: yes
    sql: ${mrr} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      opp_name,
      partner_name,
      account_name,
      stage_name,
      user_role.name,
      user_role.id,
      user_role.developer_name
    ]
  }
}

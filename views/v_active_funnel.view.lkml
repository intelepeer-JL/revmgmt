# The name of this view in Looker is "V Active Funnel"
view: v_active_funnel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_ActiveFunnel`
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

  dimension: account_manager__c {
    type: string
    sql: ${TABLE}.Account_Manager__c ;;
  }

  dimension: account_name__c {
    type: string
    sql: ${TABLE}.AccountName__c ;;
  }

  dimension: activation_days__c {
    type: string
    sql: ${TABLE}.Activation_Days__c ;;
  }

  dimension: advantone_product_type__c {
    type: string
    sql: ${TABLE}.Advantone_Product_Type__c ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: bundle__c {
    type: yesno
    sql: ${TABLE}.Bundle__c ;;
  }

  dimension: bundle_price1__c {
    type: string
    sql: ${TABLE}.Bundle_Price1__c ;;
  }

  dimension: bundle_price__c {
    type: string
    sql: ${TABLE}.Bundle_Price__c ;;
  }

  dimension: bundle_qty__c {
    type: string
    sql: ${TABLE}.Bundle_Qty__c ;;
  }

  dimension: bundle_quantity__c {
    type: string
    sql: ${TABLE}.Bundle_Quantity__c ;;
  }

  dimension: bundle_type__c {
    type: string
    sql: ${TABLE}.Bundle_Type__c ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: category__c {
    type: string
    sql: ${TABLE}.Category__c ;;
  }

  dimension: cisco_product__c {
    type: string
    sql: ${TABLE}.Cisco_Product__c ;;
  }

  dimension: close_date {
    type: string
    sql: ${TABLE}.CloseDate ;;
  }

  dimension: cloud_routing__c {
    type: string
    sql: ${TABLE}.Cloud_Routing__c ;;
  }

  dimension: contact__c {
    type: string
    sql: ${TABLE}.Contact__c ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}.ContactId ;;
  }

  dimension: contract_fully_executed__c {
    type: yesno
    sql: ${TABLE}.Contract_Fully_Executed__c ;;
  }

  dimension: contract_status__c {
    type: string
    sql: ${TABLE}.Contract_Status__c ;;
  }

  dimension: cpaa_s_agreement__c {
    type: yesno
    sql: ${TABLE}.CPaaS_Agreement__c ;;
  }

  dimension: cpaa_s_managed_solutions__c {
    type: string
    sql: ${TABLE}.CPaaS_Managed_Solutions__c ;;
  }

  dimension: cpaa_s_managed_solutions_mrc__c {
    type: number
    sql: ${TABLE}.CPaaS_Managed_Solutions_MRC__c ;;
  }

  dimension: cpaa_s_smart_flows_sms_price__c {
    type: string
    sql: ${TABLE}.CPaaS_SmartFlows_SMS_Price__c ;;
  }

  dimension: cpaa_s_smart_flows_voice_price__c {
    type: string
    sql: ${TABLE}.CPaaS_SmartFlows_Voice_Price__c ;;
  }

  dimension: cpaas_mrr__c {
    type: string
    sql: ${TABLE}.CPAAS_MRR__c ;;
  }

  dimension: cpaas_products__c {
    type: string
    sql: ${TABLE}.CPAAS_Products__c ;;
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

  dimension: incremental_mrg__c {
    type: string
    sql: ${TABLE}.Incremental_MRG__c ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.IsClosed ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.IsWon ;;
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

  dimension: last_modified_stage_date_time__c {
    type: string
    sql: ${TABLE}.Last_Modified_Stage_Date_Time__c ;;
  }

  dimension: last_stage_completed__c {
    type: string
    sql: ${TABLE}.Last_Stage_Completed__c ;;
  }

  dimension: lead_created_by__c {
    type: string
    sql: ${TABLE}.Lead_Created_By__c ;;
  }

  dimension: lead_gen_type__c {
    type: string
    sql: ${TABLE}.Lead_Gen_Type__c ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LeadSource ;;
  }

  dimension: monthly_forecast_at_ramp_staging__c {
    type: string
    sql: ${TABLE}.Monthly_Forecast_At_Ramp_Staging__c ;;
  }

  dimension: monthly_mrc_profit__c {
    type: number
    sql: ${TABLE}.Monthly_MRC_Profit__c ;;
  }

  dimension: monthly_mrc_revenue__c {
    type: number
    sql: ${TABLE}.Monthly_MRC_Revenue__c ;;
  }

  dimension: monthly_profit_at_ramp__c {
    type: string
    sql: ${TABLE}.Monthly_Profit_At_Ramp__c ;;
  }

  dimension: monthly_revenue__c {
    type: number
    sql: ${TABLE}.Monthly_Revenue__c ;;
  }

  dimension: monthly_sms_messages__c {
    type: string
    sql: ${TABLE}.Monthly_SMS_Messages__c ;;
  }

  dimension: months_to_ramp__c {
    type: string
    sql: ${TABLE}.Months_To_Ramp__c ;;
  }

  dimension: mrc_price__c {
    type: string
    sql: ${TABLE}.MRC_Price__c ;;
  }

  dimension: mrc_quantity__c {
    type: string
    sql: ${TABLE}.MRC_Quantity__c ;;
  }

  dimension: msa_request_submitted__c {
    type: yesno
    sql: ${TABLE}.MSA_Request_Submitted__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: negotiating_mrg__c {
    type: string
    sql: ${TABLE}.Negotiating_MRG__c ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}.NextStep ;;
  }

  dimension: next_step_due_date__c {
    type: string
    sql: ${TABLE}.Next_Step_Due_Date__c ;;
  }

  dimension: next_steps__c {
    type: string
    sql: ${TABLE}.Next_Steps__c ;;
  }

  dimension: non_recurring_charges_nrc__c {
    type: number
    sql: ${TABLE}.Non_Recurring_Charges_NRC__c ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.Probability ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: sales_force_id__c {
    type: string
    sql: ${TABLE}.SalesForce_ID__c ;;
  }

  dimension: sales_loft1__most_recent_cadence_name__c {
    type: string
    sql: ${TABLE}.SalesLoft1__Most_Recent_Cadence_Name__c ;;
  }

  dimension: sales_loft1__most_recent_last_completed_step__c {
    type: string
    sql: ${TABLE}.SalesLoft1__Most_Recent_Last_Completed_Step__c ;;
  }

  dimension: sales_loft1__primary_contact__c {
    type: string
    sql: ${TABLE}.SalesLoft1__Primary_Contact__c ;;
  }

  dimension: sap_id_2__c {
    type: string
    sql: ${TABLE}.SAP_ID_2__c ;;
  }

  dimension: sap_id__c {
    type: string
    sql: ${TABLE}.SAP_ID__c ;;
  }

  dimension: sdai__activity_index__c {
    type: string
    sql: ${TABLE}.SDAI__activity_index__c ;;
  }

  dimension: sdai__last_touch__c {
    type: string
    sql: ${TABLE}.SDAI__last_touch__c ;;
  }

  dimension: sdai__next_meeting__c {
    type: string
    sql: ${TABLE}.SDAI__next_meeting__c ;;
  }

  dimension: sdai__relationship_index__c {
    type: string
    sql: ${TABLE}.SDAI__relationship_index__c ;;
  }

  dimension: sip_services__c {
    type: yesno
    sql: ${TABLE}.SIP_Services__c ;;
  }

  dimension: sip_services_forecast_at_ramp__c {
    type: number
    sql: ${TABLE}.SIP_Services_Forecast_at_Ramp__c ;;
  }

  dimension: sms__c {
    type: yesno
    sql: ${TABLE}.SMS__c ;;
  }

  dimension: sms_message_revenue__c {
    type: number
    sql: ${TABLE}.SMS_Message_Revenue__c ;;
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

  dimension: term_commitment__c {
    type: string
    sql: ${TABLE}.Term_Commitment__c ;;
  }

  dimension: this_month_forecast__c {
    type: number
    sql: ${TABLE}.This_Month_Forecast__c ;;
  }

  dimension: total_amount__c {
    type: number
    sql: ${TABLE}.Total_Amount__c ;;
  }

  dimension: total_cpaa_s_mrc__c {
    type: number
    sql: ${TABLE}.Total_CPaaS_MRC__c ;;
  }

  dimension: total_estimated_cpaa_s_usage__c {
    type: number
    sql: ${TABLE}.Total_Estimated_CPaaS_Usage__c ;;
  }

  dimension: total_monthly_mou__c {
    type: string
    sql: ${TABLE}.Total_Monthly_MOU__c ;;
  }

  dimension: total_subscription_mrc__c {
    type: number
    sql: ${TABLE}.Total_Subscription_MRC__c ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, name, stage_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_cpaa_s_managed_solutions_mrc__c {
    type: sum
    hidden: yes
    sql: ${cpaa_s_managed_solutions_mrc__c} ;;
  }

  measure: average_cpaa_s_managed_solutions_mrc__c {
    type: average
    hidden: yes
    sql: ${cpaa_s_managed_solutions_mrc__c} ;;
  }

  measure: total_monthly_mrc_profit__c {
    type: sum
    hidden: yes
    sql: ${monthly_mrc_profit__c} ;;
  }

  measure: average_monthly_mrc_profit__c {
    type: average
    hidden: yes
    sql: ${monthly_mrc_profit__c} ;;
  }

  measure: total_monthly_mrc_revenue__c {
    type: sum
    hidden: yes
    sql: ${monthly_mrc_revenue__c} ;;
  }

  measure: average_monthly_mrc_revenue__c {
    type: average
    hidden: yes
    sql: ${monthly_mrc_revenue__c} ;;
  }

  measure: total_monthly_revenue__c {
    type: sum
    hidden: yes
    sql: ${monthly_revenue__c} ;;
  }

  measure: average_monthly_revenue__c {
    type: average
    hidden: yes
    sql: ${monthly_revenue__c} ;;
  }

  measure: total_non_recurring_charges_nrc__c {
    type: sum
    hidden: yes
    sql: ${non_recurring_charges_nrc__c} ;;
  }

  measure: average_non_recurring_charges_nrc__c {
    type: average
    hidden: yes
    sql: ${non_recurring_charges_nrc__c} ;;
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

  measure: total_sip_services_forecast_at_ramp__c {
    type: sum
    hidden: yes
    sql: ${sip_services_forecast_at_ramp__c} ;;
  }

  measure: average_sip_services_forecast_at_ramp__c {
    type: average
    hidden: yes
    sql: ${sip_services_forecast_at_ramp__c} ;;
  }

  measure: total_sms_message_revenue__c {
    type: sum
    hidden: yes
    sql: ${sms_message_revenue__c} ;;
  }

  measure: average_sms_message_revenue__c {
    type: average
    hidden: yes
    sql: ${sms_message_revenue__c} ;;
  }

  measure: total_this_month_forecast__c {
    type: sum
    hidden: yes
    sql: ${this_month_forecast__c} ;;
  }

  measure: average_this_month_forecast__c {
    type: average
    hidden: yes
    sql: ${this_month_forecast__c} ;;
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

  measure: total_total_cpaa_s_mrc__c {
    type: sum
    hidden: yes
    sql: ${total_cpaa_s_mrc__c} ;;
  }

  measure: average_total_cpaa_s_mrc__c {
    type: average
    hidden: yes
    sql: ${total_cpaa_s_mrc__c} ;;
  }

  measure: total_total_estimated_cpaa_s_usage__c {
    type: sum
    hidden: yes
    sql: ${total_estimated_cpaa_s_usage__c} ;;
  }

  measure: average_total_estimated_cpaa_s_usage__c {
    type: average
    hidden: yes
    sql: ${total_estimated_cpaa_s_usage__c} ;;
  }

  measure: total_total_subscription_mrc__c {
    type: sum
    hidden: yes
    sql: ${total_subscription_mrc__c} ;;
  }

  measure: average_total_subscription_mrc__c {
    type: average
    hidden: yes
    sql: ${total_subscription_mrc__c} ;;
  }
}

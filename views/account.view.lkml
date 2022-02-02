# The name of this view in Looker is "Account"
view: account {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.Account`
    ;;
  drill_fields: [i2_account_id__c]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: i2_account_id__c {
    primary_key: yes
    type: string
    sql: ${TABLE}.I2_Account_ID__c ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Development C" in Explore.

  dimension: account_development__c {
    type: string
    sql: ${TABLE}.Account_Development__c ;;
  }

  dimension: account_stage__c {
    type: string
    sql: ${TABLE}.Account_Stage__c ;;
  }

  dimension: activation_month__c {
    type: string
    sql: ${TABLE}.Activation_Month__c ;;
  }

  dimension: annual_revenue {
    type: string
    sql: ${TABLE}.AnnualRevenue ;;
  }

  dimension: annualized_spend__c {
    type: number
    sql: ${TABLE}.Annualized_Spend__c ;;
  }

  dimension: approved_over10_bundles__c {
    type: yesno
    sql: ${TABLE}.Approved_Over10Bundles__c ;;
  }

  dimension: atmosphere_atm_aws03__c {
    type: yesno
    sql: ${TABLE}.Atmosphere_ATM_AWS03__c ;;
  }

  dimension: atmosphere_atm_boca__c {
    type: yesno
    sql: ${TABLE}.Atmosphere_ATM_Boca__c ;;
  }

  dimension: atmosphere_atm_ivr_advanced__c {
    type: yesno
    sql: ${TABLE}.Atmosphere_ATM_IVR_Advanced__c ;;
  }

  dimension: atmosphere_cloud__c {
    type: yesno
    sql: ${TABLE}.Atmosphere_Cloud__c ;;
  }

  dimension: atmosphere_cpaa_s_plan__c {
    type: string
    sql: ${TABLE}.Atmosphere_CPaaS_Plan__c ;;
  }

  dimension: atmosphere_g5__c {
    type: yesno
    sql: ${TABLE}.Atmosphere_G5__c ;;
  }

  dimension: atmosphere_sign_up_email__c {
    type: string
    sql: ${TABLE}.AtmosphereSignUpEmail__c ;;
  }

  dimension: billing_status__c {
    type: string
    sql: ${TABLE}.Billing_Status__c ;;
  }

  dimension: booked_value__c {
    type: string
    sql: ${TABLE}.Booked_Value__c ;;
  }

  dimension: bundled_customer__c {
    type: yesno
    sql: ${TABLE}.Bundled_Customer__c ;;
  }

  dimension: channel_type__c {
    type: string
    sql: ${TABLE}.Channel_Type__c ;;
  }

  dimension: cisco_bundle_mrc_quantity__c {
    type: number
    sql: ${TABLE}.Cisco_Bundle_MRC_Quantity__c ;;
  }

  dimension: combined_index__c {
    type: string
    sql: ${TABLE}.Combined_Index__c ;;
  }

  dimension: contract_status__c {
    type: string
    sql: ${TABLE}.Contract_Status__c ;;
  }

  dimension: cpaa_s_2_0__c {
    type: string
    sql: ${TABLE}.CPaaS_2_0__c ;;
  }

  dimension: cpaa_s_account_source__c {
    type: string
    sql: ${TABLE}.CPaaS_Account_Source__c ;;
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

  dimension: credit_limit_text__c {
    type: string
    sql: ${TABLE}.Credit_Limit_Text__c ;;
  }

  dimension: credit_terms__c {
    type: string
    sql: ${TABLE}.Credit_Terms__c ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
  }

  dimension: customer_health_rating__c {
    type: string
    sql: ${TABLE}.Customer_Health_Rating__c ;;
  }

  dimension: customer_index_display__c {
    type: string
    sql: ${TABLE}.Customer_Index_Display__c ;;
  }

  dimension: customer_success_manager_cpaa_s__c {
    type: string
    sql: ${TABLE}.Customer_Success_Manager_CPaaS__c ;;
  }

  dimension: customer_type__c {
    type: string
    sql: ${TABLE}.Customer_Type__c ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: erate__c {
    type: yesno
    sql: ${TABLE}.ERate__c ;;
  }

  dimension: federal_tax_id__c {
    type: string
    sql: ${TABLE}.Federal_Tax_ID__c ;;
  }

  dimension: get_sapid__c {
    type: yesno
    sql: ${TABLE}.getSAPID__c ;;
  }

  dimension: gong__gong_count__c {
    type: number
    sql: ${TABLE}.Gong__Gong_Count__c ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: last_2_month_invoice_total__c {
    type: number
    sql: ${TABLE}.Last_2_Month_Invoice_Total__c ;;
  }

  dimension: last_activity_date {
    type: string
    sql: ${TABLE}.LastActivityDate ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LastModifiedById ;;
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

  dimension: last_monthly_invoice__c {
    type: string
    sql: ${TABLE}.Last_Monthly_Invoice__c ;;
  }

  dimension: last_monthly_invoice_v2__c {
    type: number
    sql: ${TABLE}.Last_Monthly_Invoice_v2__c ;;
  }

  dimension: last_referenced_date {
    type: string
    sql: ${TABLE}.LastReferencedDate ;;
  }

  dimension: last_viewed_date {
    type: string
    sql: ${TABLE}.LastViewedDate ;;
  }

  dimension: market__c {
    type: string
    sql: ${TABLE}.Market__c ;;
  }

  dimension: master_agent__c {
    type: string
    sql: ${TABLE}.Master_Agent__c ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}.MasterRecordId ;;
  }

  dimension: mou_billing_mtd__c {
    type: number
    sql: ${TABLE}.MOU_Billing_MTD__c ;;
  }

  dimension: mrc_nrc_billing_mtd__c {
    type: number
    sql: ${TABLE}.MRC_NRC_Billing_MTD__c ;;
  }

  dimension: mrg_arg_amount__c {
    type: string
    sql: ${TABLE}.MRG_ARG_Amount__c ;;
  }

  dimension: mrg_effective_date__c {
    type: string
    sql: ${TABLE}.MRG_Effective_Date__c ;;
  }

  dimension: msa_date__c {
    type: string
    sql: ${TABLE}.MSA_Date__c ;;
  }

  dimension: naics_code__c {
    type: string
    sql: ${TABLE}.NAICS_Code__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: number_of_employees {
    type: string
    sql: ${TABLE}.NumberOfEmployees ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.ParentId ;;
  }

  dimension: partner_payment_id__c {
    type: string
    sql: ${TABLE}.Partner_Payment_ID__c ;;
  }

  dimension: partner_sales_rep__c {
    type: string
    sql: ${TABLE}.Partner_Sales_Rep__c ;;
  }

  dimension: partner_sap_id__c {
    type: string
    sql: ${TABLE}.Partner_SAP_ID__c ;;
  }

  dimension: pricing_status__c {
    type: string
    sql: ${TABLE}.Pricing_Status__c ;;
  }

  dimension: ramp_baseline__c {
    type: string
    sql: ${TABLE}.Ramp_Baseline__c ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: sales_force_id__c {
    type: string
    sql: ${TABLE}.SalesForce_ID__c ;;
  }

  dimension: sales_loft1__active_account__c {
    type: number
    sql: ${TABLE}.SalesLoft1__Active_Account__c ;;
  }

  dimension: sales_loft1__sales_loft_domain__c {
    type: string
    sql: ${TABLE}.SalesLoft1__SalesLoft_Domain__c ;;
  }

  dimension: sales_partner__c {
    type: string
    sql: ${TABLE}.Sales_Partner__c ;;
  }

  dimension: sap_id__c {
    type: string
    sql: ${TABLE}.SAP_ID__c ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}.Sic ;;
  }

  dimension: sub_agent__c {
    type: string
    sql: ${TABLE}.Sub_Agent__c ;;
  }

  dimension: sub_agent_sap_id__c {
    type: string
    sql: ${TABLE}.Sub_Agent_SAP_ID__c ;;
  }

  dimension: sub_type__c {
    type: string
    sql: ${TABLE}.Sub_Type__c ;;
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

  dimension: termination__c {
    type: yesno
    sql: ${TABLE}.Termination__c ;;
  }

  dimension: total_billing_mtd__c {
    type: number
    sql: ${TABLE}.Total_Billing_MTD__c ;;
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
    drill_fields: [i2_account_id__c, name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_annualized_spend__c {
    type: sum
    hidden: yes
    sql: ${annualized_spend__c} ;;
  }

  measure: average_annualized_spend__c {
    type: average
    hidden: yes
    sql: ${annualized_spend__c} ;;
  }

  measure: total_cisco_bundle_mrc_quantity__c {
    type: sum
    hidden: yes
    sql: ${cisco_bundle_mrc_quantity__c} ;;
  }

  measure: average_cisco_bundle_mrc_quantity__c {
    type: average
    hidden: yes
    sql: ${cisco_bundle_mrc_quantity__c} ;;
  }

  measure: total_gong__gong_count__c {
    type: sum
    hidden: yes
    sql: ${gong__gong_count__c} ;;
  }

  measure: average_gong__gong_count__c {
    type: average
    hidden: yes
    sql: ${gong__gong_count__c} ;;
  }

  measure: total_last_2_month_invoice_total__c {
    type: sum
    hidden: yes
    sql: ${last_2_month_invoice_total__c} ;;
  }

  measure: average_last_2_month_invoice_total__c {
    type: average
    hidden: yes
    sql: ${last_2_month_invoice_total__c} ;;
  }

  measure: total_last_monthly_invoice_v2__c {
    type: sum
    hidden: yes
    sql: ${last_monthly_invoice_v2__c} ;;
  }

  measure: average_last_monthly_invoice_v2__c {
    type: average
    hidden: yes
    sql: ${last_monthly_invoice_v2__c} ;;
  }

  measure: total_mou_billing_mtd__c {
    type: sum
    hidden: yes
    sql: ${mou_billing_mtd__c} ;;
  }

  measure: average_mou_billing_mtd__c {
    type: average
    hidden: yes
    sql: ${mou_billing_mtd__c} ;;
  }

  measure: total_mrc_nrc_billing_mtd__c {
    type: sum
    hidden: yes
    sql: ${mrc_nrc_billing_mtd__c} ;;
  }

  measure: average_mrc_nrc_billing_mtd__c {
    type: average
    hidden: yes
    sql: ${mrc_nrc_billing_mtd__c} ;;
  }

  measure: total_sales_loft1__active_account__c {
    type: sum
    hidden: yes
    sql: ${sales_loft1__active_account__c} ;;
  }

  measure: average_sales_loft1__active_account__c {
    type: average
    hidden: yes
    sql: ${sales_loft1__active_account__c} ;;
  }

  measure: total_total_billing_mtd__c {
    type: sum
    hidden: yes
    sql: ${total_billing_mtd__c} ;;
  }

  measure: average_total_billing_mtd__c {
    type: average
    hidden: yes
    sql: ${total_billing_mtd__c} ;;
  }
}

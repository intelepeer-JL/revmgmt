# The name of this view in Looker is "V Cpaa S Adds"
view: v_cpaa_s_adds {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.v_CPaaS_Adds`
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
  # This dimension will be called "Account C" in Explore.

  dimension: account__c {
    type: string
    sql: ${TABLE}.Account__c ;;
  }

  dimension: account_filter {
    type: yesno
    sql: ${TABLE}.AccountFilter ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: account_mod {
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
    sql: ${TABLE}.Account_Mod ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.Account_Name ;;
  }

  dimension: account_owner {
    type: string
    sql: ${TABLE}.Account_Owner ;;
  }

  dimension: account_record {
    type: string
    sql: ${TABLE}.Account_Record ;;
  }

  dimension: account_stage__c {
    type: string
    sql: ${TABLE}.Account_Stage__c ;;
  }

  dimension: atmosphere_cpaa_s_plan__c {
    type: string
    sql: ${TABLE}.Atmosphere_CPaaS_Plan__c ;;
  }

  dimension: billing_status__c {
    type: string
    sql: ${TABLE}.Billing_Status__c ;;
  }

  dimension: contract_contractstatus {
    type: string
    sql: ${TABLE}.Contract_contractstatus ;;
  }

  dimension_group: contract_effective {
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
    sql: ${TABLE}.Contract_Effective_Date ;;
  }

  dimension: contract_name {
    type: string
    sql: ${TABLE}.ContractName ;;
  }

  dimension: contract_number {
    type: string
    sql: ${TABLE}.ContractNumber ;;
  }

  dimension: contract_owner {
    type: string
    sql: ${TABLE}.ContractOwner ;;
  }

  dimension: contractrecord {
    type: string
    sql: ${TABLE}.ContractRecord ;;
  }

  dimension: contract_record {
    type: string
    sql: ${TABLE}.Contract_Record ;;
  }

  dimension: contract_status__c {
    type: string
    sql: ${TABLE}.Contract_Status__c ;;
  }

  dimension: cpaa_s_2_0__c {
    type: string
    sql: ${TABLE}.CPaaS_2_0__c ;;
  }

  dimension: cpaa_s__c {
    type: string
    sql: ${TABLE}.CPaa_s__c ;;
  }

  dimension: cpaas__c {
    type: yesno
    sql: ${TABLE}.CPaaS__c ;;
  }

  dimension: cpaa_s_account_source__c {
    type: string
    sql: ${TABLE}.CPaaS_Account_Source__c ;;
  }

  dimension: cpaa_s_contract_pending__c {
    type: yesno
    sql: ${TABLE}.CPaaS_Contract_Pending__c ;;
  }

  dimension_group: cpaa_s_effective {
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
    sql: ${TABLE}.CPaaS_Effective_Date ;;
  }

  dimension: cpaa_s_enabled__c {
    type: string
    sql: ${TABLE}.CPaaS_Enabled__c ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CreatedById ;;
  }

  dimension: customer_type__c {
    type: string
    sql: ${TABLE}.Customer_Type__c ;;
  }

  dimension: enabled_include {
    type: yesno
    sql: ${TABLE}.EnabledInclude ;;
  }

  dimension: filter_contract_effective_date {
    type: yesno
    sql: ${TABLE}.FilterContractEffectiveDate ;;
  }

  dimension: filter_contract_name {
    type: yesno
    sql: ${TABLE}.FilterContractName ;;
  }

  dimension: filter_contract_record {
    type: yesno
    sql: ${TABLE}.FilterContractRecord ;;
  }

  dimension: filter_contract_status {
    type: yesno
    sql: ${TABLE}.FilterContractStatus ;;
  }

  dimension: filter_cpaa_s {
    type: yesno
    sql: ${TABLE}.FilterCPaaS ;;
  }

  dimension: filter_cpaa_seffective_date {
    type: yesno
    sql: ${TABLE}.FilterCPaaSEffectiveDate ;;
  }

  dimension: filter_cpaa_spending {
    type: yesno
    sql: ${TABLE}.Filter_CPaaSPending ;;
  }

  dimension: filter_resale_cpaa_s {
    type: yesno
    sql: ${TABLE}.FilterResaleCpaaS ;;
  }

  dimension: idddd {
    type: string
    sql: ${TABLE}.idddd ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: last_monthly_invoice_v2__c {
    type: number
    sql: ${TABLE}.Last_Monthly_Invoice_v2__c ;;
  }

  dimension: market__c {
    type: string
    sql: ${TABLE}.Market__c ;;
  }

  dimension: new_installed {
    type: string
    sql: ${TABLE}.New_Installed ;;
  }

  dimension: portal_enabled_type {
    type: string
    sql: ${TABLE}.PortalEnabled_Type ;;
  }

  dimension: portal_include {
    type: yesno
    sql: ${TABLE}.PortalInclude ;;
  }

  dimension: pricing_status__c {
    type: string
    sql: ${TABLE}.Pricing_Status__c ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: product_rank {
    type: number
    sql: ${TABLE}.Product_Rank ;;
  }

  dimension: productrank {
    type: number
    sql: ${TABLE}.ProductRank ;;
  }

  dimension: resale_cpaa_s__c {
    type: string
    sql: ${TABLE}.Resale_CPaaS__c ;;
  }

  dimension: resale_sms__c {
    type: string
    sql: ${TABLE}.Resale_SMS__c ;;
  }

  dimension: sales_partner__c {
    type: string
    sql: ${TABLE}.Sales_Partner__c ;;
  }

  dimension: sap_id__c {
    type: string
    sql: ${TABLE}.SAP_ID__c ;;
  }

  dimension: sms_effective_date__c {
    type: string
    sql: ${TABLE}.SMS_Effective_Date__c ;;
  }

  dimension: sms_term_months__c {
    type: string
    sql: ${TABLE}.SMS_Term_months__c ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: sub_agent__c {
    type: string
    sql: ${TABLE}.Sub_Agent__c ;;
  }

  dimension: sub_type__c {
    type: string
    sql: ${TABLE}.Sub_Type__c ;;
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
    drill_fields: [id, account_name, filter_contract_name, contract_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.


}

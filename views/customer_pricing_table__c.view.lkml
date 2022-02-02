# The name of this view in Looker is "Customer Pricing Table C"
view: customer_pricing_table__c {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.Customer_Pricing_Table__c`
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

  dimension: account_id_override__c {
    type: string
    sql: ${TABLE}.Account_ID_Override__c ;;
  }

  dimension: account_salesforce_id__c {
    type: string
    sql: ${TABLE}.Account_Salesforce_ID__c ;;
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

  dimension: customer_price__c {
    type: number
    sql: ${TABLE}.Customer_Price__c ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
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

  dimension_group: last_referenced {
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
    sql: ${TABLE}.LastReferencedDate ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}.LastViewedDate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: pricing_type__c {
    type: string
    sql: ${TABLE}.Pricing_Type__c ;;
  }

  dimension: product__c {
    type: string
    sql: ${TABLE}.Product__c ;;
  }

  dimension: product_description__c {
    type: string
    sql: ${TABLE}.Product_Description__c ;;
  }

  dimension: salesforce_service_id__c {
    type: string
    sql: ${TABLE}.Salesforce_Service_ID__c ;;
  }

  dimension: sap_id_2__c {
    type: string
    sql: ${TABLE}.SAP_ID_2__c ;;
  }

  dimension: sap_id__c {
    type: string
    sql: ${TABLE}.SAP_ID__c ;;
  }

  dimension: sap_name__c {
    type: string
    sql: ${TABLE}.SAP_Name__c ;;
  }

  dimension: standard_price__c {
    type: number
    sql: ${TABLE}.Standard_Price__c ;;
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

  dimension: trial_end_date__c {
    type: string
    sql: ${TABLE}.Trial_End_Date__c ;;
  }

  dimension: trial_period__c {
    type: yesno
    sql: ${TABLE}.Trial_Period__c ;;
  }

  dimension: trial_start_date__c {
    type: string
    sql: ${TABLE}.Trial_Start_Date__c ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_customer_price__c {
    type: sum
    hidden: yes
    sql: ${customer_price__c} ;;
  }

  measure: average_customer_price__c {
    type: average
    hidden: yes
    sql: ${customer_price__c} ;;
  }

  measure: total_standard_price__c {
    type: sum
    hidden: yes
    sql: ${standard_price__c} ;;
  }

  measure: average_standard_price__c {
    type: average
    hidden: yes
    sql: ${standard_price__c} ;;
  }
}

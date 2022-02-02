# The name of this view in Looker is "Sub_Agent"
view: Sub_agent {

  sql_table_name: `test-and-poc.salesops_sf.Account`
    ;;
  drill_fields: [i2_account_id__c]

  dimension: i2_account_id__c {
    primary_key: yes
    type: string
    sql: ${TABLE}.I2_Account_ID__c ;;
  }


  dimension: id {
    type: string
    sql: ${TABLE}.Id ;;
  }



  dimension: Sub_Agent {
    type: string
    sql: ${TABLE}.Name ;;
  }


}

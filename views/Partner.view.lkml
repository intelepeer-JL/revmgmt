# The name of this view in Looker is "Partner"
view: Partner {

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



  dimension: Partner {
    type: string
    sql: ${TABLE}.Name ;;
  }


}

# The name of this view in Looker is "User Role"
view: user_role {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.salesops_sf.UserRole`
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
  # This dimension will be called "Case Access for Account Owner" in Explore.

  dimension: case_access_for_account_owner {
    type: string
    sql: ${TABLE}.CaseAccessForAccountOwner ;;
  }

  dimension: contact_access_for_account_owner {
    type: string
    sql: ${TABLE}.ContactAccessForAccountOwner ;;
  }

  dimension: developer_name {
    type: string
    sql: ${TABLE}.DeveloperName ;;
  }

  dimension: forecast_user_id {
    type: string
    sql: ${TABLE}.ForecastUserId ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LastModifiedById ;;
  }

  dimension: last_modified_date {
    type: string
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension: may_forecast_manager_share {
    type: string
    sql: ${TABLE}.MayForecastManagerShare ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: opportunity_access_for_account_owner {
    type: string
    sql: ${TABLE}.OpportunityAccessForAccountOwner ;;
  }

  dimension: parent_role_id {
    type: string
    sql: ${TABLE}.ParentRoleId ;;
  }

  dimension: portal_account_id {
    type: string
    sql: ${TABLE}.PortalAccountId ;;
  }

  dimension: portal_account_owner_id {
    type: string
    sql: ${TABLE}.PortalAccountOwnerId ;;
  }

  dimension: portal_role {
    type: string
    sql: ${TABLE}.PortalRole ;;
  }

  dimension: portal_type {
    type: string
    sql: ${TABLE}.PortalType ;;
  }

  dimension: rollup_description {
    type: string
    sql: ${TABLE}.RollupDescription ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}.SystemModstamp ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, name, developer_name, user.count, v_booking.count]
  }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.

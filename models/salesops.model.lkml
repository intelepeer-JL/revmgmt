# Define the database connection to be used for this model.
connection: "sales_ops"
include: "/views/*.view.lkml"
include: "/**/*.view.lkml"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: salesops_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}




persist_with: salesops_default_datagroup


explore: user {
}
explore: opp_velocity {
  join: user {
  relationship: many_to_one
  sql_on: ${opp_velocity.owner_id}=${user.id} ;;
  }
  join: role_hierarchy {
    relationship: many_to_one
    sql_on: ${user.user_role_id}=${role_hierarchy.id} ;;
  }
}
explore: customer_pricing_table__c {}
# <<<<<<< HEAD
explore: stage_sequence_sfdc {}

# =======
explore: v_current_funnel {}
# >>>>>>> branch 'master' of git@github.com:intelepeer-JL/salesops.git
explore: v_booking {}
explore: v_wo_w_analysis {}
explore: v_cpaa_s_adds {}
explore: v_opp_vel {
  join: user {
    relationship: many_to_one
    sql_on: ${v_opp_vel.owner_id}=${user.id} ;;
  }
  join: role_hierarchy {
    relationship: many_to_one
    sql_on: ${user.user_role_id}=${role_hierarchy.id} ;;
  }

}
explore: opportunityhistory {}
explore: opportunity_load {}
explore: stage_group {}


explore: Funnel_Analytics{
  view_name: opportunity_load
  join: user {
    relationship: many_to_one
    sql_on: ${opportunity_load.owner_id}= ${user.id} ;;
  }
  join: stage_group {
    relationship: many_to_one
    sql_on: ${opportunity_load.stage_name}=${stage_group.stage_name} ;;

  }
  join: account {
    relationship: many_to_one
    sql_on:
    ${opportunity_load.account_id}=${account.id};;

  }
  join: Partner {
    relationship: many_to_one
    sql_on: ${account.sales_partner__c}=${Partner.id} ;;

  }
  join: Sub_agent {
    relationship: many_to_one
    sql_on: ${account.sub_agent__c}=${Sub_agent.id} ;;
  }

  join: role_hierarchy {
    relationship: many_to_one
    sql_on: ${role_hierarchy.id}=${user.user_role_id} ;;
  }

}



















# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Salesops"

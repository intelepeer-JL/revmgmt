connection: "sales_ops"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/**/*.view.lkml"



explore: v_booking_v2s3 {
  cancel_grouping_fields:
  [v_booking_v2s3.term,
    v_booking_v2s3.account_name,
    v_booking_v2s3.Dept,
    v_booking_v2s3.OppOwner,
    v_booking_v2s3.cpaa_s_opp_type,
    v_booking_v2s3.opp_type,
    v_booking_v2s3.sales_partner,
    v_booking_v2s3.sub_agent,
    v_booking_v2s3.close_date,
    v_booking_v2s3.stage_group,
    v_booking_v2s3.mrg_amount,
    v_booking_v2s3.mrg_incremental,
    v_booking_v2s3.product,
    v_booking_v2s3.cpaas_products__c,
    v_booking_v2s3.mrpf,
    v_booking_v2s3.mrr,
    v_booking_v2s3.arr,
    v_booking_v2s3.TCV,
    v_booking_v2s3.CCV
    ]
}
explore: v_booking_s5 {}
explore: v_booking_v2s5 {}
explore: v_lock_stretch {}
explore: v_booking_v2s6 {}
explore: v_commit_probable {}
explore: v_committed_probable_summary {}

# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

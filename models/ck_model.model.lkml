connection: "bi_ck_connection"



include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/explores/order_items.explore.lkml"
include: "/datagroups.lkml"
include: "/value_formats.lkml"
include: "/explores/users.explore.lkml"

explore: transaction_detail {
  join: transaction_detail__items {
    view_label: "Transaction Detail: Items"
    sql: LEFT JOIN UNNEST(${transaction_detail.items}) as transaction_detail__items ;;
    relationship: one_to_many
  }
}

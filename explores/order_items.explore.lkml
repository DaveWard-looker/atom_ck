include: "//atom_fashion_hub_project/Explores/order_items.explore.lkml"

include: "/views/transaction_detail.view.lkml"

explore: +order_items {
  join: transaction_detail {
    relationship: many_to_one
    sql_on: ${order_items.order_id} = ${transaction_detail.order_id} ;;
  }
}

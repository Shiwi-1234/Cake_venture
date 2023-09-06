class AddColumnToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :user, foreign_key: true
    add_reference :menu_items , :bakery, foreign_key: true
    add_reference :order_items, :order, foreign_key: true
    add_reference :order_items, :menu_item, foreign_key: true

  end
end

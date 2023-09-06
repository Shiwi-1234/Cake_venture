class AddColumnToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :sub_category_id, :integer
  end
end

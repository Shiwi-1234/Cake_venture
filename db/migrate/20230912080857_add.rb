class Add < ActiveRecord::Migration[7.0]
  def change
    def up
      drop_table :admin_users
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end

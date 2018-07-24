class CreateUserGroups < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :groups, table_name: :user_groups
  end
end

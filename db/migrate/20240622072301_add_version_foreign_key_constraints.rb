class AddVersionForeignKeyConstraints < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :pool_versions, :users, column: :updater_id, validate: false, deferrable: :deferred
    add_foreign_key :pool_versions, :pools, column: :pool_id, validate: false, deferrable: :deferred

    add_foreign_key :post_versions, :users, column: :updater_id, validate: false, deferrable: :deferred
    add_foreign_key :post_versions, :posts, column: :post_id, validate: false, deferrable: :deferred
    add_foreign_key :post_versions, :posts, column: :parent_id, validate: false, deferrable: :deferred
  end
end

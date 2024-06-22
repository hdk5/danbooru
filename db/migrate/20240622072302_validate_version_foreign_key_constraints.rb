class ValidateVersionForeignKeyConstraints < ActiveRecord::Migration[7.1]
  def change
    validate_foreign_key :pool_versions, :users, column: :updater_id
    validate_foreign_key :pool_versions, :pools, column: :pool_id

    validate_foreign_key :post_versions, :users, column: :updater_id
    validate_foreign_key :post_versions, :posts, column: :post_id
    validate_foreign_key :post_versions, :posts, column: :parent_id
  end
end

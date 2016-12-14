class CreateErpProductsProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :erp_products_products do |t|
      t.string :name
      t.string :product_type
      t.string :barcode
      t.decimal :sale_price
      t.decimal :cost
      t.decimal :weight
      t.decimal :volume
      t.decimal :customer_lead_time
      t.text :internal_reference
      t.text :quotations_description
      t.text :pickings_description
      t.boolean :can_be_sold
      t.boolean :can_be_purchased
      t.boolean :archived, default: false
      t.references :category, index: true, references: :erp_products_categories
      t.references :creator, index: true, references: :erp_users

      t.timestamps
    end
  end
end

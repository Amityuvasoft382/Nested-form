class CreateProductVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variants do |t|
      t.string :color
      t.string :weight
      t.string :length
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class AddSalePriceToSpreeVariants < SpreeExtension::Migration[5.2]
  def change
    add_column :spree_variants, :sale_price, :decimal
  end
end

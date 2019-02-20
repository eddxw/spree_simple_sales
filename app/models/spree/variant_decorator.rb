Spree::Variant.class_eval do
  alias_method :orig_price_in, :price_in
  def price_in(currency)
    return orig_price_in(currency) if sale_price.blank?

    Spree::Price.new(variant_id: id, amount: sale_price, currency: currency)
  end
end

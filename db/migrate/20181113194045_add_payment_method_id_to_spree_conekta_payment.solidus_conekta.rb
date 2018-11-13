# This migration comes from solidus_conekta (originally 20140509145837)
class AddPaymentMethodIdToSpreeConektaPayment < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_conekta_payments, :payment_method_id, :integer
    add_index :spree_conekta_payments, :payment_method_id
  end
end

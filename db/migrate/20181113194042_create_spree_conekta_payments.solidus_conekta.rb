# This migration comes from solidus_conekta (originally 20130904161251)
class CreateSpreeConektaPayments < SolidusSupport::Migration[4.2]
  def change
    create_table :spree_conekta_payments do |t|
      t.string :type

      t.timestamps
    end
  end
end

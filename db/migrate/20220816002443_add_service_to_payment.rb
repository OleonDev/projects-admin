class AddServiceToPayment < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :service, null: false, foreign_key: true
  end
end

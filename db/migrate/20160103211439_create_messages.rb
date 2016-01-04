class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :reason
      t.string :company_name
      t.string :website
      t.string :description
      t.string :best_time

      t.timestamps
    end
  end
end

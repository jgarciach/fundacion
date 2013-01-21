class CreateSignees < ActiveRecord::Migration
  def change
    create_table :signees do |t|
      t.string :email

      t.timestamps
    end
  end
end

class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :poll_description
      t.integer :views

      t.timestamps
    end
  end
end

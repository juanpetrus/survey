class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :option_description
      t.integer :qty
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end

class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.integer :user_id
      t.integer :dog_id

      t.timestamps
    end
  end
end

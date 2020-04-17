class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :dob
      t.text "img", default: "https://best4pets.org/wp-content/uploads/2019/04/pick-me-shelter.jpg"

      t.timestamps
    end
  end
end


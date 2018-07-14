class CreatePowerstats < ActiveRecord::Migration[5.2]
  def change
    create_table :powerstats do |t|
      t.string :location
      t.string :address

      t.timestamps
    end
  end
end

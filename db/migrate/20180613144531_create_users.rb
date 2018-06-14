class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :artistName
      t.string :songTitle
      t.string :url
      t.string :videoid

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :artistName
      t.string :songTitle
      t.string :url
      t.string :videoId
      t.integer :sortId

      t.timestamps
    end
  end
end

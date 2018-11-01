class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :photo_url
      t.date :date
      t.string :ticket_link
      t.string :about
      t.timestamp :created_at
      t.timestamp :updated_at
      t.time :time
      t.string :location
      t.string :address
      t.boolean :is_private

      t.timestamps
    end
  end
end

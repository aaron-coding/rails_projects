class CreateShortenedUrls < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null: false
      t.string :user_id, null: false
      
      t.timestamps
    end
    
    add_index :shortened_urls, [:short_url, :user_id], unique: true
    add_index :shortened_urls, [:long_url, :short_url]
  end
end

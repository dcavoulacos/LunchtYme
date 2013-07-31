class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :netid
      t.integer :class_year
      t.string :res_col
      t.string :email
      t.string :phone_number
      t.string :gender
      t.text :friends
      t.text :likes
      t.text :mutual_friends
      t.text :object_me
      t.integer :facebook_id
      t.string :provider
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.datetime :last_pull_from_facebook
      t.string :image_url

      t.timestamps
    end
  end
end

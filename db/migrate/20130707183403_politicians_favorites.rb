class PoliticiansFavorites < ActiveRecord::Migration
  def up
    create_table :politicians, force: true do |t|
    t.string  :firstname
    t.string  :lastname
    t.string  :party
    t.string  :state
    t.string  :twitter_id
    t.boolean :in_office
    t.string :votesmart_id
    end
  end

  def down
    drop_table :politicians
  end
end

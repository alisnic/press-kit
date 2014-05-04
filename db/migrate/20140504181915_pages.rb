class Pages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.text :html
      t.integer :perma_id
    end
  end

  def self.down
    drop_table :pages
  end
end

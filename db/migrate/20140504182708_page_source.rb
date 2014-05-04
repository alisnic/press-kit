class PageSource < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.string :source
    end
  end

  def self.down
    remove_column :pages, :source
  end
end

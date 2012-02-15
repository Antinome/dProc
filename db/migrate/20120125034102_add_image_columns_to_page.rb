class AddImageColumnsToPage < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.has_attached_file :page_image
    end
  end

  def self.down
    drop_attached_file :pages, :page_image
  end
end
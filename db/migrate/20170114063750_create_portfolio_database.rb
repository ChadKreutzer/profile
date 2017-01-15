class CreatePortfolioDatabase < ActiveRecord::Migration[5.0]
  def up
    create_table :projects do |t|
      t.string :title
      t.string :image_link
      t.string :url
      t.string :description
    end
  end
  def down
    drop_table :projects
  end
end

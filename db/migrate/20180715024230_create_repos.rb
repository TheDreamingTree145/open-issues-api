class CreateRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :repos do |t|
      t.string :name
      t.string :open_issues
      t.timestamps
    end
  end
end

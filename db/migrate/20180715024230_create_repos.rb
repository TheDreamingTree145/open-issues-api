class CreateRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :repos do |t|
      t.name :string
      t.open_issues :string
      t.timestamps
    end
  end
end

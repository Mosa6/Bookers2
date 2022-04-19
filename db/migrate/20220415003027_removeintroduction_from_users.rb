class RemoveintroductionFromUsers < ActiveRecord::Migration[6.1]
  def change
      create_table :users do |t|
      t.string :name
      t.text :introduction
    end
  end
end

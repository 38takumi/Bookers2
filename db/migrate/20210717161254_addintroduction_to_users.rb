class AddintroductionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column  :users, :introduction, :text
  end
end

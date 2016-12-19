class AddLearnLangToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :learn_lang, :string
  end
end

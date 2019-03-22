class ChangeContentToBeTextInPages < ActiveRecord::Migration[5.2]
  def change
    change_column :pages, :content, :text
  end
end

class RemoveBlobFromJournal < ActiveRecord::Migration[6.0]
  def change

    remove_column :journals, :blob, :string
  end
end
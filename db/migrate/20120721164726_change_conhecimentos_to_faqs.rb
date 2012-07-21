class ChangeConhecimentosToFaqs < ActiveRecord::Migration
  def up
    rename_table :conhecimentos, :faqs
  end

  def down
    rename_table :faqs, :conhecimentos
  end
end
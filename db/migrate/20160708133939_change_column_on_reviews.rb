class ChangeColumnOnReviews < ActiveRecord::Migration
  def change
    change_column :reviews, :content, :text
  end
end

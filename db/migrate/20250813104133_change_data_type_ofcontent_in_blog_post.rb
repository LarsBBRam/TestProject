class ChangeDataTypeOfcontentInBlogPost < ActiveRecord::Migration[8.0]
  def change
    change_column :blog_posts, :content, :text
  end
end

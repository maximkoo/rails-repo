class CreateJoinTableAuthorBook < ActiveRecord::Migration
  def change
    create_join_table :Authors, :Books do |t|
       t.index [:author_id, :book_id]
      # t.index [:book_id, :author_id]
    end
  end
end

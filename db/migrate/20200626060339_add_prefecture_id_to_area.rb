class AddPrefectureIdToArea < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :prefecture_id, :integer
  end
end

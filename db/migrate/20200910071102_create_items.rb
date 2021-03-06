class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references  :user            ,foreign_key: true
      t.string      :name            ,null: false
      t.string      :url
      t.text        :text            ,null: false
      t.integer     :category_id     ,null: false
      t.integer     :price           ,null: false
      t.integer     :point_id        ,null: false
      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
		  t.integer :eve_number, null: false		#イベントNo.
			t.string :eve_name, null: false				#イベント名
			t.string :eve_title										#イベント記事タイトル
			t.text :eve_note											#イベント記事本文
			t.string :eve_address									#場所
			t.date :eve_date								#期間
			t.time :eve_time								#時間
			t.string :eve_url									#URL
			t.string :eve_phone								#電話
			t.string :eve_mail								#メール
      t.timestamps
    end
  end
end

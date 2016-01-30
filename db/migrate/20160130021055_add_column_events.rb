class AddColumnEvents < ActiveRecord::Migration
  def change
		add_column :events, :ranking, :integer	#ランキング用数値
		add_column :events, :pickup, :integer		#ピックアップ 0=no 1以上=yes
		add_column :events, :division, :integer	#スポットorイベント 0=スポット 1以上=イベント
  end
end

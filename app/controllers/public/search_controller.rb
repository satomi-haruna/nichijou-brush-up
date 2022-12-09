# タグ機能導入の際に使用するかも？
# class Public::SearchController < ApplicationController
#   before_action :authenticate_user!

# # # 検索結果、カラータグ　whereで限定して表示する
#   def search_events
#     # @event = Event.find(params[:id])
#     @events = current_user.events.where(color_id: :colorless)
#     # @events = current_user.events.where(color_id: params[:color_id])
#     # redirect_to search_events
#   # 部分テンプレート・Javascriptで
#   # seachフォームを作成→　color_id　で絞り込み　↑で制限
#   end

# end
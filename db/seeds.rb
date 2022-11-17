# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者ログイン情報
# 本番環境にデータがあればスキップ、なければデータを追加
admin_data = Admin.find_by(email: ENV['ADMIN_EMAIL'])
if admin_data.nil?
  Admin.create!(
    email: ENV['ADMIN_EMAIL'],
    password: ENV['ADMIN_PASSWORD'],
  )
end

# ユーザーのテストデータ
users = [
  {
    first_name: '信乃',
    last_name: '犬塚',
    first_name_kana: 'シノ',
    last_name_kana: 'イヌヅカ',
    nickname: 'こう',
    email: 'kou_inuduka@eight.com',
    password: 'inuduka'
  },
  {
    first_name: '荘助',
    last_name: '犬川',
    first_name_kana: 'ソウスケ',
    last_name_kana: 'イヌカワ',
    nickname: 'ぎー',
    email: 'gi_inukawa@eight.com',
    password: 'inukawa'
  },
  {
    first_name: '道節',
    last_name: '犬山',
    first_name_kana: 'ドウセツ',
    last_name_kana: 'イヌヤマ',
    nickname: 'ちゅう',
    email: 'tyu_inuyama@eight.com',
    password: 'inuyama'
  },
  {
    first_name: '現八',
    last_name: '犬飼',
    first_name_kana: 'ゲンパチ',
    last_name_kana: 'イヌカイ',
    nickname: 'しん',
    email: 'shin_inukai@eight.com',
    password: 'inukai'
  },
  {
    first_name: '小文吾',
    last_name: '犬田',
    first_name_kana: 'コブンゴ',
    last_name_kana: 'イヌタ',
    nickname: 'てい',
    email: 'tei_inuta@eight.com',
    password: 'inutainuta'
  },
  {
    first_name: '親兵衛',
    last_name: '犬江',
    first_name_kana: 'シンベエ',
    last_name_kana: 'イヌエ',
    nickname: 'じん',
    email: 'jin_inue@eight.com',
    password: 'inueinue'
  },
  {
    first_name: '毛野',
    last_name: '犬坂',
    first_name_kana: 'ケノ',
    last_name_kana: 'イヌサカ',
    nickname: 'ちー',
    email: 'chi_inusaka@eight.com',
    password: 'inusaka'
  },
  {
    first_name: '大角',
    last_name: '犬村',
    first_name_kana: 'ダイカク',
    last_name_kana: 'イヌムラ',
    nickname: 'れい',
    email: 'rei_inumura@eight.com',
    password: 'inumura'
  },
  {
    first_name: '八犬伝',
    last_name: '里見',
    first_name_kana: 'ハッケンデン',
    last_name_kana: 'サトミ',
    nickname: '南総里見八犬伝',
    email: 'satomihakkenden@eight.com',
    password: 'hakkenden'
  },
  {
    first_name: '日誌',
    last_name: '日常',
    first_name_kana: 'ニッシ',
    last_name_kana: 'ニチジョウ',
    nickname: 'テストスケジュール',
    email: 'test_schedule@test.com',
    password: 'testschedule'
  }
]

# 本番環境にデータがあればスキップ、なければデータを追加
users.each do |user|
  # deviseの場合、ユーザーを一度メールアドレスで検索
  user_email = User.find_by(email: user[:email])
  # 該当しなければcreate
  if user_email.nil?
    User.create(
      first_name: user[:first_name],
      last_name: user[:last_name],
      first_name_kana: user[:first_name_kana],
      last_name_kana: user[:last_name_kana],
      nickname: user[:nickname],
      email: user[:email],
      password: user[:password]
    )
  end
end

# brush up で利用していきましょう
# # スケジュールのテストデータ
# events = [
#   {
#     # user_id: 3,
#     plan: "ランニング",
#     plan_datetime: DateTime.new(2022,11,05,11,00,00),
#     memo: "3kmランニング",
#     place: "静岡市",
#     color_id: 1
#   }
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2022-11-19 11:00:00),
  #   memo: "5kmランニング",
  #   place: "浜松市",
  #   color_id: 1
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2022-11-26 11:00:00),
  #   memo: "6kmランニング",
  #   place: "掛川市",
  #   color_id: 1
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2022-12-10 11:00:00),
  #   memo: "6kmランニング",
  #   place: "沼津市",
  #   color_id: 2
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2022-12-24 11:00:00),
  #   memo: "7kmランニング",
  #   place: "富士宮市",
  #   color_id: 2
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2022-12-31 11:00:00),
  #   memo: "7kmランニング",
  #   place: "伊豆市",
  #   color_id: 2
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2023-01-14 11:00:00),
  #   memo: "7kmランニング",
  #   place: "裾野市",
  #   color_id: 3
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2023-01-28 11:00:00),
  #   memo: "8kmランニング",
  #   place: "島田市",
  #   color_id: 3
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2023-02-11 11:00:00),
  #   memo: "8kmランニング",
  #   place: "富士市",
  #   color_id: 4
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2023-02-25 11:00:00),
  #   memo: "8kmランニング",
  #   place: "磐田市",
  #   color_id: 4
  # },
  # {
  #   user_id: 3,
  #   plan: "ランニング",
  #   plan_datetime: DateTime.new(2023-03-11 11:00:00),
  #   memo: "9kmランニング",
  #   place: "御殿場市",
  #   color_id: 5
#   # }
# ]

# # 本番環境にデータがあればスキップ、なければデータを追加
# events.each do |event|
#   user_data = User.find_by(user_id: event[:user_id])
#   unless user_data.nil?
#     event_data = Event.find_by(user_id: user_data.id, plan_datetime: event[:plan_datetime])
#     if event_data.nil?
#       event = Event.create(
#         # user_id: event[:user_id],
#         plan: event[:plan],
#         plan_datetime: event[:plan_datetime],
#         memo: event[:memo],
#         place: event[:place],
#         color_id: event[:color_id]
#       )
#     end
#   end
# end


# posts = [
#     {email: 'satomihakkenden@eight.com', title: '', body: '', datetime: ''},
#     {email: 'chi_inusaka@eight.com', title: '', body: '', datetime: ''},
#   ]

# posts.each do |post|
#   user_data = User.find_by(email: post[:email])
#   unless user_data.nil?
#     post_data = Post.find_by(user_id: user_data.id, datetime: post[:datetime])
#     if post_data.nil?
#       event = Event.create(~~~)
#       Diary.create(event_id: event.id, ~~~)
#     end
#   end
# end
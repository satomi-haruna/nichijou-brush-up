class Diary < ApplicationRecord
  belongs_to :event
  has_one_attached :image

  # 日記入力項目のバリデーション
  validates :event_id, presence: true
  # simpleまたはdetail どちらか一方は少なくとも入力（両方も可）
  validates :simple_diary, presence: true, unless: :detail?
  validates :detail, presence: true, unless: :simple_diary?

end

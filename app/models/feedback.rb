class Feedback < ApplicationRecord
  validates :content, :kind, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  enum kind: { 'BUG反馈': 1, '意见与建议': 2 }
  enum state: { 'unhandled': 0, 'handled': 1 }
end

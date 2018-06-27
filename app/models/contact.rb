class Contact < ApplicationRecord
  validates :name, length: { in: 1..140}  #バリデーションの設定
  validates :email, length: { in: 1..140}  #バリデーションの設定
  validates :content, length: { in: 1..140}  #バリデーションの設定
end

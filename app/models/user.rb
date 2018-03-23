class User < ApplicationRecord
	has_many :friends, :foreign_key => :user1_id
	has_many :reverse_friends, class_name: :Friend, foreign_key: :user2_id
	has_many :users, :through => :friends, :source => :user2
end

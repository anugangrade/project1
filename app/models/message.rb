class Message < ActiveRecord::Base
	belongs_to :user
	belongs_to :conversation
	has_many :attachments

	delegate :name, :username, :location, :created_at, :avatar, :active, :to => :user, :prefix => true

end

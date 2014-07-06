class Micropost < ActiveRecord::Base

	mount_uploader :image, AvatarUploader
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
	validates :content, presence: true, length: { maximum: 300 }

end

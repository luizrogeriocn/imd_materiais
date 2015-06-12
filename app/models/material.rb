class Material < ActiveRecord::Base 
  belongs_to :lesson

  mount_uploader :file, MaterialFileUploader

  has_many :comments, as: :commentable, dependent: :destroy

  enum status: { unfinished: 0, finished: 1 }

  accepts_nested_attributes_for :comments
end

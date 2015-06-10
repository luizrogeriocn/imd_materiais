class Material < ActiveRecord::Base 
  belongs_to :lesson

  mount_uploader :file, MaterialFileUploader

  enum status: { unfinished: 0, finished: 1 }
end

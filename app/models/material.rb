class Material < ActiveRecord::Base 
  belongs_to :lesson

  mount_uploader :file, MaterialFileUploader
end

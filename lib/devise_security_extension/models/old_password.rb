class OldPassword
  include Mongoid::Document
  include Mongoid::Timestamps

  field :encrypted_password, :type => String
  field :password_salt, :type => String
  field :password_archivable_type, :type => String
  field :password_archivable_id, :type => String

  validates :encrypted_password, :password_archivable_type, :password_archivable_id, :presence => true
  attr_accessible :encrypted_password, :password_salt

  belongs_to :password_archivable, :polymorphic => true
  attr_accessible :encrypted_password, :password_salt

  index({:created_at => 1}, {:background => true})
end

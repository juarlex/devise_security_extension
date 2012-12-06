class SecurityQuestion
  include Mongoid::Document
  include Mongoid::Timestamps

  field :locale, :type => String
  field :name, :type => String

  validates :locale, :name, :presence => true

  attr_accessible :locale, :name

  index({:created_at => 1}, {:background => true})
end

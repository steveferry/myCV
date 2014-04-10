class Content
  include ActiveModel::Serialization
  attr_accessor :school, :twitter_handle
  
  def initialize(attributes = {})
    @school = attributes[:school]
    @work = attributes[:work]
  end

  def persisted?
    false
  end
end
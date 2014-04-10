class Content
  include ActiveModel::Serialization
  attr_accessor :school, :work
  
  def initialize(attributes = {})
    @school = attributes[:school]
    @work = attributes[:work]
    @school ||=[]
    @work ||=[]
  end

  def persisted?
    false
  end
end
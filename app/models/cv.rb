class Cv < ActiveRecord::Base
  serialize :content
  before_save :parse_content
  
  def content
    unless self.json_content.nil? then
      content_hash = ActiveSupport::JSON.decode(self.json_content).symbolize_keys.clone
      return Content.new(content_hash)
    else
      return nil
    end
  end

  private

  def parse_content
    unless self.json_content.is_a?(String) then
      self.json_content=self.json_content.to_json
    end
    true
  end
end

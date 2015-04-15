
class Post < ActiveRecord::Base
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  include ActiveModel::Validations
  validates :title, presence: true

  def persisted?
    false
  end

  attr_accessor :blog, :title, :body, :pubdate, :image_url

  def initialize(attrs={})
    attrs.each { |k,v| send("#{k}=", v) }
  end

  def publish(clock = DateTime)
    return false unless valid?
    self.pubdate = clock.now
    blog.add_entry(self)
  end

  def picture?
    image_url.present?
  end
end

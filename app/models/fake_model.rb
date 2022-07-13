#
# Create a fake model:
# http://railscasts.com/episodes/219-active-model
#
# This is just a fake model so we can use with our form example
#
class FakeModel
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  # attr_accessor :name, :email, :content
  attr_accessor :field1,
                :field2,
                :field3,
                :field4,
                :field5,
                :field6,
                :field7,
                :field8,
                :field9,
                :field10,
                :field11,
                :field12,
                :field13,
                :field14,
                :field15,
                :field16,
                :field17,
                :field18,
                :field19

  # validates_presence_of :name
  # validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  # validates_length_of :content, :maximum => 500
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
end
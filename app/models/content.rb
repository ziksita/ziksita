class Content
  include Mongoid::Document
  include Mongoid::Slug
  include Mongoid::Timestamps

  field :title,           type: String
  slug  :title, :history => true
  field :description,     type: String

end

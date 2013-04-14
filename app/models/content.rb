class Content
  include Mongoid::Document
  include Mongoid::Slug
  include Mongoid::Timestamps
  include Mongoid::TaggableWithContext

  field :title,           type: String
  slug  :title, :history => true
  field :description,     type: String
  taggable

end

class Content < ActiveRecord::Base
  has_translated_fields [ :title, :body ]
end

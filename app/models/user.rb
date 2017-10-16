class User < ActiveRecord::Base
  has_many :views, {class_name: :LocationView}
end

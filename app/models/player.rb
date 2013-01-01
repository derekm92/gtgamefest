class Player < ActiveRecord::Base
  attr_accessible :username, :paid, :email
end

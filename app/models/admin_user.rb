class AdminUser < ActiveRecord::Base
  attr_accessible :last_name, :first_name, :username
  # set_table_name("admin_users")
  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits
end

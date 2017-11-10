class User < ActiveRecord::Base
  #attr_accessible :title, :content
#  validates :account, :context, :presence => true
  validates :account, :length => { :minimum =>1}
  validates :account, :uniqueness => { :message =>'Already taken'}
  validates :name, :length => { :minimum =>2}
  validates :name, :uniqueness => { :message =>'Already taken'}
end

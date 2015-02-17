class Record < ActiveRecord::Base
  belongs_to :user

  #Needed so that we can tell Rails 
  #we are changing values in for the
  #records
  include ActiveModel::Dirty

end

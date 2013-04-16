class Diary < ActiveRecord::Base
  attr_accessible :body, :title

 def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
 end
end

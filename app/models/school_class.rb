class SchoolClass < ActiveRecord::Base
   def sentence
    self.title + " / " + self.room_number.to_s
   end
end
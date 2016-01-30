class Event < ActiveRecord::Base
  class << self
	  def search(query)
		  rel = order("number")
			if query.present?
			  rel = rel.where("name LIKE ?", "%#{query}%")
			end
			rel
		end
		
		def getTags(query)
			@tags = Array.new
			1.upto(5) do |i|
				tag = eval("query.tag#{i}")
				if tag.nil?
					break
				else
					@tags.push(tag)
				end
			end
			@tags
		end
		
		def getRelateds(query)
			rel = order("tag1")
			rel = rel.where("tag1 = ?", "#{query[0]}")
			rel
		end
		
	end
end

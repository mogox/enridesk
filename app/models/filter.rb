require 'desk'

class Filter
  def self.all
    data = Desk.filters
    data["raw"]["_embedded"]["entries"]
  end
end

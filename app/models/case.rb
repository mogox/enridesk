require 'desk'

class Case
  def self.by_filter(filter_id)
    data = Desk.filter_cases(filter_id)
    data["raw"]["_embedded"]["entries"]
  end
end

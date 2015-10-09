require 'desk'

class Label
  def self.all
    data = Desk.labels
    data["raw"]["_embedded"]["entries"]
  end
end

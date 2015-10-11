require 'desk'

class Case
  def self.by_filter(filter_id)
    data = Desk.filter_cases(filter_id)
    data["raw"]["_embedded"]["entries"]
  end

  def self.find(id)
    data = Desk.case(id)
    data["raw"]
  end

  def self.add_label(id, name)
    data = Desk.update_case(id, labels: [name])
    data
  end
end

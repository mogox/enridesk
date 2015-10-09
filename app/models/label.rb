require 'desk'

class Label
  def self.all
    data = Desk.labels
    data["raw"]["_embedded"]["entries"]
  end

  def self.create(name, description)
    data = Desk.create_label(
      :name => name,
      :description => description,
      :types => [ "case", "macro" ],
    )
    data
  end
end

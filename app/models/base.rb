class Base
  def self.desk_api
    Desk.new.connection
  end
end

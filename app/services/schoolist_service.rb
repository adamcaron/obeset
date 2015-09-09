class SchoolistService
  attr_reader :connection

  def initialize
    @connection =Hurley::Client.new("http://localhost:3000/v1")
  end

  def schools
    parse(connection.get("schools"))
    # trying to send a GET request to http://localhost:3000/v1/schools ... the schools endpoint
    # then parsing the JSON
  end

  def school(id)
    parse(connection.get("schools/#{id}"))
  end

  def counties
    parse(connection.get("counties"))
  end

  def county(id)
    parse(connection.get("counties/#{id}"))
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end
end
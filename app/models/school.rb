class School < OpenStruct
  def self.service
    @service ||= SchoolistService.new
  end

  def self.all
    service.schools.map { |school| School.new(school) } # return all the schools
  end

  def self.find(id)
    School.new(service.school(id))
  end

  # attr_accessor :id,
  #               :uid,
  #               :overweight_percentage,
  #               :obese_percentage,
  #               :county_id

  # def initialize(data)
  #   @id                    = data["id"]
  #   @uid                   = data["uid"]
  #   @overweight_percentage =  data["overweight_percentage"]
  #   @obese_percentage      = data["obese_percentage"]
  #   @county_id             = data["county_id"]
  # end
end
class Calculate
  
ROOT_ENDPOINT = 'http://router.project-osrm.org/trip/v1/driving/'
RESPONSE_PARAMS = '?overview=false'
TRANSIT_CATEGORYES = {:small=>1.0, :big_light=>2.0, :big_heavy=>3.0}

  def initialize(start, finish, volume, weight)
    @start = start
    @finish = finish
    @volume = volume
    @weight = weight
    @request = ''
  end
  
  def get_distance
    compile_request if @request = ''
    response = Faraday.get(@request)
    response = Oj.load(response.body).fetch('trips').fetch(0).fetch('legs').fetch(0).fetch('distance')
    return (response/1000).round(0)
  end

  def get_price 
    category = :small
    category = :big_light if @volume > 1.0 && @weight <= 10
    category = :big_heavy if @volume > 1.0 && @weight > 10
        
    self.get_distance * TRANSIT_CATEGORYES[category]
  end
  
  
private

def get_point_coordinate(point_name)
  Geocoder.search(point_name).first.coordinates
end

def compile_request
  @request += ROOT_ENDPOINT
  coordinate = get_point_coordinate(@start)
  @request += "#{coordinate[1]},#{coordinate[0]};"
  coordinate = get_point_coordinate(@finish)
  @request += "#{coordinate[1]},#{coordinate[0]}"
  @request += RESPONSE_PARAMS
end
  
end

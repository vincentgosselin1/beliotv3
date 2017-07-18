class WelcomeController < ApplicationController
  def index

  	username = 'admin'
	password = 'admin'
	database = 'Vincent_room_v2'


	influxdb = InfluxDB::Client.new database, host: "13.59.162.224", username: username, password: password

	## FOR OZONE
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "O3 concentration in ppb"' do |name, tags, points|
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@ozone = lastest_temp 

	##FOR DUST
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Dust concentration in ug/m^3"' do |name, tags, points|
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@dust = lastest_temp 

	##LATITUDE
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Latitude "' do |name, tags, points|#YES with a space ><
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@lat = lastest_temp

	##LONGTITUDE
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Longtitude "' do |name, tags, points|#YES with a space ><
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@lon = lastest_temp

	##LUX
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Luminosity in LUX"' do |name, tags, points|#YES with a space ><
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@lux = lastest_temp

	##SOIL_HUMIDITY
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Soil humidity in Relative humidity"' do |name, tags, points|#YES with a space ><
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@soil_humidity = lastest_temp

	##SOIL_TEMPERATURE
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Soil temperature in Degrees Celcius"' do |name, tags, points|#YES with a space ><
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@soil_temperature = lastest_temp

	##AIR_HUMIDITY
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Air humidity in Relative humidity"' do |name, tags, points|#YES with a space ><
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@air_humidity = lastest_temp

	##AIR_TEMPERATURE
	temp_array = ['hello','world']
	temp_array.push("byebye")
	#puts all_O3_concentration
	influxdb.query 'SELECT "value" FROM "Air temperature in Degrees Celcius"' do |name, tags, points|#YES with a space ><
  	#printf "%s [ %p ]\n", name, tags
  	points.each do |pt|
    #printf "  -> %p\n", pt
    #puts (pt.to_s)
    temp_array.push(pt.to_s)
  		end
	end
	#puts all_O3_concentration.last
	lastest_temp = temp_array.last.split(",")[1].split("\"")[3]#pretty ugly but works
	@air_temperature = lastest_temp

  	# @ozone = 12.03
  	#@dust = 46.50
  	#@lat = 45.438087
    #@lon = -73.923637
    #@lux = 597
    #@soil_humidity = 29
    #@soil_temperature = 27
    #@air_humidity = 34
    #@air_temperature = 28
  end
end

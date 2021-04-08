module ApplicationHelper
  def calculator
    Geocoder::Calculations.distance_between([16.072548702516265, 108.17817209778795], [16.06051980088915, 108.20936779778789])
  end

  def getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2)
    r = 6371
    dLat = deg2rad(lat2-lat1)
    dLon = deg2rad(lon2-lon1)
    a =
      Math.sin(dLat/2) * Math.sin(dLat/2) +
      Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
      Math.sin(dLon/2) * Math.sin(dLon/2)

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    d = r * c
    d
  end

  def deg2rad(deg)
    deg * (Math::PI/180)
  end

  def calculator_2
    getDistanceFromLatLonInKm(16.072548702516265, 108.17817209778795, 16.06051980088915, 108.20936779778789)
  end
end

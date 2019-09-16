def nyc_pigeon_organizer(data)
  pigeons = {}
  data.map{|item|
    item.each_pair{|key, value|
      puts key
      puts value
    }
  }
end

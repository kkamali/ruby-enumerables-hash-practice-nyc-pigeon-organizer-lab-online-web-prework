def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each_pair{ |category, types|
    types.each_pair{|type, names|
      names.map{|name|
        if pigeons[name]
          if !pigeons[name][category.to_sym]
            pigeons[name][category.to_sym] = []
          end
          pigeons[name][category.to_sym] << type.to_s
        else
          pigeons[name] = {}
          pigeons[name][category.to_sym] = []
          pigeons[name][category.to_sym] << type.to_s
        end
      }
    }
  }
  p pigeons
end

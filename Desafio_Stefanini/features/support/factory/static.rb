module Factory
  class Static
    def self.load_file
      YAML.load_file(File.dirname(__FILE__) +"/static/#{TARGET}.yml")
    end

    def self.static_data(data)
      Static.load_file[data]
    end

    def self.get_valid_user_bd(bd, data)
      Mongo.client('localhost:5432').find(data)
    end
  end
end

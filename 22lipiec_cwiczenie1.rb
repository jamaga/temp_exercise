module Company

  class Factory
    #jeden samochod moze miec wiele modeli
    #tworzymy fiat - stilo - czerwony - hatchback

    def initialize
      @our_factory_now = []
    end

    def list(marka_auta = nil)
      auta_do_pokazania = []
      if marka_auta == nil
        @our_factory_now.each do |autko|
          auta_do_pokazania << autko.model_title
        end
        auta_do_pokazania
      else
        @our_factory_now.each do |autko|
          if autko.model_group == marka_auta
            auta_do_pokazania << "#{autko.model_title} #{autko.model_type}"
          end
        end
      end
      auta_do_pokazania
    end

    def addCar(nazwa, car_details_hash)
      car = Company::Car.new
      car.model_group = nazwa
      car.model_name = car_details_hash['name']
      car.model_color = car_details_hash['color']
      car.model_type = car_details_hash['type']
      @our_factory_now << car
    end

    def remove(car_id)
      @our_factory_now.delete_at(car_id - 1)
    end

    def show(car_id)
      #jesli w parametrze wpszemy samochod ktory
      #nas interesuje - wyswietla wszystko o tym samochodzie
      #jesli w parametrze podamy id - to wyslwietlimy dany model
      @our_factory_now[car_id - 1].model_details
    end
  end

  class Car
    #model group - fiat
    #model type - combi
    #model name - stilo
    #model color - red
    attr_accessor :model_name, :model_color, :model_type, :model_group

    def model_title
      "#{@model_group} #{@model_name}"
    end

    def model_details
      #"fiat stilo combi - red">
      "#{model_title} #{@model_type} - #{@model_color}"
    end


    #volvo, audi etc
    #a3,stilo - name, model_type = kombi np

  end

end

#utworzyc - w show car oczekuje fiat stilo kombo
#w klasie car stwoerzyc full_name - ktora zwraca fiat stilo kombi-red
#




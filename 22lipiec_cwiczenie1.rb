module Company

  class Factory
    #jeden samochod moze miec wiele modeli
    #tworzymy fiat - stilo - czerwony - hatchback

    def initialize
      @our_factory_now = []
    end

    def list
      @our_factory_now
    end

    def addCar(nazwa, car_details_hash)
      car = Company::Car.new
      car.model_group = nazwa
      car.model_name = car_details_hash['name']
      car.model_color = car_details_hash['color']
      car.model_type = car_details_hash['type']
      @our_facrtory_now << car
    end

    def show(car_id)
      #jesli w parametrze wpszemy samochod ktory
      #nas interesuje - wyswietla wszystko o tym samochodzie
      #jesli w parametrze podamy id - to wyslwietlimy dany model

    end

  end

  class Car
    #model group - fiat
    #model type - combi
    #model name - stilo
    #model color - red
    attr_accessor :model_name, :model_color, :model_type, :model_group
    #volvo, audi etc
    #a3,stilo - name, model_type = kombi np

  end

end

#utworzyc - w show car oczekuje fiat stilo kombo
#w klasie car stwoerzyc full_name - ktora zwraca fiat stilo kombi-red
#




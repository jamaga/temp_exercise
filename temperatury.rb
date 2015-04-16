choiceList = %w{FA CE KE}
currentTempChoice = 'FA'

puts "temperature calculator"

begin

  begin

    print  "\nTemperature choices, please enter the entire word of at least two letters
						\n ~(Ce)lsius, \n ~(Fa)hrenheit, \n ~(Ke)lvin
							\nPlease enter temperture TYPE you want to convert (From the list above): "


    if ( (choiceList.include? currentTempChoice) == false)  && currentTempChoice != 'Q'
      print "\nInvalid temperature choice, please try again"
    end

    currentTempChoice = gets.upcase
    currentTempChoice = currentTempChoice[0] + currentTempChoice[1]

  end while ( (choiceList.include? currentTempChoice) == false) && currentTempChoice != 'Q'


  unless currentTempChoice[0] == "Q"

    print "\nTo which temperature KIND you want to convert your temp: "
    newTempChoice = gets.upcase

    newTempChoice = newTempChoice[0] + newTempChoice[1]

    print "\nPlease, enter the value of temp you want to convert: "
    temperature = gets.chomp.to_f

    case currentTempChoice

      when 'CE' #celsius to fahrenheit
        convertedTemp = temperature * 9/5 + 32

      when 'KE'#Kelvin to fahrenheit
        convertedTemp = temperature * 9/5 - 459.67

      else
        convertedTemp = temperature

    end


    case newTempChoice

      when 'CE' #fahrenheit to celsius
        newConName = "celsius"
        finalTemp = (convertedTemp - 32) * 5/9

      when 'KE'#far to Kelvin
        newConName = "Kelvin"
        finalTemp = (convertedTemp + 459.67) * 5/9

      when "FA"
        newConName = "Fahrenheit"
        finalTemp = convertedTemp

    end

    puts "Your temperature in #{newConName} is #{finalTemp.to_f.round(2)}"
    print "Continute(type quit to stop, or anything to continue)? :"
    redoing = gets.upcase

  end

end while currentTempChoice[0] != "Q" && redoing[0] != "Q"

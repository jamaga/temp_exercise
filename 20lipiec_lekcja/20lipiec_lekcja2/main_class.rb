class Main

  def self.transform(data)
    result = []

    data.each_with_index do |one_a, index|
      if index == 0
        one_a.map { |w| w.capitalize! }
      end
    end

    result = data
  end

end
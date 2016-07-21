class Main

  def self.transform(data)
    zdanie = ''

    data.each.with_index do |one_a, index|
      zdanie += "Wiersz #{index + 1}. = #{one_a.reduce(:+)} | "
    end
    zdanie
  end
end
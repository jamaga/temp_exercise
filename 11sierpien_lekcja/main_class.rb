class Main

  def self.transform(data)
    result = []
    result = data.map do |one_line|
      '- ' + one_line.join(' | ')
    end
    result = result.join("\n")
    result
  end
end

#w jednej linijce:


data.map { |a| "- " + a.join(" | ") }.join("\n")


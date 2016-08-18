class Main
  def self.transform(data)
    data.map do |hash|
      hash.map do |el|
        el.join(' = ')
      end.join(', ')
    end.join('; ')
  end
end


class Main
  def self.transform(data)
    result = ''
    result = data.map do |hash|
      tmp = hash.map do |el|
        el.join(' = ')
      end
      tmp.join(', ')
    end
    result.join('; ')
  end
end
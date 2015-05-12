class Words

  def initialize(file)
    @words = File.read(file).split('|').sort_by(&:length)
  end

  def shortest
    @words[0]
  end

end
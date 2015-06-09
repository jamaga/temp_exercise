class  Array

  def sum #self ponizej bedzie moja TABLICA!!!! [1,2,4].sum  selfem jest TABLICA
    self.reduce(:+)
  end

  def square
    self.map{ |one_num| one_num**2 }
  end

end
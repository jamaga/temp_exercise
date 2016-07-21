class Main

  def self.transform(data)
    tmp_arr = []

    data.reverse.each_with_index do |a, index_x|
      a.each_with_index do |w, index_y|
        w.capitalize! if index_x.zero?
        tmp_arr[index_y] ||= []
        tmp_arr[index_y] << w
      end
    end
    tmp_arr.map { |a| a.join(' ') }.join('. ') << '.'
  end
end


# ['ala ma kota', 'basia nie ma psa']

#['Ala ma kota', 'Basia nie ma psa']

# Ala ma kota. Basia nie ma psa.

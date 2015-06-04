class School
  attr_reader :school_db

  def initialize
    @school_db = Hash.new{|db, grade| db[grade] = []}
  end

  def add(name, grade)
    @school_db[grade] << name
  end

  def to_hash
  end

  def grade(search)
    @school_db[search]
  end

  def sort
    results = @school_db.map { |grade, name| [grade, name.sort] }.sort
    Hash[results]
  end
end


# class School
#
#   attr_accessor :db
#
#   def initialize
#     @db ||= {}
#   end
#
#   def add(name, grade)
#     db[grade] ||= []
#     db[grade] << name
#   end
#
#   def grade(n)
#     db[n] || []
#   end
#
#   def sort
#     db.values.map(&:sort!)
#     Hash[db.sort]
#   end
#
# end


# class School
#   attr_accessor :db
#   def initialize
#     @db = {}
#   end
#
#   def add(name,grade)
#     db[grade] ||= []
#     db[grade] << name
#   end
#
#   def grade(grade)
#     !db[grade].nil? ? db[grade] : []
#   end
#
#   def sort
#     sorted=Hash[@db.sort_by { |grade,name| [grade, name] }]
#     sorted.each_key do |key|
#       sorted[key] = sorted[key].sort
#     end
#   end
#
# end
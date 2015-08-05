require './5sierpien_mysql_ex'

foo = Foo.new
id = foo.add_user('aga@op.pl', 'aga', 'female', 7)
puts foo.show_user(id)
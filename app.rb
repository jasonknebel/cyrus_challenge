require_relative 'helpers/init.rb'
require_relative 'models/init.rb'
require 'date'
require 'CSV'

@members = []

parse_members('pipe.txt', ' | ', { 
  first_name: 1, last_name: 0, gender: 3, birthday: 5, favorite_color: 4})
parse_members('comma.txt', ', ', { 
  first_name: 1, last_name: 0, gender: 2, birthday: 4, favorite_color: 3})
parse_members('space.txt', ' ', { 
  first_name: 1, last_name: 0, gender: 3, birthday: 4, favorite_color: 5})

outputs=[]
# Output 1 – sorted by gender (females before males) 
# then by last name ascending
outputs << @members.sort_by{|p| [p.gender, p.last_name] }

# Output 2 – sorted by birth date, ascending.
outputs << @members.sort_by{|p| [p.birthday, p.last_name] }

# Output 3 – sorted by last name, descending.
outputs << @members.sort_by(&:last_name).reverse

export_results(outputs)

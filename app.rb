require_relative 'helpers/init.rb'
require_relative 'model.rb'
require 'date'
require 'CSV'

@members = []

import_members('pipe.txt', ' | ', [ 1, 0, 3, 5, 4])
import_members('comma.txt', ', ', [ 1, 0, 2, 4, 3])
import_members('space.txt', ' ', [ 1, 0, 3, 4, 5])

outputs=[]

# Output 1 – sorted by gender (females before males) 
#   then by last name ascending
outputs << @members.sort_by{|p| [p.gender, p.last_name] }

# # Output 2 – sorted by birth date, ascending.
outputs << @members.sort_by{|p| [p.birthday, p.last_name] }

# # Output 3 – sorted by last name, descending.
outputs << @members.sort_by(&:last_name).reverse

# #Display stored data
# display_results(@members, 0)
# display_results(output1, 1)
# display_results(output2, 2)
# display_results(output3, 3)

export_results(outputs)
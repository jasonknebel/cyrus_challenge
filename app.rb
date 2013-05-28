require_relative 'helpers/init.rb'
require_relative 'model.rb'
require 'date'

@members = []

import_members('pipe.txt', @pipe_regex)
import_members('comma.txt', @comma_regex)
import_members('space.txt', @space_regex)

# Output 1 – sorted by gender (females before males) 
#   then by last name ascending
output1 = sort_output1(@members)

# Output 2 – sorted by birth date, ascending.
output2 = sort_output2(@members)

# Output 3 – sorted by last name, descending.
output3 = sort_output3(@members)

#Display stored data
# display_results(@members, 0)

# display_results(output1, 1)
# display_results(output2, 2)
# display_results(output3, 3)

export_results(output1, output2, output3)

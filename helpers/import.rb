def import_members(file_name, col_sep, order)

  path = 'input_data/' + file_name

  CSV.foreach(path, col_sep: col_sep) do |line|

    @members << Person.new(
      first_name: line[order[0]],
      last_name: line[order[1]],
      gender: line[order[2]], 
      birthday: line[order[3]],
      favorite_color: line[order[4]]
    )

  end

end


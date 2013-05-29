def import_members(file_name, col_sep, order)

  path = 'input_data/' + file_name

  CSV.foreach(path, col_sep: col_sep) do |line|

    @members << Person.new(
      first_name: line[order[:first_name]],
      last_name: line[order[:last_name]],
      gender: line[order[:gender]], 
      birthday: line[order[:birthday]],
      favorite_color: line[order[:favorite_color]]
    )

  end

end


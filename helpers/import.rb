def import_members(file_name, col_sep, order)

  path = 'input_data/' + file_name

  CSV.foreach(path, col_sep: col_sep) do |line|

    @members << Person.new(
      first_name: line[order[0]],
      last_name: line[order[1]],
      gender: gender_helper(line[order[2]]), 
      birthday: birthday_helper(line[order[3]]),
      favorite_color: line[order[4]]
    )

  end

end


def gender_helper(gender)

  if(gender.length == 1)
    case gender
      when 'M'
        gender = 'Male'
      when 'F'
        gender = 'Female'
      else
        gender = 'Unknown'
    end
  end

  return gender
end


def birthday_helper(dob)
    begin
      birthday =  Date.strptime(dob, '%m-%d-%Y')
    rescue 
      birthday = Date.strptime(dob, '%m/%d/%Y')
    end
end
def import_members(file_name, regex)

  path = 'input_data/' + file_name

  File.open(path).each do |line|
    data = line.match(regex)

    gender = gender_helper(data[:gender])
    birthday = birthday_helper(data[:birthday])

    @members << Person.new(
      first_name: data[:first],
      last_name: data[:last],
      gender: gender, 
      birthday: birthday,
      favorite_color: data[:color]
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


def birthday_helper(birthday)

  data = birthday.match(@dob_regex)
  birthday = DateTime.new(data[:year].to_i, data[:month].to_i, data[:day].to_i)

end

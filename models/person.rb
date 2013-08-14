class Person
  attr_accessor :first_name, :last_name, :gender, :birthday, :favorite_color

  def initialize(params)
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @gender = parse_gender(params[:gender])
    @birthday = parse_birthday(params[:birthday])
    @favorite_color = params[:favorite_color]

  end

  private

  def parse_gender(gender)
    case gender.downcase
      when 'm', 'male'
        return 'Male'
      when 'f', 'female'
        return 'Female'
      else
        return 'Unknown'
    end
  end

  def parse_birthday(dob)
      dob.gsub!('/', '-')
      birthday =  Date.strptime(dob, '%m-%d-%Y')
  end

end

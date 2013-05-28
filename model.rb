class Person
  attr_accessor :first_name, :last_name, :gender,
    :birthday, :favorite_color

  def initialize(params)
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @gender = params[:gender]
    @birthday = params[:birthday]
    @favorite_color = params[:favorite_color]
  end

end

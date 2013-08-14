require 'test/unit'
require_relative '../app.rb'

class TestApp < Test::Unit::TestCase

  def test_person_model
    assert_equal('Male', @members[0].gender)
    assert_equal('3/3/1985', @members[0].birthday.strftime('%-m/%-d/%Y'))
    assert_equal('Female', @members[2].gender)
    assert_equal('7/12/1959', @members[2].birthday.strftime('%-m/%-d/%Y'))
  end

  def setup

    @members = []
    def add_test_member(last_name, first_name, gender, birthday, favorite_color)
      @members << Person.new(
        last_name: last_name,
        first_name: first_name,
        gender: gender,
        birthday: birthday,
        favorite_color: favorite_color,
        )
    end
      
    add_test_member('Smith', 'Steve', 'M', '03-03-1985', 'Red')
    add_test_member('Bonk', 'Radek', 'Male', '6/3/1975', 'Green')
    add_test_member('Kelly', 'Sue', 'F', '07-12-1959', 'Pink')
    add_test_member('Kournikova', 'Anna', 'Female', '6/3/1975', 'Red')
    add_test_member('Seles', 'Monica', 'Female', '12/2/1973', 'Black')
    add_test_member('Bouillon', 'Francis', 'Male', '6/3/1975', 'Blue')
    add_test_member('Abercrombie', 'Neil', 'Male', '2/13/1943', 'Tan')
    add_test_member('Hingis', 'Martina', 'Female', '4/2/1979', 'Green')
    add_test_member('Bishop', 'Timothy', 'Male', '4/23/1967', 'Yellow')
  end

  def teardown
  end

end

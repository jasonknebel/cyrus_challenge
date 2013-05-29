require 'test/unit'
require_relative '../app.rb'

class TestApp < Test::Unit::TestCase

  def test_gender_helper
    assert_equal('Male', gender_helper('M'))
    assert_equal('Female', gender_helper('F'))
    assert_equal('Female', gender_helper('Female'))
  end

  def test_birthday_helper
    assert_equal( '2/5/2013' , birthday_helper('02/05/2013').strftime('%-m/%-d/%Y') )
    assert_equal( '5/2/2013' , birthday_helper('05-2-2013').strftime('%-m/%-d/%Y') )
  end

  def test_sort_output1
    desired_output = ["Martina", "Sue", "Anna", "Monica", "Neil", "Timothy", "Radek", "Francis", "Steve"]
    assert_equal(desired_output, sort_output1(@members).map(&:first_name))
  end

  def test_sort_output2
    desired_output = ["Neil", "Sue", "Timothy", "Monica", "Radek", "Francis", "Anna", "Martina", "Steve"]
    assert_equal(desired_output, sort_output2(@members).map(&:first_name))
  end

  def test_sort_output3
    desired_output = ["Steve", "Monica", "Anna", "Sue", "Martina", "Francis", "Radek", "Timothy", "Neil"]
    assert_equal(desired_output, sort_output3(@members).map(&:first_name))
  end


  def setup
    @dob_regex = /^
      (?<month>\d+)\D
      (?<day>\d+)\D
      (?<year>\d+)
    $/x

    @members = []
    def addMember(last_name, first_name, gender, birthday, favorite_color)
      @members << Person.new(
        last_name: last_name,
        first_name: first_name,
        gender: gender,
        birthday: birthday_helper(birthday),
        favorite_color: favorite_color,
        )
    end

    addMember('Smith', 'Steve', 'Male', '3/3/1985', 'Red')
    addMember('Bonk', 'Radek', 'Male', '6/3/1975', 'Green')
    addMember('Kelly', 'Sue', 'Female', '7/12/1959', 'Pink')
    addMember('Kournikova', 'Anna', 'Female', '6/3/1975', 'Red')
    addMember('Seles', 'Monica', 'Female', '12/2/1973', 'Black')
    addMember('Bouillon', 'Francis', 'Male', '6/3/1975', 'Blue')
    addMember('Abercrombie', 'Neil', 'Male', '2/13/1943', 'Tan')
    addMember('Hingis', 'Martina', 'Female', '4/2/1979', 'Green')
    addMember('Bishop', 'Timothy', 'Male', '4/23/1967', 'Yellow')
    
  end

  def teardown
  end

end
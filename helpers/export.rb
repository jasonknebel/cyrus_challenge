def display_results(member, view)

  puts ''
  output = "| %11s | %7s | %6s | %10s | %7s |\n"
  
  puts (view == 0) ? 'Stored Data' : 'Output ' + view.to_s

  horiz()
  printf output, 'Last Name', 'F. Name', 'Gender', 'Birthday', 'F.Color'
  horiz()

  member.each do |p|
    printf output, p.last_name, p.first_name, 
      p.gender, p.birthday.strftime("%-m/%-d/%Y"), p.favorite_color
  end


  horiz()

end


def horiz()

  57.times { printf "-" }
  printf "\n"

end


def export_results(outputs)
  File.open( "output.txt" , 'w') do |f|
  
    i = 1
    outputs.each do |out|
      f.write i > 1 ? "\n\nOutput #{i}:" : "Output #{i}:"
      out.each do |p|
        print_member(p, f)
      end
      i+=1
    end

  end
end


def print_member(p, file)

  file.write "\n"
  person_info = "#{p.last_name} #{p.first_name} #{p.gender} "
  person_info += "#{p.birthday.strftime('%-m/%-d/%Y')} #{p.favorite_color}"
  file.write person_info

end

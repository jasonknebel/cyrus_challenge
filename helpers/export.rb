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

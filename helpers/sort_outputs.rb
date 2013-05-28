def sort_output1(members)
  members.sort_by{|p| [p.gender, p.last_name] }
end

def sort_output2(members)
  members.sort_by{|p| [p.birthday, p.last_name] }
end

def sort_output3(members)
  members.sort_by(&:last_name).reverse
end
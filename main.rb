# Assignment 1
def fibs(num, arr = [])
  first_num = 0
  sec_num = 1
  0..num.times do
    arr << first_num
    first_num, sec_num = sec_num, first_num + sec_num
  end
  arr 
end

p fibs(8)
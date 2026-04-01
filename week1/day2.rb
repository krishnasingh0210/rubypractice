#1 Prime or Not Prime
puts "Enter the number to check prime:"
a=gets.chomp.to_i
flag = true #this is a booleaan variable
for i in 2..a/2
  if a%i==0
    flag = false
    break
  end
end
puts flag ? "Prime": "Not Prime"

#2 Fibbonaci series
puts "Enter the number for fibbonaci:"
num=gets.chomp.to_i
a,b=0,1 #this is called parallel assignment
num.times do 
  puts a
  a,b=b,a+b
end

#3 Frequency of charaters
puts "Enter the string:"
name=gets.chomp
str=name.chars
hsh={}
str.each do |i|
  hsh[i]=hsh[i].to_i+1
end
puts hsh

#4 Sorting without sort function
arr=[]
puts "Enter the arrays for sorting:"
arr=gets.chomp
size = arr.length

(size- 1).times do
  (0...size - 1).each do |i|
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
    end
  end
end
puts arr.inspect

#5 Square pattern
puts "Enter the number of rows and columns for patterns: "
n=gets.chomp.to_i
1..n.times do
  n.times do
    print "* "
  end  
  puts " "
end

#6 Triangle Pattern
puts "Enter the number for triangle:"
n=gets.chomp.to_i
(1..n).each do|i|
  i.times do
        print "* "
  end  
  puts " "
end

#7 Zig Zag psttern
n = 9   # width of pattern
rows = 3

for i in 1..rows
  for j in 1..n

    if ( (i + j) % 4 == 0 || (i == 2 && j % 4 == 0) )
      print "*"
    else
      print " "
    end

  end
  puts
end

#8 Inverted triangle

puts "Enter the number for triangle:"
n=gets.chomp.to_i
n.downto(1) do|i|
  i.times do
        print "* "
  end  
  puts " "
end

#9 searching vovels
puts "Enter the string for searching vovels:"
str = gets.chomp
count = 0
str.each_char do |i|
  if "aeiou".include?(i)
    count+=1
  end
  end
  puts "vovels:" "#{count}"

  #10 using when 
  variable=[1,2,3,4]
  case variable.class
  when Interger
    puts "It is an interger"
  else String
    puts "It is an string"
  end
  
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

#5 


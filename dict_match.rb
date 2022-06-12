# Дана строка s и словарь dict , содержащий некие слова. Определите, можно ли строку s сегментировать в 
# последовательность разделенных пробелом слов, содержащихся в словаре dict.
# Пример: дано, s = «двадесятка», dict = [«два», «десятка», «девятка»]. 
# Программа должна вернуть true, потому что «двадесятка» могут быть сементированы как «два десятка».

require 'set'

string1 = 'twenty two'
string2 = 'thirty one'
string3 = 'forty five'
dict = ['twenty', 'two', 'ten', 'five']

puts string1.split(" ").to_set.intersect?(dict.to_set)
puts string2.split(" ").to_set.intersect?(dict.to_set)
puts string3.split(" ").to_set.intersect?(dict.to_set)


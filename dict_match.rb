# Дана строка s и словарь dict , содержащий некие слова. Определите, можно ли строку s сегментировать в 
# последовательность разделенных пробелом слов, содержащихся в словаре dict.


string = 'brown fox jumps over the fence'
dict = ['fox', 'cat', 'yellow', 'hedge', 'the', 'ruby']

# returns words in a sentence that match the dictionary
puts string.split(" ").to_a & dict
# returns words in a sentence and all words in dictionary, no duplicates
puts string.split(" ").to_a | dict
# returns words that are not contained dictionary
puts string.split(" ").to_a - dict
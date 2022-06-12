# Имеется строка набранная в разном регистре, например: «ThisIsAString» требуется получить в результате строку 
# где буквы меняют регистр, то есть: «tHISiSasTRING». Напишите, пожалуйста, код.

string = "ThisIsAString"

def lettercase(string)
	array = []
	string.each_char do |char|
		char == char.upcase ? array << char.downcase : array << char.upcase
	end
	array.join
end

p lettercase(string)
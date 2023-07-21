require 'pry-byebug'

numbers_list = [17, 44, 23, 12, 13, 24, 85, 32]

def bubble_sort(numbers_list)
    numbers_list.each do |number|
        numbers_list.each_with_index do |number, index|
        if numbers_list[index + 1] && number > numbers_list[index + 1]
            numbers_list[index], numbers_list[index + 1] = numbers_list[index + 1], numbers_list[index]
        end
        end
    end
    p numbers_list
end

bubble_sort(numbers_list)
#!/usr/bin/python

# initial_lines = tuple(open("triangle.txt", 'r'))
# initial_lines.strip("\n")

with open('triangle.txt') as temp_file:
  lines = [line.rstrip('\n').split(" ") for line in temp_file]

solution_numbers = []
for line in lines:
  greatest_number = 0
  for number in line:
    int_number = int(number)
    if int_number > greatest_number:
      greatest_number = int_number
  solution_numbers.append(greatest_number)

print(sum(solution_numbers))




#!/usr/bin/python

# initial_lines = tuple(open("triangle.txt", 'r'))
# initial_lines.strip("\n")

with open('triangle.txt') as temp_file:
  lines = [line.rstrip('\n').split(" ") for line in temp_file]

# with lines:
#   formatted_lines = []

print(lines)
solution_numbers = []


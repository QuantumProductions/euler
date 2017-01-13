#!/usr/bin/python

# initial_lines = tuple(open("triangle.txt", 'r'))
# initial_lines.strip("\n")

with open('triangle.txt') as temp_file:
  lines = [line.rstrip('\n') for line in temp_file]

print(lines)
solution_numbers = []
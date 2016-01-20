# Calculate a Grade
# I worked on this challenge [by myself, with: Kevin Sullivan, Jack Hamilton].
# Your Solution Below

def get_grade(grade_num)
	letter_grade = ''

	case
	when grade_num >= 90
		letter_grade = 'A'

	when grade_num >=80 && grade_num < 90
		letter_grade = 'B'

	when grade_num >=70 && grade_num < 80
		letter_grade = 'C'

	when grade_num >=60 && grade_num < 70
		letter_grade = 'D'

	else
		letter_grade = 'F'
	end

	return letter_grade
end


p get_grade(100)
p get_grade(75)

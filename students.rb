class Students
	@@student_data = []

	def add_student(name:, roll_no:, marks:)
		student = {}
		student[:name] = name
		student[:roll_no] = roll_no
		student[:marks] = marks
		@@student_data << student
	end

	def list_students
		puts @@student_data
	end

	def get_all_results
		@@student_data.map do |student| 
			result = student[:marks] >= 35 ? "Passed" : "Failed"
			puts "Student #{student[:name]} has #{result}"
		end
	end

	def get_result(name)
		student = @@student_data.select {|a| a[:name] == name}.first
		result = student[:marks] >= 35 ? "Passed" : "Failed"
		puts "Student #{student[:name]} has #{result}"
	end

end

students = Students.new

student1 = students.add_student(name: "Varun", roll_no: "1000", marks: 34)
student2 = students.add_student(name: "Sandeep", roll_no: "1001", marks: 35)
student3 = students.add_student(name: "Tejas", roll_no: "1002", marks: 90)

puts "List of students: \n"
students.list_students

students.get_result("Varun")
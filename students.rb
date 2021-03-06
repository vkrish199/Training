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
		@@student_data.each do |student| 
			result = student[:marks] >= 35 ? "Passed" : "Failed"
			puts "Student #{student[:name]} has #{result}"
		end
	end

	def get_result(name)
		@@student_data.select {|a| a[:name] == name}.each do |student|
			result = student[:marks] >= 35 ? "Passed" : "Failed"
			grade = case student[:marks]; when 80 .. 100 then "A"; when 60 .. 80 then "B"; when 40 .. 60 then "C"; when 0 .. 40 then "D" end
			puts "Student #{student[:name]} with roll no #{student[:roll_no]} has #{result} with #{grade} grade"
		end
	end

	def calc_percentage
		@@student_data.map {|student| student[:percentage] = student[:marks].to_f/100 * 100}
	end


end

students = Students.new

student1 = students.add_student(name: "Varun", roll_no: "1000", marks: 34)
student2 = students.add_student(name: "Sandeep", roll_no: "1001", marks: 35)
student3 = students.add_student(name: "Tejas", roll_no: "1002", marks: 90)
student4 = students.add_student(name: "Varun", roll_no: "1003", marks: 50)

puts "List of students: \n"
students.list_students

students.get_result("Varun")
students.get_result("Sandeep")
students.get_result("Tejas")

students.calc_percentage

students.list_students

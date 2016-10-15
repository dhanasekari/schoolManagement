# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	Result.all.each do|result|
		result.destroy!
	end
	Exam.all.each do|exam|
		exam.destroy!
	end
	Attendance.all.each do|attendance|
		attendance.destroy!
	end
	Subject.all.each do|subject|
		subject.destroy!
	end
	Teacher.all.each do|teacher|
		teacher.destroy!
	end
	Student.all.each do|student|
		student.destroy!
	end
	Section.all.each do|section|
		section.destroy!
	end

	Standard.all.each do|standard|
		standard.destroy!
	end
	School.all.each do|school|
		school.destroy!
	end


	school = School.create({name: 'akshaya mandir', address: 'chennai'})
	school = School.create({name: 'aravinthar', address: 'pondichery'})
	school = School.create({name: 'sevamandir', address: 'cuddalore'})

	standard = Standard.create ({description: '10th',  school_id: school.id})
	standard = Standard.create ({description: '11th',  school_id: school.id})
	standard = Standard.create ({description: '12th',  school_id: school.id})

	section = Section.create ({sectionName: 'A', standard_id: standard.id})
	section = Section.create ({sectionName: 'B', standard_id: standard.id})
	section = Section.create ({sectionName: 'C', standard_id: standard.id})

	student = Student.create ({fname: 'dhana', lname: 'pandi', dob: '5/8/93', address: 'chennai', section_id: section.id})
	student = Student.create ({fname: 'jeevi', lname: 'pandi', dob: '5/8/93', address: 'chennai', section_id: section.id})
	student = Student.create ({fname: 'jeeva', lname: 'pandi', dob: '5/8/93', address: 'chennai', section_id: section.id})

	teacher = Teacher.create({fname: 'sara', lname: 'sekar', dob: '5/8/93', mobile: '3243545', standard_id: standard.id})
	teacher = Teacher.create({fname: 'uma', lname: 'sekar', dob: '10/3/93', mobile: '8794555', standard_id: standard.id})
	teacher = Teacher.create({fname: 'jessi', lname: 'sekar', dob: '28/9/93', mobile: '9873784', standard_id: standard.id})

	subject = Subject.create ({SubjectName: 'math'})
	subject = Subject.create ({SubjectName: 'science'})
	subject = Subject.create ({SubjectName: 'english'})

	attendance = Attendance.create ({day: Time.now, status: true, student_id: student.id})
	attendance = Attendance.create ({day: Time.now, status: true, student_id: student.id})
	attendance = Attendance.create ({day: Time.now, status: true, student_id: student.id})

	exam = Exam.create ({ExamName: 'miterm', student_id: student.id, subject_id: subject.id})
	exam = Exam.create ({ExamName: 'model', student_id: student.id, subject_id: subject.id})
	exam = Exam.create ({ExamName: 'final', student_id: student.id, subject_id: subject.id})

	result = Result.create ({marks: '60', student_id: student.id, exam_id: exam.id})
	result = Result.create ({marks: '70', student_id: student.id, exam_id: exam.id})
	result = Result.create ({marks: '80', student_id: student.id, exam_id: exam.id})
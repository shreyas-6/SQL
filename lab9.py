# Student Enrollment System

# Create a set for Course A
course_A = {"Alice", "Bob", "Charlie"}

# Create a set for Course B
course_B = {"Charlie", "David", "Eva"}

# Display the students in both courses
print("Course A Students:", course_A)
print("Course B Students:", course_B)

# 1. Students enrolled in both Course A and Course B
# intersection() returns common elements from both sets
both_courses = course_A.intersection(course_B)
print("\nStudents enrolled in both courses:", both_courses)

# 2. Students enrolled in either Course A or Course B
# union() returns all unique elements from both sets
either_course = course_A.union(course_B)
print("Students enrolled in either course:", either_course)

# 3. Students enrolled in Course A but not in Course B
# difference() returns elements that are only in Course A
only_course_A = course_A.difference(course_B)
print("Students enrolled in Course A but not in Course B:", only_course_A)

# 4. Students enrolled in only one course
# symmetric_difference() returns elements that are in one set but not both
only_one_course = course_A.symmetric_difference(course_B)
print("Students enrolled in only one course:", only_one_course)

output:-

Course A Students: {'Alice', 'Charlie', 'Bob'}
Course B Students: {'David', 'Charlie', 'Eva'}

Students enrolled in both courses: {'Charlie'}
Students enrolled in either course: {'David', 'Charlie', 'Alice', 'Bob', 'Eva'}
Students enrolled in Course A but not in Course B: {'Bob', 'Alice'}
Students enrolled in only one course: {'Bob', 'Alice', 'David', 'Eva'}





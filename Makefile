# depends on main, command to run is ./main|tee main.out
main.out: main.c
  ./main|tee main.out

# depends on both .o files, command should use cc -o to compile and link executable progam called main
main: get_student_id.o main.o
  gcc get_student_id.o main.o -o main

# depends on main.c, command should use cc -c to compile but not link
main.o: main.c
  gcc main.c -c main.o

# depends on get_student_id.c, command should use cc -c to compile but not link
get_student_id.o: get_student_id.c
  gcc get_student_id.c -c get_student_id.o

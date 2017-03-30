Pair.create(name_pairs: 'Anna')
Pair.create(name_pairs: 'Bernardo')
Pair.create(name_pairs: 'Bruna')
Pair.create(name_pairs: 'Fernanda')
Pair.create(name_pairs: 'Filipe')
Pair.create(name_pairs: 'Gabriela')
Pair.create(name_pairs: 'Gianfranco')
Pair.create(name_pairs: 'Henrique')
Pair.create(name_pairs: 'Marlon')
Pair.create(name_pairs: 'Matheus')
Pair.create(name_pairs: 'Mayra')
Pair.create(name_pairs: 'Tati')

Student.create(name_students: 'Anna')
Student.create(name_students: 'Bernardo')
Student.create(name_students: 'Bruna')
Student.create(name_students: 'Fernanda')
Student.create(name_students: 'Filipe')
Student.create(name_students: 'Gabriela')
Student.create(name_students: 'Gianfranco')
Student.create(name_students: 'Henrique')
Student.create(name_students: 'Marlon')
Student.create(name_students: 'Matheus')
Student.create(name_students: 'Mayra')
Student.create(name_students: 'Tati')

for i in 1..12 do
  k = i +1
  for j in k..12 do
    Pairing.create(student_id: i, pair_id: j)
  end
end

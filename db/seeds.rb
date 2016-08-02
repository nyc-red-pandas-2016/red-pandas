students = ['Adam', 'Amir', 'Anthony', 'David', 'Elisa', 'Elizabeth',
'Emilia', 'Gabriel', 'James', 'Marcoa', 'Margaret', 'Nicholas',
'Peter', 'Richard', 'Walter', 'Wolfgang', 'Yossi']
Panda.delete_all

students.each do |student|
  Panda.create(name: student)
end

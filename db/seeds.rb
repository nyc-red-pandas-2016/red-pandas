students = ['Adam', 'Amir', 'Anthony', 'David', 'Elisa', 'Elizabeth',
'Emilia', 'Gabriel', 'James', 'Marcoa', 'Margaret', 'Nicholas',
'Peter', 'Richard', 'Walter', 'Wolfgang', 'Yossi', 'Neill','Myra', 'Matt']

list_images = ['http://animals.sandiegozoo.org/sites/default/files/juicebox_slides/redpanda_05.jpg',
'https://upload.wikimedia.org/wikipedia/commons/d/d8/Red_Panda_Simon_01.jpg',
'http://redpandanetwork.org/blog/wp-content/gallery/redpanda/main-panda-fat.jpg',
'http://www.theanimalfiles.com/images/red_panda_1.jpg',
'https://charlespaddockzoo.org/wp-content/uploads/2013/04/Red-Panda.jpg',
'http://images.mentalfloss.com/sites/default/files/styles/insert_main_wide_image/public/istock_000049345960_small.jpg',
'http://images.hngn.com/data/images/full/144549/red-pandas.jpg?w=650',
'http://seveninchesofyourtime.com/wp-content/uploads/2014/05/Yawning-Red-Panda.jpg',
'http://img0.liveinternet.ru/images/attach/c/10/111/141/111141822_1.jpg',
'https://c4.staticflickr.com/8/7390/10149841303_d027acb8a8_b.jpg'
]
Panda.delete_all

students.each do |student|
  Panda.create(name: student)
end

//1 Количество факультетов
MATCH (class)-[:is_faculty]-(faculty) WHERE class.name = "BSUIR" RETURN COUNT(faculty)

//2 Факультет с именем "FRE"
MATCH (f: faculty) WHERE f.name = "FRE" RETURN f

//3 Пары культоргов которые дружат между собой
MATCH (n)-[:is_friend]-(m) RETURN n, m

//4 Факультет(ы) в которых количество студентов больше 1400, но не равно 2000
MATCH (n: faculty)-[:number_of_students]-(m) WHERE m.value > 1400 AND NOT m.value = 2000 RETURN n

//5 Пары "факультет-количество студентов"
MATCH (n)-[:number_of_students]-(m) RETURN n, m

//6 Все факультеты университета
MATCH (class)-[:is_faculty]-(faculty) WHERE class.name = "BSUIR" RETURN faculty

//7 Культорги, с которыми дружит культорг fitu
//MATCH (cultorgFitu {name: "Julia"})-[:is_friend]-(m) RETURN m     так тоже можно
MATCH (n: cultorg)-[:is_friend]-(m) WHERE n.name = "Julia" RETURN n, m

//8 Пары "факультет-имя культорга"
MATCH (n)-[:is_cultorg]-(m) RETURN n,m

//9 Количество студентов на факультете ФИК
MATCH (n: number)-[:number_of_students]-(m) WHERE m.name = "FIK" RETURN n

//10 Факультет с количеств студентов = 1000
MATCH (n: faculty)-[:number_of_students]-(m) WHERE m.value = 1000 RETURN n


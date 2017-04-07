# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Street.count==0 then
s=[]
s<<Street.create(name: 'Улица Левой Резьбы')
s<<Street.create(name: 'Улица Сладкой Репы')
s<<Street.create(name: 'Улица Позитивная')
s<<Street.create(name: 'Улица Глубины Резкости')
end;

if House.count==0 then
h=[]
h<<House.create(num: 1, street: s[1])
h<<House.create(num: 20, street: s[2])
h<<House.create(num: 242, street: s[3])
h<<House.create(num: 11, street: s[4])
h<<House.create(num: 100, street: s[1])
h<<House.create(num: 99, num_extra: 'bis',street: s[2])
h<<House.create(num: 67, street: s[3])
h<<House.create(num: 228, street: s[4])
h<<House.create(num: 311, street: s[1])
h<<House.create(num: 70, street: s[2])
h<<House.create(num: 5, street: s[3])
h<<House.create(num: 90, num_extra: 'A', street: s[4])
end;

if District.count==0 then
 d=[]
 d<<District.create("name"=>"Район №1", "code"=>"N1"); 
 d<<District.create("name"=>"Район №2", "code"=>"N2");
 d<<District.create("name"=>"Отстойный район", "code"=>"OT");
 d<<District.create("name"=>"Почётный район", "code"=>"PR");
end;	

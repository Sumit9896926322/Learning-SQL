create database school;
use school;

CREATE TABLE course (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE teacher (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  phone  VARCHAR(255) NOT NULL,
  officeno  VARCHAR(255) NOT NULL,
  courseID INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (courseId) REFERENCES course(id)
);

CREATE TABLE student (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email varchar(255)NOT NULL,
  phone varchar(255)NOT NULL,
  courseID INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (courseId) REFERENCES course(id)
);

CREATE TABLE grade (
  grade INT  NOT NULL,
  studentId INT NOT NULL,
  courseID INT NOT NULL,
  FOREIGN KEY (studentId) REFERENCES student(id),
  FOREIGN KEY (courseId) REFERENCES course(id)
);

INSERT INTO student (name,email,phone,courseID) VALUES ("Rose","sapien.Aenean@mus.com","(979) 459-2426",40),("Slade","Suspendisse.aliquet@blandit.ca","(195) 760-3630",16),("Caesar","fames.ac@arcuCurabitur.org","(695) 513-7530",17),("Meredith","nunc@atpretium.org","(696) 576-9778",33),("Liberty","placerat@idblanditat.ca","(196) 574-6836",8),("Kevin","nec.ligula@nasceturridiculus.com","(989) 398-6258",20),("Lamar","Nunc@disparturient.com","(634) 540-1608",38),("Madaline","habitant.morbi.tristique@semperpretium.org","(936) 913-3909",18),("Gil","consectetuer@ac.net","(363) 101-8612",11),("Cyrus","justo@hendreritidante.edu","(997) 663-9257",42);
INSERT INTO student (name,email,phone,courseID) VALUES ("Lance","in.felis.Nulla@congue.net","(291) 870-3454",42),("Sharon","ipsum.nunc@tempusmauriserat.net","(922) 447-2438",22),("Velma","semper.egestas.urna@lobortistellus.com","(726) 375-8913",34),("Deanna","id@Integer.ca","(942) 608-1884",18),("Samuel","accumsan.neque.et@quis.com","(570) 866-1040",33),("Magee","Nunc@semperNamtempor.co.uk","(185) 429-3887",42),("Ila","accumsan.sed.facilisis@Aeneaneget.co.uk","(574) 174-7900",10),("Ivory","in.molestie.tortor@pellentesqueegetdictum.co.uk","(478) 750-5817",29),("Herrod","mi.Duis@sitametnulla.net","(870) 996-4041",4),("Nora","erat@egetmetus.edu","(914) 740-4807",43);
INSERT INTO student (name,email,phone,courseID) VALUES ("Rae","vel.convallis@arcu.ca","(739) 607-4890",13),("Hayden","Aliquam.erat@vulputate.co.uk","(856) 674-2842",29),("Griffin","scelerisque.lorem.ipsum@hendreritconsectetuercursus.ca","(469) 483-7636",38),("Amal","Pellentesque.tincidunt@quisaccumsanconvallis.edu","(289) 447-1992",20),("Laurel","tincidunt.nunc@Vivamusnon.co.uk","(134) 908-6231",7),("Imelda","enim.Etiam.imperdiet@morbi.net","(872) 838-1279",34),("Edan","neque@euismodmauriseu.ca","(814) 366-2851",36),("Wylie","sem.semper@quam.edu","(421) 242-7105",22),("Mannix","feugiat@egetmassa.ca","(516) 317-6879",20),("Britanni","Sed.eu.eros@necurnaet.com","(895) 849-9079",28);
INSERT INTO student (name,email,phone,courseID) VALUES ("Cole","eget@nislNullaeu.co.uk","(558) 939-1397",31),("Kareem","lorem.lorem.luctus@nisidictum.org","(365) 304-6047",8),("Serina","interdum@vehiculaaliquetlibero.co.uk","(242) 870-7729",21),("Rhea","venenatis.vel@lobortis.ca","(944) 284-3073",25),("Alexa","nisl.sem@pede.net","(970) 979-8157",39),("Quon","id@risusMorbi.edu","(345) 207-2015",27),("Haley","dui@tristiquealiquet.org","(940) 324-6521",6),("Yuli","ipsum.Suspendisse.non@sedestNunc.ca","(804) 473-7495",39),("Frances","auctor.velit@blanditenimconsequat.edu","(572) 148-6913",24),("Isabelle","cursus.et.eros@eratvitaerisus.co.uk","(821) 519-9071",8);
INSERT INTO student (name,email,phone,courseID) VALUES ("Ulysses","est.tempor.bibendum@commodoauctorvelit.ca","(852) 756-3596",20),("Hadassah","neque.vitae@accumsansed.co.uk","(180) 934-7634",34),("Yoko","Quisque.varius.Nam@nonmassa.org","(657) 382-5105",28),("Harriet","Donec.sollicitudin@leoin.net","(845) 785-0531",33),("Leigh","Nulla@erat.edu","(464) 682-1402",18),("Boris","rutrum@laoreetliberoet.com","(183) 373-6796",13),("Garrison","rhoncus.id.mollis@et.com","(474) 771-3004",36),("Baxter","aptent.taciti.sociosqu@enimCurabiturmassa.com","(940) 214-6132",4),("Velma","Proin.eget@tristiquesenectuset.com","(535) 578-8534",18),("Tanisha","semper.Nam.tempor@commodo.org","(478) 656-2226",8);
INSERT INTO student (name,email,phone,courseID) VALUES ("Idola","dictum.Proin@dictumeleifend.co.uk","(569) 205-5493",42),("Liberty","pede.et.risus@sit.net","(283) 942-7254",3),("Fritz","mus.Donec@habitantmorbitristique.com","(565) 304-3481",27),("Oscar","sed.pede@Mauris.org","(417) 863-9994",39),("Olympia","Donec@consectetuer.org","(906) 561-6661",23),("Bo","nisl.Quisque.fringilla@ac.co.uk","(689) 825-5157",25),("Brett","sociis@sagittisNullamvitae.co.uk","(195) 725-0045",6),("Forrest","nulla@Etiamlaoreetlibero.co.uk","(212) 782-5015",14),("Bianca","ullamcorper.Duis.at@liberoProin.com","(692) 973-6425",36),("Zenaida","lacinia.mattis@consectetuer.org","(392) 780-0298",30);
INSERT INTO student (name,email,phone,courseID) VALUES ("Peter","lacinia@veliteget.co.uk","(197) 838-5390",41),("Ashton","Fusce.dolor.quam@vestibulumneceuismod.net","(991) 661-7454",41),("Tashya","sollicitudin@Cumsociis.co.uk","(179) 601-6338",42),("Uma","nisi@convallis.org","(253) 958-4357",18),("Isabella","luctus.vulputate@Phasellus.com","(193) 498-1965",31),("Chastity","ridiculus@leoVivamus.net","(921) 472-4666",19),("Reece","iaculis.nec.eleifend@tinciduntvehicularisus.org","(683) 404-9119",19),("Audrey","pede.ultrices.a@temporloremeget.co.uk","(201) 278-5857",31),("September","pede@velit.co.uk","(825) 388-3784",29),("Bradley","semper@Duiscursusdiam.net","(178) 980-5236",30);
INSERT INTO student (name,email,phone,courseID) VALUES ("Keelie","iaculis.lacus@faucibus.com","(157) 310-6884",24),("Dante","leo.Vivamus.nibh@iaculisquispede.ca","(804) 706-0849",6),("Gloria","lorem.ut@vulputateeuodio.net","(411) 624-7257",15),("Garrison","pede.sagittis@risusquis.co.uk","(786) 580-3424",43),("Graiden","orci.tincidunt.adipiscing@ipsumleoelementum.edu","(164) 276-3318",26),("Ebony","gravida.Praesent.eu@Proinnisl.edu","(372) 687-2230",23),("Hall","Curabitur.dictum.Phasellus@commodoipsum.ca","(776) 966-9226",29),("Kylynn","augue.id.ante@asollicitudin.ca","(960) 865-9426",32),("Burke","ipsum.non@vel.com","(733) 788-4406",18),("Cathleen","pharetra.Quisque@imperdietornare.com","(992) 566-4806",26);
INSERT INTO student (name,email,phone,courseID) VALUES ("Aaron","odio@acmattis.ca","(249) 592-9473",4),("Fulton","ligula@Phasellus.co.uk","(771) 623-1127",7),("Gage","libero@ipsum.edu","(867) 273-9212",11),("Vera","Nullam.velit@magna.co.uk","(861) 726-9192",17),("Perry","enim.mi@enimcondimentum.org","(571) 824-5622",6),("Jin","fames@temporest.co.uk","(902) 219-4396",30),("Alexis","egestas.Sed@idblanditat.net","(262) 102-1952",7),("Rahim","dapibus@eunibh.co.uk","(444) 631-9228",41),("Scarlett","Sed@tempordiam.net","(505) 288-6067",1),("Magee","erat@acipsum.org","(310) 822-2465",32);
INSERT INTO student (name,email,phone,courseID) VALUES ("Harlan","convallis.dolor@lectus.net","(721) 825-6984",21),("Tashya","Fusce.aliquet.magna@ut.edu","(574) 188-5656",32),("Willa","elit.pretium@orci.edu","(997) 203-8279",6),("Maisie","egestas.ligula.Nullam@luctus.com","(939) 676-7032",34),("Jana","vitae.purus.gravida@DonecegestasDuis.net","(664) 746-6734",9),("Avram","Cum.sociis.natoque@facilisiSed.ca","(681) 210-9529",3),("Judah","sagittis@vitae.net","(899) 785-8711",20),("Xander","adipiscing@ataugue.net","(388) 944-8952",13),("Yardley","blandit.mattis@lectussit.net","(814) 208-5229",24),("Aladdin","erat@dictum.ca","(947) 515-3767",26);

INSERT INTO teacher(name,phone,officeno,courseID) VALUES ("Amir","(732) 207-6274","(782) 253-4890",23),("Macy","(561) 503-3400","(878) 656-9249",20),("Moana","(824) 175-2847","(881) 740-0838",16),("Ulric","(102) 547-2463","(658) 926-5929",19),("Kermit","(969) 266-0499","(358) 864-4874",15),("Dora","(241) 383-9158","(881) 486-3969",25),("Hector","(623) 539-1725","(884) 669-9007",8),("Aimee","(627) 969-2199","(585) 371-4023",14),("Claire","(223) 408-3509","(206) 619-1073",16),("Kenneth","(304) 253-3590","(465) 984-3446",4);
INSERT INTO teacher(name,phone,officeno,courseID) VALUES ("Amena","(575) 807-5727","(892) 194-5167",19),("Brandon","(279) 358-1751","(649) 508-7935",8),("Ferris","(200) 856-1869","(834) 218-4703",12),("Fatima","(141) 553-4057","(591) 738-5779",25),("Ira","(535) 525-6284","(204) 745-5263",4),("Dominic","(864) 270-1097","(126) 185-9071",2),("Natalie","(135) 761-0347","(101) 714-2806",1),("Thor","(124) 579-4502","(324) 203-4499",18),("Nathaniel","(447) 863-0959","(385) 204-0769",12),("Regan","(776) 616-0878","(192) 412-3208",25);
INSERT INTO teacher(name,phone,officeno,courseID) VALUES ("Malcolm","(333) 212-7442","(226) 954-2565",5),("Barclay","(332) 828-4298","(661) 851-2108",23),("Riley","(659) 983-6558","(862) 147-7748",3),("Jacqueline","(199) 611-9263","(471) 191-6156",17),("Latifah","(413) 236-3198","(502) 769-8734",14),("Vincent","(933) 832-6597","(199) 442-1966",13),("Noelle","(177) 385-6584","(580) 170-0015",25),("Dominic","(481) 403-7027","(795) 202-6711",7),("Levi","(510) 706-2776","(873) 775-7186",9),("Aspen","(883) 976-6401","(923) 289-7407",10);
INSERT INTO teacher(name,phone,officeno,courseID) VALUES ("Grant","(667) 448-7802","(137) 276-2335",18),("Carter","(601) 548-2814","(946) 949-2637",21),("Madeline","(681) 581-5213","(324) 901-2442",21),("Elaine","(105) 392-4315","(638) 431-5758",13),("Germaine","(248) 792-8612","(191) 409-1343",7),("Clementine","(879) 148-1841","(546) 219-5896",6),("Myra","(979) 438-2093","(854) 721-2061",5),("Felix","(548) 806-2624","(339) 906-9471",25),("Joshua","(479) 349-7637","(512) 624-8870",10),("Amal","(810) 976-2032","(581) 159-0575",18);
INSERT INTO teacher(name,phone,officeno,courseID) VALUES ("Leila","(645) 154-2189","(382) 545-9337",11),("Bethany","(597) 269-3730","(887) 390-1994",17),("Dahlia","(917) 183-5488","(208) 861-8846",20),("Rigel","(737) 546-8262","(806) 506-2944",10),("Sasha","(899) 813-6599","(402) 481-9736",9),("Quyn","(670) 879-8233","(522) 326-7934",19),("Jordan","(927) 495-5442","(493) 718-1230",11),("India","(122) 147-6474","(916) 414-6553",19),("Maris","(880) 755-1657","(653) 172-5829",8),("Jael","(969) 441-3119","(436) 168-6022",19);
INSERT INTO teacher(name,phone,officeno,courseID) VALUES ("Alden","(504) 460-6262","(549) 799-4241",23),("Raphael","(371) 410-3807","(249) 684-3920",1),("Leonard","(549) 283-3882","(528) 346-4291",11),("Odette","(617) 646-2919","(549) 226-8955",25),("Delilah","(428) 962-0290","(355) 139-6185",1),("Troy","(555) 776-5934","(449) 228-2651",17),("Nolan","(575) 757-5631","(427) 535-1440",12),("Galena","(456) 471-1010","(557) 809-6096",5),("Ria","(736) 550-0531","(995) 117-5957",3),("Lyle","(192) 316-2527","(576) 230-1664",20);

INSERT INTO teacher (name,phone,officeno,courseID) VALUES ("Ali","1-731-323-9801","1-462-613-2607",41);
INSERT INTO teacher (name,phone,officeno,courseID) VALUES ("Ali","1-731-323-9801","1-462-613-2607",42);
INSERT INTO teacher (name,phone,officeno,courseID) VALUES ("Ali","1-731-323-9801","1-462-613-2607",43);



INSERT INTO course(name) VALUES ("DBMS"),("Web technology"),("Ethical Hacking"),("Java"),("Discrete Mathematics"),("Automata theory"),("Opearating systems"),("Data Structure"),("Computer Networks"),("C++");
INSERT INTO course(name) VALUES ("Software management"),("Software testing"),("BIG DATA"),("IOT"),("C"),("RISK management"),("Computer architecture"),("Algorithms"),("Python"),("Hadoop");
INSERT INTO course(name) VALUES ("Internet fundamentals"),("Elementary Physics"),("Design"),("Ira"),("Aaron"),("Haskell"),("Android"),("Swift"),("Scala"),("Ada");
INSERT INTO course(name) VALUES ("Software design"),("C sharp"),("Mysql"),("PHP"),("Node"),("Mongo Db"),("Genetic algorithms"),("Android"),("Flutter"),("React");
INSERT INTO course(name) VALUES ("Ethics"),("Bussiness"),("Management");


INSERT INTO grade (grade,studentId,courseId) VALUES (39,15,28),(72,90,3),(76,74,36),(54,48,17),(41,69,18),(30,27,15),(60,40,31),(8,21,1),(21,9,4),(73,20,40);
INSERT INTO grade (grade,studentId,courseId) VALUES (18,98,36),(3,10,36),(12,23,38),(100,66,42),(87,80,8),(30,5,24),(93,35,40),(20,100,18),(92,68,9),(54,81,31);
INSERT INTO grade (grade,studentId,courseId) VALUES (57,24,28),(72,38,35),(53,100,27),(7,65,41),(84,34,15),(65,23,34),(17,81,13),(53,69,23),(94,8,7),(37,4,37);
INSERT INTO grade (grade,studentId,courseId) VALUES (3,6,2),(61,9,15),(60,26,21),(42,46,36),(60,60,27),(16,21,36),(15,35,28),(42,7,39),(36,4,28),(59,91,1);
INSERT INTO grade (grade,studentId,courseId) VALUES (12,89,36),(99,46,41),(35,10,27),(45,64,3),(80,20,12),(64,94,14),(26,2,4),(3,65,17),(77,57,42),(76,89,15);
INSERT INTO grade (grade,studentId,courseId) VALUES (48,21,8),(96,57,18),(22,5,21),(47,91,4),(98,78,4),(79,80,27),(40,86,13),(100,48,14),(56,25,37),(81,66,24);
INSERT INTO grade (grade,studentId,courseId) VALUES (41,40,39),(31,35,15),(84,38,6),(99,74,31),(42,95,43),(81,95,5),(79,76,15),(69,97,20),(10,64,38),(33,55,35);
INSERT INTO grade (grade,studentId,courseId) VALUES (56,88,4),(92,60,41),(47,14,20),(9,73,9),(66,87,21),(28,32,17),(51,100,11),(98,29,10),(88,27,4),(35,94,32);
INSERT INTO grade (grade,studentId,courseId) VALUES (62,45,19),(5,63,36),(77,86,19),(41,29,25),(18,98,38),(80,44,27),(98,65,34),(2,47,43),(21,2,23),(5,93,20);
INSERT INTO grade (grade,studentId,courseId) VALUES (20,88,39),(44,63,30),(92,62,33),(30,83,16),(1,40,18),(78,3,33),(59,11,3),(89,86,6),(42,25,9),(50,70,13);

select * from course;
select * from teacher;
select * from student;
select * from grade;

/*Teacher teaching courses*/
select teacher.name as "Teacher name",course.name as "Course name"
from teacher
join course on teacher.courseId = course.id
ORDER BY teacher.name;

/*Students enrolled in course*/
select student.name as "Student name",course.name as "Course"
from student
join course on student.courseId = course.id
order by course.name;


/*Query which show tecaher ali courses*/
select teacher.name as "Teacher Name",course.name as "Course Name"
from teacher
join course on teacher.courseId = course.id
where teacher.name = "ali";

/*Students with grade greater than 10*/
select student.name as "Student Name",course.name as "Course Name",grade as "Grade"
from student
join grade on grade.studentId = student.id
join course on course.id = student.courseId
where grade.grade > 10;

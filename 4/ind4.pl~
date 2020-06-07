ans:- rodom(X,moscow),write(X),!.

student(X):- X=sergey; X=boris; X=leonid; X=grigoriy; X=victor.
goroda(Y):- Y=penza; Y=lvov; Y=moscow; Y=harkov; Y=riga.

student_na(boris,penza).      %Борис родом из Риги, сделанном в Пензе.
student_na(viktor,moscow).    %У Виктора велосипед из Москвы.
student_na(grigoriy,harkov).  %У Григория велосипед из Харькова.
student_na(sergey,riga).      %Сергей едет на велосипеде, сделанном в Риге.

birth(boris,riga).            %Борис родом из Риги.
birth(viktor,lvov).           %Виктор родом из Львова.

velo(Person,City):-student(Person), goroda(City), student_na(Person,City),!;
student(Person),goroda(City), not(student_na(Person,_)), not(student_na(_,City)).

%Уроженец Пензы едет на велосипеде, сделанном на родине Леонида.
penza_test(Person):-student(Person), X=penza, not(birth(Person,_)), goroda(Unknown), not(Unknown=X),velo(Person,Unknown), rodom(viktor,Unknown). %

%Предикат выясняющий кто родом из Москвы
rodom(Person,X):-student(Person), goroda(X), birth(Person,X),!;
student(Person),not(Person=viktor),X=penza,penza_test(Person),!;
student(Person),goroda(X),not(birth(_,X)),Person=viktor, not(X=penza), student(Person),not(birth(Person,_)),velo(Person,X);
student(Person),not(Person=viktor),goroda(X),not(X=penza),not(birth(_,X)),not(birth(Person,_)),goroda(City),not(City=X),velo(Person,City),not(rodom(viktor,X)),not(rodom(viktor,city)),!.

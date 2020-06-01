ans:- rodom(X,moscow),write(X),!.

student(X):- X=sergey; X=boris; X=leonid; X=grigoriy; X=victor.
goroda(Y):- Y=penza; Y=lvov; Y=moscow; Y=harkov; Y=riga.

student_na(boris,penza).      %����� ����� �� ����, ��������� � �����.
student_na(viktor,moscow).    %� ������� ��������� �� ������.
student_na(grigoriy,harkov).  %� �������� ��������� �� ��������.
student_na(sergey,riga).      %������ ���� �� ����������, ��������� � ����.

birth(boris,riga).            %����� ����� �� ����.
birth(viktor,lvov).           %������ ����� �� ������.

velo(Person,City):-student(Person), goroda(City), student_na(Person,City),!;
student(Person),goroda(City), not(student_na(Person,_)), not(student_na(_,City)).

%�������� ����� ���� �� ����������, ��������� �� ������ �������.
penza_test(Person):-student(Person), X=penza, not(birth(Person,_)), goroda(Unknown), not(Unknown=X),velo(Person,Unknown), rodom(viktor,Unknown). %

%�������� ���������� ��� ����� �� ������
rodom(Person,X):-student(Person), goroda(X), birth(Person,X),!;
student(Person),not(Person=viktor),X=penza,penza_test(Person),!;
student(Person),goroda(X),not(birth(_,X)),Person=viktor, not(X=penza), student(Person),not(birth(Person,_)),velo(Person,X);
student(Person),not(Person=viktor),goroda(X),not(X=penza),not(birth(_,X)),not(birth(Person,_)),goroda(City),not(City=X),velo(Person,City),not(rodom(viktor,X)),not(rodom(viktor,city)),!.

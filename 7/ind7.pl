read_str(A):-get0(X),r_str(X,A,[]).
r_str(10,A,A):-!.
r_str(X,A,B):-append(B,[X],B1),get0(X1),r_str(X1,A,B1).


:-dynamic pol/2.
pol_r(X,Y):-repeat,(pol(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(pol(X,Y))); X=nil, Y=nil).
read_pol(-1):-!.
read_pol(_):-read_str(Lang), name(X,Lang),read(Y),asserta(pol(X,Y)), get0(Sym),read_pol(Sym).
pr_pol_t:-tell('c:/pr/1.txt'), pol_r(X,_), X=nil, told.
pr_pol_s:-see('c:/pr/1.txt'), get0(Sym), read_pol(Sym), seen.


:-dynamic age/2.
age_r(X,Y):-repeat,(age(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(age(X,Y))) ;X=nil,Y=nil).
read_age(-1):-!.
read_age(_):- read_str(Lang),name(X,Lang),read(Y),asserta(age(X,Y)),get0(Sym),read_age(Sym).
pr_age_t:-tell('c:/pr/2.txt'),age_r(X,_),X=nil,told.
pr_age_s:-see('c:/pr/2.txt'), get0(Sym), read_age(Sym),seen.


:-dynamic mag/2.
mag_r(X,Y):-repeat,(mag(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(mag(X,Y))); X=nil, Y=nil).
read_mag(-1):-!.
read_mag(_):-read_str(Lang), name(X,Lang),read(Y),asserta(mag(X,Y)), get0(Sym),read_mag(Sym).
pr_mag_t:-tell('c:/pr/3.txt'), mag_r(X,_), X=nil, told.
pr_mag_s:-see('c:/pr/3.txt'), get0(Sym), read_mag(Sym), seen.


:-dynamic tech/2.
tech_r(X,Y):-repeat,(tech(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(tech(X,Y))); X=nil, Y=nil).
read_tech(-1):-!.
read_tech(_):-read_str(Lang), name(X,Lang),read(Y),asserta(tech(X,Y)), get0(Sym),read_tech(Sym).
pr_tech_t:-tell('c:/pr/4.txt'), tech_r(X,_), X=nil, told.
pr_tech_s:-see('c:/pr/4.txt'), get0(Sym), read_tech(Sym), seen.

:-dynamic dem/2.
dem_r(X,Y):-repeat,(dem(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(dem(X,Y))); X=nil, Y=nil).
read_dem(-1):-!.
read_dem(_):-read_str(Lang), name(X,Lang),read(Y),asserta(dem(X,Y)), get0(Sym),read_dem(Sym).
pr_dem_t:-tell('c:/pr/5.txt'), dem_r(X,_), X=nil, told.
pr_dem_s:-see('c:/pr/5.txt'), get0(Sym), read_dem(Sym), seen.

:-dynamic rev/2.
rev_r(X,Y):-repeat,(rev(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(rev(X,Y))); X=nil, Y=nil).
read_rev(-1):-!.
read_rev(_):-read_str(Lang), name(X,Lang),read(Y),asserta(rev(X,Y)), get0(Sym),read_rev(Sym).
pr_rev_t:-tell('c:/pr/6.txt'), rev_r(X,_), X=nil, told.
pr_rev_s:-see('c:/pr/6.txt'), get0(Sym), read_rev(Sym), seen.

:-dynamic star/2.
star_r(X,Y):-repeat,(star(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(star(X,Y))); X=nil, Y=nil).
read_star(-1):-!.
read_star(_):-read_str(Lang), name(X,Lang),read(Y),asserta(star(X,Y)), get0(Sym),read_star(Sym).
pr_star_t:-tell('c:/pr/7.txt'), star_r(X,_), X=nil, told.
pr_star_s:-see('c:/pr/7.txt'), get0(Sym), read_star(Sym), seen.

question1(X1):-	write("Ваш персонаж мужского пола?"),nl,
				write("2. Сложно сказать"),nl,
				write("1. Да"),nl,
				write("0. Нет"),nl,
				read(X1).

question2(X2):-	write("Ваш персонаж бессмертный/долгожитель?"),nl,
				write("1. Да"),nl,
				write("0. Нет"),nl,
				read(X2).

question3(X3):-	write("Ваш персонаж владеет магией?"),nl,
				write("1. Да"),nl,
				write("0. Нет"),nl,
				read(X3).

question4(X4):-	write("Какое оружие использует ваш персонаж?"),nl,
				write("4. Вжух!"),nl,
				write("3. И тут я начинаю шмалять"),nl,
				write("2. Топор"),nl,
				write("1. Меч"),nl,
				write("0. Другое"),nl,
				read(X4).

question5(X5):-	write("К какому региону принадлежит ваш персонаж?"),nl,
				write("11. Сумрачные острова"),nl,
				write("10. Ишталь"),nl,
				write("9. Таргон"),nl,
				write("8. Шурима"),nl,
				write("7. Пилтовер и Заун"),nl,
				write("6. Билджвотер"),nl,
				write("5. Демасия"),nl,
				write("4. Фрельорд"),nl,
				write("3. Иония"),nl,
				write("2. Ноксус"),nl,
				write("1. Демасия"),nl,
				write("0. Другой"),nl,
				read(X5).
				
question6(X6):-	write("Вашего персонажа реворкали?"),nl,
				write("2. Йооорик"),nl,
				write("1. Да"),nl,
				write("0. Нет"),nl,
				read(X6).
				
question7(X7):-	write("Ваш персонаж является частью вселенной звёздных защитников?"),nl,
				write("1. Да"),nl,
				write("0. Нет"),nl,
				read(X7).
a:- pred,

    pr_pol_s, pr_age_s, pr_mag_s, pr_tech_s, pr_dem_s, pr_rev_s, pr_star_s,

    question1(X1),question2(X2),question3(X3),question4(X4),question5(X5),question6(X6),question7(X7),
	prov(X1,X2,X3,X4,X5,X6,X7).

prov(X1,X2,X3,X4,X5,X6,X7):-otvet(X1,X2,X3,X4,X5,X6,X7),!.
prov(X1,X2,X3,X4,X5,X6,X7):-add(X1,X2,X3,X4,X5,X6,X7).

otvet(X1,X2,X3,X4,X5,X6,X7):-pol(X,X1),age(X,X2),mag(X,X3),tech(X,X4),dem(X,X5),rev(X,X6),star(X,X7),
write("Ваш персонаж:\n"),write(X),!.

add(X1,X2,X3,X4,X5,X6,X7):-
    write("Я проиграл.:("), nl,
    write("Введите имя персонажа и в следующий раз я отвечу!"), nl,get0(E),
    read_line_to_codes(user_input,Name),
    name(Q,Name), write(Name),nl,asserta(pol(Q,X1)),asserta(age(Q,X2)),asserta(mag(Q,X3)),
    asserta(tech(Q,X4)),asserta(dem(Q,X5)),asserta(rev(Q,X6)),asserta(star(Q,X7)), rel,!.


rel:-pr_pol_t, pr_age_t, pr_mag_t, pr_tech_t, pr_dem_t, pr_rev_t, pr_star_t, pred,
        pr_pol_s, pr_age_s, pr_mag_s, pr_tech_s, pr_dem_s, pr_rev_s, pr_star_s.

pred:-retractall(pol(X,Y)),retractall(age(X,Y)),retractall(mag(X,Y)),retractall(tech(X,Y)),
retractall(dem(X,Y)), retractall(rev(X,Y)),retractall(star(X,Y)).


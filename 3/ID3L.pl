st:-read_line_to_codes(user_input,Q), sqr(Q, 0).

sqr([H], Counter):-name(Q,[H]), write(Q),Counter1 is Counter + 1, write(Counter1),!.
sqr([H1|[H2|T]],Counter):- (H1 = H2 -> Counter1 is Counter + 1, sqr([H2|T],Counter1),!; name(Q,[H1]), write(Q),Counter1 is Counter + 1, write(Counter1), sqr([H2|T],0)).

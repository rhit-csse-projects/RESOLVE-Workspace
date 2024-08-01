Precis Boolean_Theory;
	uses Set_Theory;

    -- all definitions are syntactic place holders

	Definition (a : B) implies (b : B) : B = not(a) or b;
	
	Definition (a : B) iff (b : B) : B = (a implies b) and (b implies a);

    (*Math Type B: SSet;

    Definition False: B;

    Definition neg: B -> B;

    Definition conj: B x B -> B;

    --------------------------------------------------------------

    Definition not (b: B): B = neg(b);

    Definition (a: B) and (b: B): B = conj(a, b);

    --------------------------------------------------------------

    Definition True: B = not False;

    Definition (a: B) or (b: B): B = not (not(a) and not(b));

    Definition (a: B) implies (b: B): B = not(a) or b;

    Definition (a: B) iff (b: B): B = (a implies b) and (b implies a);

    Definition (a: B) xor (b: B): B = (a or b) and not (a and b);*)

end Boolean_Theory;

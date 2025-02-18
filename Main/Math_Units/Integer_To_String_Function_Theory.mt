Precis Integer_To_String_Function_Theory;
	--uses String_Theory, Integer_Domain_Function_Theory;
	uses Integer_Theory, String_Theory;

	Definition Stringify_Z_Entity: (Z->Entity)->(Z->Prime_Str);
	
	(* Note: Under Construction! *)

	(*
	Theorem Stringify_Z_Entity_1: -- (Stringify_Z_Entity(F))(i) = <F(i)>
		For all F:Z->Entity,
		For all G:Z->Prime_Str,
		For all e:Entity,
		For all i:Z,
			Stringify_Z_Entity(F) = G and
			F(i) = e implies
				G(i) = <e>;

	Theorem Z_Entity_Stringify_Composition:
		For all i:Z,
		For all F,G:Z->Entity,
			Eq_Except_On(F,G,i) =
			Eq_Except_On(Stringify_Z_Entity(F),Stringify_Z_Entity(G),i) ;
	
	Definition Stringify_Mod_Z_Entity: (Z * (Z->Entity))->(Z->Prime_Str);
	-- (Stringify_Mod_Z_Entity(m,F))(i) = <F(i mod m)>	
	
	Theorem Stringify_Mod_Z_Entity_1:
		For all i,m:Z,
		For all F,G:Z->Entity,
		For all e:Entity,
			Stringify_Mod_Z_Entity(m,F) = G and
			F(i mod m) = e implies
				G(i mod m) = <e>;
				
	Theorem Mod_Z_Entity_Stringify_Composition:
		For all i,m:Z,
		For all F,G:Z->Entity,
			Eq_Except_On(F,G,i mod m) =
			Eq_Except_On(Stringify_Z_Entity(F),Stringify_Z_Entity(G),i mod m) ;	
					
    Definition Iterated_Concatenation(m : Z, n : Z, F: Z->SStr): SStr;
	
	Theorem Iterated_Concat_of_Prime_Str_Length_1:
		For all i:Z,
		For all n:N,
		For all F:Z->Prime_Str,
			0 <= i and |Iterated_Concatenation(1,i,F)| = n 
				implies n = i;
	
	Theorem Iterated_Concat_of_Prime_Str_Length_2:
		For all n:Z,
		For all F:Z->Prime_Str,
			|Iterated_Concatenation(n,n,F)| = 1;

	Theorem Iterated_Concat_of_Prime_Str_Length_3:
		For all m,n,i:Z,
		For all F:Z->Prime_Str,
			m <= n and |Iterated_Concatenation(m,n,F)| = i implies i = 1 + m + (-n);	
								
	Theorem Iterated_Concat_of_Prime_Str_Length_4_a:
		For all i,j,k:Z,
		For all F:Z->Prime_Str,
			j + 1 <= i and |Iterated_Concatenation(i,j,F)| = k implies k = 0;	
			
	Theorem Iterated_Concat_of_Prime_Str_Length_4_b:
		For all i,j:Z,
		For all s:SStr,
		For all F:Z->Prime_Str,
			j + 1 <= i and Iterated_Concatenation(i,j,F) = s implies s = Empty_String;
	
	-- 	For VCs where <= or + not used	
	Theorem Iterated_Concat_of_Prime_Str_3_c:
		For all s:SStr,
		For all F:Z->Prime_Str,
			Iterated_Concatenation(1,0,F) = Empty_String;
			
	Theorem Iterated_Concat_End_Cat:
		For all m, n: Z,
		For all F: Z->Prime_Str,	
		For all s: SStr,
			(m <= n + 1 and 
			Iterated_Concatenation(m, n + 1, F) = s) implies
			Iterated_Concatenation(m, n, F) o F(n + 1) = s;

	Theorem Iterated_Concat_Eq_On_Interval_1:
		For all m, n, i: Z,
		For all F,G: Z->Prime_Str,
		Eq_Except_On(F,G,i) and
		(m <= n + 1 <=i) implies
			Iterated_Concatenation(m,n,F) = Iterated_Concatenation(m,n,G);
			
	Theorem Iterated_Concat_Eq_On_Interval_2:
		For all m, n, i: Z,
		For all F,G: Z->Prime_Str,
		Eq_Except_On(F,G,i) and
		(i + 1 <= m <= n) implies
			Iterated_Concatenation(m,n,F) = Iterated_Concatenation(m,n,G);
	*)
end Integer_To_String_Function_Theory;
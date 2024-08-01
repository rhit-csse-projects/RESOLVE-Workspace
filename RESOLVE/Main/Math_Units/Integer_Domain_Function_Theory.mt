Precis Integer_Domain_Function_Theory;
	uses Integer_Theory;

	Definition Eq_Except_On(F:Z->Entity,G:Z->Entity,i:Z):B;

	Theorem Eq_Except_On_Def:
	For all i,j:Z,
	For all F,G:Z->Entity,
		Eq_Except_On(F,G,i) = (i = j or F(j) = G(j));
	
	Theorem Except_On_1: -- Reflexive
	For all i:Z,
	For all F:Z->Entity,
		Eq_Except_On(F,F,i);
			
    Theorem Except_On_2: 
    For all F,G:Z->Entity,
    For all i:Z,
    	(Eq_Except_On(F,G,i) and F(i) = G(i)) implies F = G;

    Theorem Except_On_: -- Symmetric
    For all F,G:Z->Entity,
    For all i:Z,
    	Eq_Except_On(F,G,i) = Eq_Except_On(G,F,i);

    Theorem Except_On_3: -- Transitive
    For all F,G,H:Z->Entity,
    For all i:Z,
    	Eq_Except_On(F,G,i) and Eq_Except_On(G,H,i) implies Eq_Except_On(F,H,i);

   Definition Property_Holds(f:Z->Entity,lower_bound:Z,upper_bound:Z,p:Z->B):B;
   Theorem Property_Holds_def:
   	For all f:Z->Entity,
   	For all p:Z->B,
   	For all i,l,u:Z,
   		Property_Holds(f,l,u,p) and l <= i and i <= u implies p(i);

	Theorem Property_Holds_1:
   	For all f:Z->Entity,
   	For all p:Z->B,
   	For all i:Z,
   		Property_Holds(f,i,i,p) = p(i);  
   
   -- Quant is second Arg to rel.		
   Definition Relation_Holds(f:Z->Entity,l:Z, u:Z, first_arg:Entity, p:(Entity * Entity)->B):B;
   
   Theorem Relation_Holds_Def:
   For all f:Z->Entity,
   For all r:(Entity*Entity)->B,
   For all e:Entity,
   For all i,j,k:Z,
   		(i <= k and k <= j and Relation_Holds(f,i,j,e,r)) implies r(e,f(k));
   		
   Theorem Relation_Holds_1:
   For all f:Z->Entity,
   For all r:(Entity*Entity)->B,
   For all e:Entity,
   For all i:Z,
   		Relation_Holds(f,i,i,e,r) = r(e,f(i));	 

   Theorem Relation_Holds_2:
   For all f:Z->Entity,
   For all r:(Entity*Entity)->B,
   For all e:Entity,
   For all i,j:Z,
   		(i <= j and Relation_Holds(f,i,j+1,e,r)) = 
   		(Relation_Holds(f,i,j,e,r) and r(e,f(j+1)));	 
   		   			
   Definition Is_Ordered(f:Z->Entity,lower_bound:Z,upper_bound:Z,order:(Entity*Entity)->B):B;
   Theorem Is_Ordered_1:
   For all f:Z->Entity,
   For all e:Entity,
   For all lower_bound,upper_bound,i:Z,
   For all order:(Entity*Entity)->B,
      Is_Ordered(f,lower_bound,upper_bound,order) and
      lower_bound <= i and i + 1 <= upper_bound and 
      f(i) = e implies order(e,f(i + 1));
   
   Definition Occ_Ct_In_Range(f:Z->Entity,key:Entity,lower_bound:Z,upper_bound:Z):N;
   
   -- Not using iff for 1 and 2 to restrict matches for "f" to arguments of Occ_Ct_In_Range
   -- You CAN use iff, but then you get lots of useless matches.
   Theorem Occ_Ct_In_Range_1:
   For all f:Z->Entity,
   For all i:Z,
   For all key:Entity,   		
   		(Occ_Ct_In_Range(f,key,i,i) = 1) implies (f(i) = key);

   Theorem Occ_Ct_In_Range_1_a:
   For all f:Z->Entity,
   For all i,j:Z,
   For all key:Entity,   		
   		(Occ_Ct_In_Range(f,key,i,i) = j) and (f(i) = key) implies j = 1;   
   				
   Theorem Occ_Ct_In_Range_2:
   For all f:Z->Entity,
   For all i:Z,
   For all key:Entity,   		
   		(Occ_Ct_In_Range(f,key,i,i) = 0) implies (f(i) /= key);

   Theorem Occ_Ct_In_Range_2a:
   For all f:Z->Entity,
   For all i,j:Z,
   For all key:Entity,   		
   		(Occ_Ct_In_Range(f,key,i,i) = j) and (f(i) /= key) implies j = 0;
   		
   Theorem Occ_Ct_In_Range_3:
   For all f:Z->Entity,
   For all i,j,k:Z,
   For all key:Entity,   		
   		j + 1 <= i and (Occ_Ct_In_Range(f,key,i,j) = k) implies k = 0;
   		
   Theorem Occ_Ct_In_Range_4a:
   For all f:Z->Entity,
   For all i,j,k,m:Z,
   For all key:Entity,   		
   		1 <= j and (Occ_Ct_In_Range(f,key,i,i + j) = m) implies
   			 m = (Occ_Ct_In_Range(f,key,i,i) + Occ_Ct_In_Range(f,key,i + 1, i + j));		

   Theorem Occ_Ct_In_Range_4b:
   For all f:Z->Entity,
   For all i,j,k,m:Z,
   For all key:Entity,   		
   		i <= j + 1 and (Occ_Ct_In_Range(f,key,i,j + 1) = m) implies
   			 m = ((Occ_Ct_In_Range(f,key,i,j) + Occ_Ct_In_Range(f,key, j + 1, j + 1)));
   			    			 
   Theorem Occ_Ct_In_Range_5_a:
   For all f:Z->Entity,
   For all lb,ub,i:Z,
   For all key:Entity,
   		((f(i) = key) and (lb <= i and i <= ub)) implies  (1 <= Occ_Ct_In_Range(f,key,lb,ub));
   		
   Theorem Occ_Ct_In_Range_5_b:
   For all f:Z->Entity,
   For all lb,ub,i:Z,
   For all key:Entity,
   		(Occ_Ct_In_Range(f,key,lb,ub) = i and lb <= ub + 1) implies i <= (ub + (-lb) + 1);
   		
(*   Theorem Occ_Ct_In_Range_5_c:
   For all f:Z->Entity,
   For all lb,ub:Z,
   For all key:Entity,
   		Occ_Ct_In_Range(f,key,lb,ub) <= Occ_Ct_In_Range(f,key,lb,ub + 1);
*)

end Integer_Domain_Function_Theory;
Precis Natural_Number_Theory;
	uses Monogenerator_Theory, Basic_Properties;
	
Categorical Definition introduces
	N : SSet,
	0 : N,
	suc : N -> N
related by
	Is_Monogeneric_for(N, 0, suc);

Inductive Definition (m : N) + (n : N) : N is
	(i.) m + 0 = m;
	(ii.) m + suc(n) = suc(m + n);
	
Corollary Plus_1:
	Is_Right_Identity_for(op +, 0);

-- Plus_1 restated
Corollary Plus_1a:
	For all n:N,
		n + 0 = n;

Theorem N1:
	Is_Associative(op +);

-- N1 restated	
Theorem N1_a:
	For all k,m.n:N,
		(k + m) + n = k + (m + n);
					
Theorem N2:
	Is_Left_Identity_for(op +, 0);

-- N2 restated
Theorem N2_a:
	For all n:N,
		0 + n = n;

	
Corollary N2_1:
	Is_Monoid(N, 0, op +);
	
Theorem N3:
	For all m, n : N,
		suc(m) + n = suc(m + n);

Theorem N4:
	Is_Commutative(op +);

-- N4 restated
Theorem N4_a:
	For all m,n: N,
		m + n = n + m;

	
Corollary N4_1:
	Is_Abelian_Monoid(N, 0, op +);
	
Theorem N5:
	Is_Right_Cancelative(op +);

--N5 restated
Theorem N5a:
	For all k,m,n: N,
		m + k = n + k implies m = n;

-- A left cancelative version
-- Check if this is necessary
Theorem N5b:
	For all k,m,n: N,
		k + m = k + n implies m = n;

	
Theorem N6:
	For all n : N,
		n = 0 or 
		(There exists p : N,
			n = suc(p));
			
Corollary N6_1:
	not(Is_Factorable_for(op +, 0));
	
Definition 1 : N = suc(0);
Definition 2 : N = suc(1);
Definition 3 : N = suc(2);
Definition 4 : N = suc(3);
Definition 5 : N = suc(4);
Definition 6 : N = suc(5);
Definition 7 : N = suc(6);
Definition 8 : N = suc(7);
Definition 9 : N = suc(8);

Corollary Def1_1:
	For all n : N,
		suc(n) = n + 1;
		
Corollary Def2_a:
	1 + 1 = 2;

Corollary Def3_a:
	1 + 2 = 3;
	
Corollary Def4a:
	1 + 3 = 4;
	
Corollary Def5a:
	1 + 4 = 5;
	
Corollary Def6a:
	1 + 5 = 6;
	
Corollary Def7a:
	1 + 6 = 7;
	
Corollary Def8a:
	1 + 7 = 8;
	
Corollary Def9a:
	1 + 8 = 9;
				
(*Theorem N7:
	For all S : Powerset(N),
		({0, 1} is_subset_of S and
		(For all m, n : S, m + n is_in S)) implies
			S = N;*)
			
Definition Is_Alg_N_N_Like(D : SSet, i : D, g : D, f : D * D -> D) : B;

Corollary Alg_1:
	Is_Alg_N_N_Like(N, 0, 1, op +);
	
(*Theorem N8:
	For all D : SSet,
	For all i, g : D,
	For all f : D * D -> D,
		(Is_Alg_N_N_Like(D, i, g, f)) implies
		(not(There exists h : N -> D,
			(h(1) = g) and (For all m : N,
				m = 0 and (For all n : N,
				m = 0 and (For all n : N,
					h(m + n) = f(h(m), h(n)) and Is_Bijective(h))) implies
						h(m) = i)));*)

Definition (m : N) <= (n : N) : B =
	There exists i : N,
		m + i = n;
		
Theorem N9:
	Is_Total_Ordering(op <=);

-- check if this is necessary
Theorem N9_a:
	For all m,n:N,
		m <= n or n <= m;

Corollary LTE_1:
	Is_Transitive(op <=);
	
Theorem LTE_1a: 
	For all k,m,n:N,
    		k <= m and m <= n implies k <= n;

Corollary LTE_2: -- Is_Antisymmetric(<=)
    For all m,n:N,
    	(m <= n and n <= m) implies (m = n);

Corollary LTE_3a: --Is_Reflexive(<=) -- implied by Is_Total
    For all n:N,
    	n <= n;

Theorem N10:
	Is_Preserved_by(op +, op <=);

-- New restatement of N10 below
Theorem N10_a:
	For all k,m,n:N,
		k <= m implies k + n <= m + n;

Theorem N10_b:
	For all k,m,n:N,
		k + n <= m + n implies k <= m;


Theorem NN_LTE_Addition_a:
	For all m,n:N,
		m <= m + n;

Theorem NN_LTE_Addition_b:
	For all k,m,n:N,
		k + m <= n implies k <= m and m <= n;


(*						
Theorem Not_LTE_1:
	For all n:N,
		not(1 <= n) = (n = 0);
*)
-- restatement below

Theorem Not_LTE_1a:
	For all n:N,
		(n <= 1) implies (n = 0);
		
Theorem Zero_min:
	For all n:N,
		0 <= n;
		
--Definition monus (m:N, n:N) : N;	

end Natural_Number_Theory;
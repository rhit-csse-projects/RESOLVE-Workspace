Precis Basic_Properties;
	uses Boolean_Theory, Set_Theory;

----------------- Basic_Binary_Relation_Properties -----------------

Definition Is_Reflexive(f : (D : SSet) * D -> B) : B = 
	For all x : D,
		f(x, x);

Definition Is_Transitive(f : (D : SSet) * D -> B) : B =
	For all x, y, z : D,
		f(x, y) and f(y, z) implies f(x, z);

Definition Is_Symmetric(f : (D : SSet) * D -> B) : B = 
	For all x, y : D,
		f(x, y) implies f(y, x);

Definition Is_Antisymmetric(f : (D : SSet) * D -> B) : B =
	For all x, y : D,
		f(x, y) implies not(f(y, x));

Definition Is_Asymmetric(f : (D : SSet) * D -> B) : B =
	For all x, y : D,
		f(x, y) implies not(f(y, x));

Definition Is_Irreflexive(f : (D : SSet) * D -> B) : B =
	For all x : D,
		not(f(x, x));

Theorem Rln1:
	For all D : SSet,
	For all f : (D * D) -> B,
		Is_Transitive(f) implies (Is_Irreflexive(f) iff 
			Is_Antisymmetric(f));

Definition Is_Total(f : (D : SSet) * D -> B) : B = 
	For all x, y : D,
		f(x, y) or f(y, x);

Theorem Rln2:
	For all D : SSet,
	For all f : (D * D) -> B,
		Is_Total(f) implies Is_Reflexive(f);

Definition Is_Trichotomous(f : (D : SSet) * D -> B) : B =
	For all x, y : D,
		f(x, y) or x = y or f(y, x);

Definition Is_Transposes_under(f : (D : SSet) -> D, g : D * D -> B) : B =
	For all x, y : D,
		g(x, y) implies g(f(y), f(x));

Definition Is_Preserved_by(f : (D : SSet) * D -> D, g : D * D -> B) : B =
	For all x, y, z : D,
		g(x, y) implies g(f(x, z), f(y, z));

----------------- Basic_Ordering_Properties -----------------

Definition Is_Preordering(f : (D : SSet) * D -> B) : B = 
	Is_Reflexive(f) and Is_Transitive(f);

Definition Is_Partial_Ordering(f : (D : SSet) * D -> B) : B = 
	Is_Preordering(f) and Is_Antisymmetric(f);

Definition Is_Total_Preordering(f : (D : SSet) * D -> B) : B = 
	Is_Transitive(f) and Is_Total(f);

	Corollary Is_Total_Preordering_1:
		For all D : SSet,
		For all f : (D * D) -> B,
			Is_Total_Preordering(f) implies Is_Preordering(f);

Definition Is_Total_Ordering(f : (D : SSet) * D -> B) : B = 
	Is_Total_Preordering(f) and Is_Antisymmetric(f);

-- YS: The definition for this one won't typecheck.
Definition Is_Well_Ordering(f : (D : SSet) * D -> B) : B;

	Corollary Is_Well_Ordering_1:
		For all D : SSet,
		For all f : (D * D) -> B,
			Is_Well_Ordering(f) implies Is_Total_Ordering(f);

	Corollary Is_Well_Ordering_2:
		For all D : SSet,
		For all f : (D * D) -> B,
			Is_Well_Ordering(f) implies
				(For all I : Powerset(D),
					(For all y : D,
						({x : D | f(x, y) and x /= y} is_subset_of I) implies
							y is_in I)
				implies I = D);

-- YS: The definition for this one won't typecheck.
-- Also missing the corresponding corollary.		
Definition Is_Up_Complete_Ordering(f : (D : SSet) * D -> B) : B;

Definition Is_Strict_Partial_Ordering(f : (D : SSet) * D -> B) : B =
	Is_Transitive(f) and Is_Irreflexive(f);

Definition Is_Strict_Ordering(f : (D : SSet) * D -> B) : B =
	Is_Strict_Partial_Ordering(f) and Is_Trichotomous(f);

Definition Is_Dense_Ordering(f : (D : SSet) * D -> B) : B =
	Is_Strict_Partial_Ordering(f) and
		(For all x, z : D,
			f(x, z) implies 
				(There exists y : D such that
					f(x, y) and f(y, z)));

----------------- Basic_Function_Properties -----------------

Definition Is_Identity(f : (D : SSet) -> D) : B = 
	For all x : D,
		f(x) = x;

Definition Is_Injective(f: (D : SSet) -> (R : SSet)): B = 
	For all x, y : D,
		f(x) = f(y) implies x = y;

Definition Is_Surjective(f: (D : SSet) -> (R : SSet)): B = 
	For all y : R,
		There exists unique x : D such that
			f(x) = y;

Definition Is_Bijective(f : (D : SSet) -> (R : SSet)) : B =
	Is_Injective(f) and Is_Surjective(f);

----------------- Basic_Binary_Operation_Properties -----------------

Definition Is_Associative(f : (D : SSet) * D -> D) : B = 
	For all x, y, z : D,
		f(x, f(y, z)) = f(f(x, y), z);

Definition Is_Commutator_for(f : (D : SSet) * D -> D, c : D) : B = 
	For all y : D,
		f(c, y) = f(y, c);

Definition Is_Commutative(f : (D : SSet) * D -> D) : B = 
	For all x, y : D,
		f(x, y) = f(y, x);

Definition Is_Right_Cancelable_for(f : (D : SSet) * D -> D, c : D) : B =
	For all x, y : D,
		f(x, c) = f(y, c) implies x = y;

Definition Is_Right_Cancelative(f : (D : SSet) * D -> D) : B =
	For all c : D,
		Is_Right_Cancelable_for(f, c);

Definition Is_Right_Identity_for(f : (D : SSet) * D -> D, i : D) : B = 
	For all x : D,
		f(x, i) = x;

Definition Is_Left_Identity_for(f : (D : SSet) * D -> D, j : D) : B =
	For all x : D,
		f(j, x) = x;

Definition Is_Identity_for(f : (D : SSet) * D -> D, i : D) : B =
	Is_Right_Identity_for(f, i) and Is_Left_Identity_for(f, i);
	
Theorem Op1:
	For all D : SSet,
	For all f : D * D -> D,
	For all i, j : D,
		(Is_Right_Identity_for(f,i) and Is_Left_Identity_for(f, j)) implies i = j;

Definition Is_Right_Invertable_for(f : (D : SSet) * D -> D, x : D) : B =
	There exists y, i : D such that
		Is_Right_Identity_for(f, i) and f(x, y) = i;
		
Theorem Op2:
	For all D : SSet,
	For all f : D * D -> D,
	For all x : D,
		(Is_Associative(f) and Is_Right_Invertable_for(f, x)) implies Is_Right_Cancelable_for(f, x);

Definition Is_Inverse_for(f : (D : SSet) * D -> D, i : D, g : D -> D) : B =
	Is_Identity_for(f, i) and 
		(For all x : D,
			(f(x, g(x)) = f(g(x), x)) = i);
			
Definition Is_Right_Distributive_over(f : (D : SSet) * D -> D, g : D * D -> D) : B =
	For all x, y, z : D,
		g(f(x,y), z) = f(g(x, z), g(y, z));
		
Definition Is_Left_Distributive_over(f : (D : SSet) * D -> D, g : D * D -> D) : B =
	For all x, y, z : D,
		g(x, f(y, z)) = f(g(x, y), g(x, z));
		
Definition Is_Distributive_over(f : (D : SSet) * D -> D, g : D * D -> D) : B =
	Is_Right_Distributive_over(f, g) and Is_Left_Distributive_over(f, g);
	
Definition Is_Right_Zero_for(f : (D : SSet) * D -> D, z : D) : B =
	For all x : D,
		f(x, z) = z;
		
Definition Is_Left_Zero_for(f : (D : SSet) * D -> D, z : D) : B =
	For all x : D,
		f(z, x) = z;
		
	Corollary Is_Left_Zero_for_1:
		For all D : SSet,
		For all f : D * D -> D,
		For all zr, zl : D,
			(Is_Right_Zero_for(f, zr) and Is_Left_Zero_for(f, zl)) implies zr = zl;

Definition Is_Zero_for(f : (D : SSet) * D -> D, z : D) : B =
	Is_Right_Zero_for(f, z) and Is_Left_Zero_for(f, z);

Definition Is_Factorable_for(f : (D : SSet) * D -> D, a : D) : B = 
	There exists x, y : D such that
		(f(x, y) = a) and ((x /= a) /= y);
		
----------------- Basic_Algebraic_Structures -----------------

Definition Is_Semigroup(D : SSet, f : D * D -> D) : B =
	Is_Associative(f);

Definition Is_Monoid(D : SSet, i : D, f : D * D -> D) : B =
	Is_Semigroup(D, f) and Is_Identity_for(f, i);

Definition Is_Abelian_Monoid(D : SSet, i : D, f : D * D -> D) : B =
	Is_Monoid(D, i, f) and Is_Commutative(f);

Definition Is_Group(D : SSet, i : D, f : D * D -> D, g : D -> D) : B =
	Is_Semigroup(D, f) and Is_Inverse_for(f, i, g);

Definition Is_Abelian_Group(D : SSet, i : D, f : D * D -> D, g : D -> D) : B =
	Is_Group(D, i, f, g) and Is_Commutative(f);
	
Definition Is_Ring(D : SSet, z : D, u : D, f : D * D -> D, g : D * D -> D, h : D -> D) : B =
	Is_Monoid(D, u, g) and Is_Abelian_Group(D, z, f, h) and Is_Distributive_over(f, g);

	Corollary Is_Ring_1:
		For all D : SSet,
		For all z, u : SSet,
		For all f, g : D * D -> D,
		For all h : D -> D,
			Is_Ring(D, z, u, f, g, h) implies Is_Zero_for(g, z);

	Corollary Is_Ring_2:
		For all D : SSet,
		For all z, u : SSet,
		For all f, g : D * D -> D,
		For all h : D -> D,
			( Is_Ring(D, z, u, f, g, h) and z = u ) implies D = {z};
	
	Corollary Is_Ring_3:
		For all D : SSet,
		For all z, u : SSet,
		For all f, g : D * D -> D,
		For all h : D -> D,
			Is_Ring(D, z, u, f, g, h) implies
				( For all a, b : D,
					(g(h(a), b) = h(g(a, b))) = g(a, h(b)) );

-- YS: Probably can't go here because it needs 0.
Definition Is_Ordered_Ring(D : SSet, z : D, u : D, f : D * D -> D, g : D * D -> D, h : D -> D, l : D * D -> B) : B; (* =
	Is_Ring(D, z, u, f, g, h) and Is_Total_Ordering(l) and Is_Preserved_by(f, l) and
		( For all a, b, c : D,
			(l(a,b) and l(0, c)) implies l(g(a, c), g(b,c)) ); *)
			
Definition Is_Commutative_Ring(D : SSet, z : D, u : D, f : D * D -> D, g : D * D -> D, h : D -> D) : B =
	Is_Ring(D, z, u, f, g, h) and Is_Commutative(g);
	
Definition Is_Integral_Domain(D : SSet, z : D, u : D, f : D * D -> D, g : D * D -> D, h : D -> D) : B =
	Is_Commutative_Ring(D, z, u, f, g, h) and not(Is_Factorable_for(g, z));
	
	Corollary Is_Integral_Domain_1:
		For all D : SSet,
		For all z, u : SSet,
		For all f, g : D * D -> D,
		For all h : D -> D,
			Is_Integral_Domain(D, z, u, f, g, h) implies 
				( For all c : D,
					c /= z implies Is_Right_Cancelable_for(f, c) );
	
-- YS: Missing Is_Field and Is_Ordered_Field.

-- YS: Not sure where this is suppose to go and what its definition.
Definition Is_Homomorphism_for(f : (D : SSet) * D -> D, g : D -> D) : B;

end Basic_Properties;
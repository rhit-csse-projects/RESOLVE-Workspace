(*
 * This software is released under the new BSD 2006 license.
 * 
 * Note the new BSD license is equivalent to the MIT License, except for the
 * no-endorsement final clause.
 * 
 * Copyright (c) 2007, Clemson University
 * 
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 *   * Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer. 
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution. 
 *   * Neither the name of the Clemson University nor the names of its
 *     contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission. 
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
 * OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * This sofware has been developed by past and present members of the
 * Reusable Sofware Research Groups (RSRG) at Clemson University and
 * The Ohio State University.
 *)

Precis Total_Preordering_Theory;
	uses Natural_Number_Theory, Integer_Theory, String_Theory;

	Definition Is_Total_Preordering(f : ((D : Cls) * D) -> B) : B =
		(For all d1 : D, f(d1, d1)) and
		(For all d1, d2, d3 : D, f(d1, d2) and f(d2, d3) 
			implies f(d1, d3)) and
		(For all d1, d2 : D, f(d1, d2) or f(d2, d1));		

	Definition Is_Conformal_With(f : (Entity * Entity) -> B, S : SStr) : B =
		For all i, j : Z,
			1 <= i and i <= j and j <= |S| implies
				--f(Element_At(i, S), Element_At(j, S));
				f(Prt_Btwn(i + (-1), i, S), Prt_Btwn(j + (-1), j, S));

	---------------------------------------------------------------
	-- Conformity Theorems                                       --
	---------------------------------------------------------------
	Theorem Empty_String_Conformal:
		For all f : (Entity * Entity) -> B,
			Is_Conformal_With(f, Empty_String);

	Theorem Conformal_String_Extension:
		For all f : (Entity * Entity) -> B,
		For all S : SStr,
		For all e : Entity,
			Is_Conformal_With(f, S) and
			Is_Universally_Related(S, <e>, f)
				implies Is_Conformal_With(f, S o <e>);

	Theorem Total_Preordering_Symmetric:
		For all f : (Entity * Entity) -> B,
		For all e1, e2 : Entity,
			Is_Total_Preordering(f) and
			f(e1, e2) = not(f(e2, e1));

	---------------------------------------------------------------
	-- Relation Theorems                                         --
	---------------------------------------------------------------
	Theorem Symmetric_Theorem:
		For all f : (Entity * Entity) -> B,
		For all e1, e2 : Entity,
			Is_Total_Preordering(f) and not(f(e1, e2)) implies
				f(e2, e1);
				
	Definition Is_Permutation(s :SStr, t:SStr) : B;
	
	Corollary Perm1:
		For all s:SStr,
			Is_Permutation(s,s);
			
	Corollary Perm2:
		For all s,t:SStr,
			Is_Permutation(s o t,t o s);
			
	
end Total_Preordering_Theory;
(*
 * This softare is released under the new BSD 2006 license.
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

Precis Real_Number_Theory;
    uses Boolean_Theory, Set_Theory, Integer_Theory;

    -- all definitions are syntactic place holders

	Definition R : SSet;
	Definition R_Positive : Powerset(R);

	Type Theorem Z_Subset_of_R:
		For all i : Z,
			i : R;

	Type Theorem N_Subset_of_R:
		For all i : N,
			i : R;

    Definition Real_0: R;

    Definition neg: R -> R;

    --------------------------------------------------------------

    Definition (i: R) + (j: R): R = Real_0;

    Definition (i: R) - (j: R): R = Real_0;

    Definition (i: R) * (j: R) : R = Real_0;

    Definition (i: R) ** (j: R) : R = Real_0;

    Definition (i: R) / (j: R) : R = Real_0;

    Definition (i: R) mod (j: R) : R = Real_0;

    Definition (i: R) rem (j: R) : R = Real_0;

    Definition (i: R) div (j: R) : R = Real_0;

    
    Definition (i: R) = (j: R) : B = true;

    
    Definition (i: R) <= (j: R) : B = true;

    Definition (i: R) >= (j: R) : B = true;

    Definition (i: R) < (j: R) : B = true;

    Definition (i: R) > (j: R) : B = true;

    Definition |(i: R)| : R = Real_0;

    Definition (i: R) .. (j: R) : Powerset(R);


    Definition Sum(a : R, s : Powerset(R)) : R;


    Definition Summation(s: Powerset(R), f: R -> R) : R = Real_0;


	 
    Definition isEven(i : R) : B = true;

	
    
    Theorem Plus_Zero_Identity_1:
            For all i:R, (Real_0 + i) = i;

	
    Theorem Plus_Zero_Identity_2:
            For all i : R, (i + Real_0) = i;

	
    Theorem Additive_Equality:
	             For all i, j, k:R,
 (i + j) = (k + j)                  implies (i = k);

	
    Theorem Natural_Addition:
	             For all i, j, k:R,
 (i + j) = k and (j > Real_0)       implies i < k;

	(*
    Theorem Off_By_One_Relation_1:
           For all i, j:R, (i + 1 <= j) = (i < j);
    Theorem Off_By_One_Relation_2:           For all i, j:R, (j <= i - 1) = (j < i);

	
    Theorem Off_By_One_Relation_3:
           For all i, j:R, (j - 1 >= i) = (j > i);
*)
	
    Theorem Implicit_Greater_Than_Zero_1:
    For all i : R, i >= Real_0 and not(i = Real_0)         implies i > Real_0;

	
    Theorem Less_Than_Relation_1:
            For all i, j, k : R, (i + j) <= k and j > Real_0       implies i < k;

	
    Theorem Coherence_of_Less_Than_1:        For all i, j, k : R, (i = j) and (i <= k)              implies j <= k;

	
    Theorem Coherence_of_Less_Than_2:
        For all i, j, k : R, (i = j) and (j <= k)              implies i <= k;

	
    Theorem Coherence_of_Less_Than_3:
        For all i, j, k : R, (i = j) and (i < k)               implies j < k;

	
    Theorem Coherence_of_Less_Than_4:        For all i, j, k : R, (i = j) and (j < k)               implies i < k;

	
    Theorem Coherence_of_Less_Than_Equals_1:
 For all i, j, k : R, (i = j) and (k <= j)              implies k <= i;

	
    Theorem Continuousness_of_Less_Than_1:
   For all i, j, k : R, (i <= k) and (j > k)              implies i < j;

	(*
    Theorem Equivalence_of_1:                For all i, j, k : R, ((i + j) <= k) and (j > Real_0)   implies (i + 1) <= k;
*)
	
    Theorem Offset_Cancel_1:
                 For all i, j, k : R, (i + k) + (j - k) = i + j;

	
    Theorem Less_than_Greater_than_Swap_1:
   For all i, j : R, (i >= j) = (j < i);

	
    Theorem Less_than_Greater_than_Swap_2:
   For all i, j : R, (i <= j) = (j > i);

	(*
    Theorem Obvious_Less_Than_1:             For all i : R, ((i - 1) < i) = true;
*)
	
    Theorem Greater_Than_Implicit_1:
         For all i : R, (i >= Real_0) and (not(i = Real_0))     implies (i > Real_0);

	
    Theorem Greater_Than_Implicit_2:         For all i : R, (i >= Real_0) and (i /= Real_0)         implies (i > Real_0);


(*	
    Theorem Sum_Less_Than:
                   For all i, j, k : R, (((i + j) <= k) and (j > Real_0)) implies
 ((i + 1) <= k);
*)
	
    Theorem Obvious:                         For all i, j, k : R,
 (i = j) and (j <= k)              implies (i <= k);

	(*
    Theorem Off_By_One_1:                    For all i, j : R, (i > j)                              implies (i - 1 >= j);

	
    Theorem Greater_Than_Zero:
               For all i : Z, (i > Real_0)                            implies (i >= 1);
*)
	
    Theorem Replace_Term_With_Smaller:
       For all i, j, k, x : Z,
 (i + k <= j) and (k >= x)      implies (i + x) <= j;

	(*
    Theorem Still_Less_Than:
                 For all i, j, k : Z,
 (i <= j) and (k = i)              implies (k <= j); 

*)
end Real_Number_Theory;

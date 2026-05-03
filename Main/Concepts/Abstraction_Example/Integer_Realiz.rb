Realization Integer_Realiz for Abstraction_Example;
	uses Integer_Theory;
	-- This exercise has few lines of code and many lines of activities!
	-- Using an Integer to represent a switch modeled abstractly as a Boolean to illustrate abstraction
	-- Activity 0: Understand the following
	-- Need only two integers to represent a Boolean value
	-- Two questions.
	-- Q1: How do (possibly independent) developers of different procedures (initialization and others) know which two integers to use?
	-- Answer: Document it formally using conventions (representation invariants) and follow the conventions for all procedures.
	-- Q2: Which of the two integer values should the developers use to represent the true Boolean value in the abstraction?
	-- Answer: Document it formally using correspondence (abstraction function or relation) and follow the it for all procedures.
	--
	-- Understand what is given
	-- What does the correspondence mean for this particular example?
	-- Attempt to verify and understand the VCs
	-- Note for example that the conventions are verified at the end of each procedure
	-- Note that the correspondence is used in verification to interpret the abstract ensures clauses in concrete terms
	--
	-- Activity 1: Understand implementation conventions
	-- Change the conventions to be:  1 <= S.rep <= 2;
	-- Change the code appropriately and verify
	--
	-- Activity 2: Understand correspondence
	-- Change the conventions back to what it was originally:  0 <= S.rep <= 1;
	-- Change the correspondence to be:  Conc.S = (S.rep = 1);
	-- Change the code appropriately and verify
	--
	-- Create an alternative realization of Abstraction_Example
	-- Write a facility to use the above
	--

	Type Switch = Record    -- Record is like a structure
			rep: Integer;
			temp: Integer;  -- ignore this field; it is not used; compiler demands at least two fields for records
		end;
		conventions 0 <= S.rep <= 1;			-- representation invariant,
												-- restricts representation to a subset of representation value space
												-- may be assumed true at the beginning of every public procedure
												-- must be confirmed to be true at the end of every public procedure
		correspondence Conc.S = (S.rep = 0);	-- abstraction function or relation;
												-- correspondence relates the concrete (Integer) rep to the conceptual (Boolean) value
	(*  -- not needed because Integer rep is automatically initialized to 0
		initialization
			S.rep := 0;
		end;
	*)
	end;

	Procedure Toggle(updates S: Switch);
		If S.rep = 0 then
			S.rep := 1;
		else
			S.rep := 0;
		end;
	end Toggle;

	Procedure Is_On(restores S: Switch): Boolean;
		Is_On := (S.rep = 0);
	end Is_On;

end Integer_Realiz;
Precis Terminal_Range_Op_Ext;
	uses Set_Theory, Set_App_Op_Ext, Closure_Op_Ext;

	-- This is a place holder theory used for VC generation
	-- It is missing definitions and theorems
	-- Some definitions and results are included in the dissertation chapters

	Definition Is_Stable_wrt(U: SSet, FC: Powerset(U -> U), S : Powerset(U)) : B;
	
	Definition Terminal_Range(U : SSet, FC : Powerset(U -> U), G : Powerset(U)) : Powerset(U);

end Terminal_Range_Op_Ext;
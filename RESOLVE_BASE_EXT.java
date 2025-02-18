package RESOLVE;

import RESOLVE.Main.Concepts.Standard.Boolean_Template.*;
import RESOLVE.Main.Concepts.Standard.Character_Template.*;
import RESOLVE.Main.Concepts.Standard.Char_Str_Template.*;
import RESOLVE.Main.Concepts.Standard.Integer_Template.*;

public abstract class RESOLVE_BASE_EXT extends RESOLVE_BASE {
	public RType replica(RType r) {
		RType retVal = null;
		if (r instanceof Std_Integer_Realiz.Integer) {
			Integer_Template Std_Integer_Fac = new Std_Integer_Realiz();
			retVal = Std_Integer_Fac.Replica((Std_Integer_Realiz.Integer)r);
		} else if (r instanceof Std_Boolean_Realiz.Boolean) {
			Boolean_Template Std_Boolean_Fac = new Std_Boolean_Realiz();
			retVal = Std_Boolean_Fac.Replica((Std_Boolean_Realiz.Boolean)r);
		} else if (r instanceof Std_Character_Realiz.Character) {
			Character_Template Std_Character_Fac = new Std_Character_Realiz();
			retVal = Std_Character_Fac.Replica((Std_Character_Realiz.Character)r);
		} else if (r instanceof Std_Char_Str_Realiz.Char_Str) {
			Char_Str_Template Std_Char_Str_Fac = new Std_Char_Str_Realiz();
			retVal = Std_Char_Str_Fac.Replica((Std_Char_Str_Realiz.Char_Str)r);
		}
		return retVal;
	}
}

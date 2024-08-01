package RESOLVE;

import RESOLVE.Main.Concepts.Standard.Boolean_Template.*;
import RESOLVE.Main.Concepts.Standard.Character_Template.*;
import RESOLVE.Main.Concepts.Standard.Char_Str_Template.*;
import RESOLVE.Main.Concepts.Standard.Integer_Template.*;

public abstract class RESOLVE_BASE {
  public void swap(RType r1, RType r2) {
    if(r1 instanceof Std_Boolean_Realiz.Boolean) {
      boolean tmp = ((Std_Boolean_Realiz.Boolean)r1).val;
      ((Std_Boolean_Realiz.Boolean)r1).val=((Std_Boolean_Realiz.Boolean)r2).val;
      ((Std_Boolean_Realiz.Boolean)r2).val = tmp;
    } else if(r1 instanceof Std_Character_Realiz.Character) {
      char tmp = ((Std_Character_Realiz.Character)r1).val;
      ((Std_Character_Realiz.Character)r1).val=((Std_Character_Realiz.Character)r2).val;
      ((Std_Character_Realiz.Character)r2).val = tmp;
    } else if(r1 instanceof Std_Integer_Realiz.Integer) {
      int tmp = ((Std_Integer_Realiz.Integer)r1).val;
      ((Std_Integer_Realiz.Integer)r1).val=((Std_Integer_Realiz.Integer)r2).val;
      ((Std_Integer_Realiz.Integer)r2).val = tmp;
    } else {
      Object tmp = r1.getRep();
      r1.setRep(r2.getRep());
      r2.setRep(tmp);
    } 
  }
  public void assign(RType r1, RType r2) {
    if(r1 instanceof Std_Boolean_Realiz.Boolean) {
      ((Std_Boolean_Realiz.Boolean)r1).val=((Std_Boolean_Realiz.Boolean)r2).val;
    } else if(r1 instanceof Std_Character_Realiz.Character) {
      ((Std_Character_Realiz.Character)r1).val=((Std_Character_Realiz.Character)r2).val;
    } else if(r1 instanceof Std_Char_Str_Realiz.Char_Str) {
      ((Std_Char_Str_Realiz.Char_Str)r1).val=((Std_Char_Str_Realiz.Char_Str)r2).val;
    } else if(r1 instanceof Std_Integer_Realiz.Integer) {
      ((Std_Integer_Realiz.Integer)r1).val=((Std_Integer_Realiz.Integer)r2).val;
    } else {
      r1.setRep(r2.getRep());
    } 
  }
}

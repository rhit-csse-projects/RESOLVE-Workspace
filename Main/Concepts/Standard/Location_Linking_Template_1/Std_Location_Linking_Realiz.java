
package RESOLVE.Main.Concepts.Standard.Location_Linking_Template_1;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Integer_Template.*;
import RESOLVE.Main.Concepts.Standard.Boolean_Template.*;

public class Std_Location_Linking_Realiz extends RESOLVE_BASE implements Location_Linking_Template_1{

  Std_Integer_Realiz Std_Integer_Fac = new Std_Integer_Realiz();
  Boolean_Template Std_Boolean_Fac = new Std_Boolean_Realiz();

  RType Info;

  public class Position implements Location_Linking_Template_1.Position {
    Position_Rep rep;

    Position() {
      //rep = new Position_Rep();
      rep = null;
    }

    public Object getRep() {
      return rep;
    }

    public void setRep(Object o) {
      rep = (Position_Rep)o;
    }

    public String toString() {
      return rep.toString();
    }
 
    public RType initialValue() {
      return new Position();
    }
  }

  class Position_Rep {
    RType info;
	Position_Rep target;

    Position_Rep() {
      info = Info.initialValue();
      target = null;
    }
	
	public RType getInfo() {
		return info;
	}
	
	public Position_Rep getTarget() {
		return target;
	}
	
	public void setInfo(Object o) {
		info = (RType)o;
	}
	
	public void setTarget(Object o) {
		target = (Position_Rep)o;
	}

    public String toString() {
      StringBuffer sb = new StringBuffer();
      sb.append(info.toString());
      return sb.toString();
    }
  }
  
	public Std_Location_Linking_Realiz(RType Info) {
		this.Info = Info;
	}

	public void Take_New_Location(Location_Linking_Template_1.Position P) {
		P.setRep(new Position_Rep());
	}

	public void Relocate_to(Location_Linking_Template_1.Position P, Location_Linking_Template_1.Position Q) {
		Position_Rep rep = (Position_Rep)Q.getRep();
		P.setRep(rep);
	}
	
	public Boolean_Template.Boolean Are_Colocated(Location_Linking_Template_1.Position P, Location_Linking_Template_1.Position Q) {
		Boolean_Template.Boolean Are_Colocated = Std_Boolean_Fac.createBoolean();
		if(P.getRep() == Q.getRep()){
			Are_Colocated = Std_Boolean_Fac.True();
		}
		else{
			Are_Colocated = Std_Boolean_Fac.False();
		}
		return Are_Colocated;
	}

	public void Follow_Link(Location_Linking_Template_1.Position P) {
		Position_Rep target = (Position_Rep)(((Position_Rep)P.getRep()).getTarget());
		P.setRep(target);
	}
	
	public void Relocate_To_Target(Location_Linking_Template_1.Position P, Location_Linking_Template_1.Position Q) {
		Position_Rep target = (Position_Rep)(((Position_Rep)Q.getRep()).getTarget());
		P.setRep(target);
	}

	public void Redirect_Link(Location_Linking_Template_1.Position P, Location_Linking_Template_1.Position Q) {
		Position_Rep rep = (Position_Rep)Q.getRep();
		((Position_Rep)P.getRep()).setTarget(rep);
	}

	public void Redirect_and_Update(Location_Linking_Template_1.Position P, Location_Linking_Template_1.Position Q) {
		Position_Rep targetQ = (Position_Rep)(((Position_Rep)Q.getRep()).getTarget());
		Position_Rep targetP = (Position_Rep)(((Position_Rep)P.getRep()).getTarget());
		((Position_Rep)P.getRep()).setTarget(targetQ);
		Q.setRep(targetP);
	}

	public Boolean_Template.Boolean Is_At_Void(Location_Linking_Template_1.Position P) {
		Boolean_Template.Boolean Is_At_Void = Std_Boolean_Fac.createBoolean();
		if(P.getRep() == null){
			Is_At_Void = Std_Boolean_Fac.True();
		}
		else{
			Is_At_Void = Std_Boolean_Fac.False();
		}
		return Is_At_Void;
	}

	public void Reset_To_Void(Location_Linking_Template_1.Position  P) {
		P.setRep(null);
	}

	public void Swap_Info(Location_Linking_Template_1.Position  p, RType  I) {
		RType temp1 = (RType)((Position_Rep)p.getRep()).getInfo().getRep();
		swap(temp1, I);
	}

	public Location_Linking_Template_1.Position createPosition() {
		return new Position();
	}

	public RType getTypeInfo() {
		return Info;
	}

}

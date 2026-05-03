package RESOLVE.Main.Concepts.Standard.Integer;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Boolean.*;

public class Std_Integer_Realiz extends RESOLVE_BASE implements Integer_Template{

  Std_Boolean_Realiz Std_Boolean_Fac = new Std_Boolean_Realiz();

  public class Integer implements Integer_Template.Integer {
    public int val;

    Integer() {
      val = 0;
    }

    Integer(int i) {
      val = i;
    }

// getRep is special case, this will never be called
    public Object getRep() {
      return this;
    }

// setRep is special case, this will never be called
    public void setRep(Object o) {
    }

    public RType initialValue() {
      return new Integer();
    }

    public String toString() {
      return new java.lang.Integer(val).toString();
    }
  }

  public Boolean_Template.Boolean Is_Zero(Integer_Template.Integer i) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val == 0);
  }

  public Boolean_Template.Boolean Is_Not_Zero(Integer_Template.Integer i) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val != 0);
  }

  public void Increment(Integer_Template.Integer i) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val + 1);
  }

  public void Decrement(Integer_Template.Integer i) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val - 1);
  }

  public Boolean_Template.Boolean Are_Equal(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val == ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Boolean_Template.Boolean Are_Not_Equal(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val != ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Boolean_Template.Boolean Less_Or_Equal(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val <= ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Boolean_Template.Boolean Less(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val < ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Boolean_Template.Boolean Greater(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val > ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Boolean_Template.Boolean Greater_Or_Equal(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return Std_Boolean_Fac.createBoolean(((Std_Integer_Realiz.Integer)i1).val >= ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Sum(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val + ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Difference(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val - ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Product(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val * ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Div(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val / ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Quotient(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val / ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Rem(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val % ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Mod(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val % ((Std_Integer_Realiz.Integer)i2).val);
  }

  public Integer_Template.Integer Power(Integer_Template.Integer i1, Integer_Template.Integer i2) {
    int v1 = ((Std_Integer_Realiz.Integer)i1).val;
    int v2 = ((Std_Integer_Realiz.Integer)i2).val;
    int r = 1;
    for(int i = 0; i < v2; i++) {
        r = r * v1;
    }
    return new Integer(r);
  }

  public Integer_Template.Integer Negative(Integer_Template.Integer i1) {
    return new Integer(-((Std_Integer_Realiz.Integer)i1).val);
  }

  public Integer_Template.Integer Replica(Integer_Template.Integer i1) {
    return new Integer(((Std_Integer_Realiz.Integer)i1).val);
  }

  public Integer_Template.Integer createInteger() {
    return new Integer();
  }

  public Integer_Template.Integer createInteger(int i) {
    return new Integer(i);
  } 


} 

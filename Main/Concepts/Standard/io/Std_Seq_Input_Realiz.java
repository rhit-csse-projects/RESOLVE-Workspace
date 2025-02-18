package RESOLVE.Main.Concepts.Standard.IO;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Char_Str_Template.*;
import java.io.*;

public class Std_Seq_Input_Realiz extends RESOLVE_BASE implements Seq_Input_Template {

  Std_Char_Str_Realiz Std_Char_Str_Fac = new Std_Char_Str_Realiz();
  BufferedReader in;
  

  public class Seq_Input implements Seq_Input_Template.Seq_Input {
    public BufferedReader val;

    Seq_Input() {
      val = null;
    }
 
    Seq_Input(BufferedReader b) {
      val = b;
    }
 
    public Object getRep() {
      return val;
    }

    public void setRep(Object o) {
      val = (BufferedReader)o;
    }

    public RType initialValue() {
      return new Seq_Input();
    }
  }

  public Seq_Input_Template.Seq_Input Replica(Seq_Input_Template.Seq_Input br) {
    return new Seq_Input(((Std_Seq_Input_Realiz.Seq_Input)br).val);
  }

  public Seq_Input_Template.Seq_Input createSeq_Input() {
    return new Seq_Input();
  }

  public Seq_Input_Template.Seq_Input createSeq_Input(BufferedReader br) {
    return new Seq_Input(br);
  }

  public Seq_Input_Template.Seq_Input Open_Read_File(Char_Str_Template.Char_Str file) {
    String jfile = ((Std_Char_Str_Realiz.Char_Str)file).val;
    File RFile = new File(jfile);
    try{
      in = new BufferedReader(new FileReader(RFile));
    } catch(Exception e) {
      e.printStackTrace();
    }   
    Seq_Input br = new Seq_Input(in);
    return br;
  }

  public Char_Str_Template.Char_Str Read_Line_From_File(Seq_Input_Template.Seq_Input br) {
    
    String intxt = "";
    try{
      if((intxt = ((((Std_Seq_Input_Realiz.Seq_Input)br).val).readLine())) != null) { 
      }
    } catch(Exception e){
      e.printStackTrace();
    }
    return Std_Char_Str_Fac.createChar_Str(intxt);
  }

  public void Close_Read_File(Seq_Input_Template.Seq_Input br) {
    try {
      (((Std_Seq_Input_Realiz.Seq_Input)br).val).close();
    } catch(Exception e) {
      e.printStackTrace();
    }
  }

}

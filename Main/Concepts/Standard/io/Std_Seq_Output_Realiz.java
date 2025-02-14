package RESOLVE.Main.Concepts.Standard.IO;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Char_Str_Template.*;
import java.io.*;

public class Std_Seq_Output_Realiz extends RESOLVE_BASE implements Seq_Output_Template {

  Std_Char_Str_Realiz Std_Char_Str_Fac = new Std_Char_Str_Realiz();
  PrintWriter out;

  public class Seq_Output implements Seq_Output_Template.Seq_Output{
    public PrintWriter val;

    Seq_Output() {
      val = null;
    }
 
    Seq_Output(PrintWriter pw) {
      val = pw;
    }

    public Object getRep() {
      return val;
    }

    public void setRep(Object o) {
      val = (PrintWriter)o;
    }

    public RType initialValue() {
      return new Seq_Output();
    }
  }

  public Seq_Output_Template.Seq_Output Replica(Seq_Output_Template.Seq_Output pw) {
    return new Seq_Output(((Std_Seq_Output_Realiz.Seq_Output)pw).val);
  }

  public Seq_Output_Template.Seq_Output createSeq_Output() {
    return new Seq_Output();
  }

  public Seq_Output_Template.Seq_Output createSeq_Output(PrintWriter pw) {
    return new Seq_Output(pw);
  }

  public Seq_Output_Template.Seq_Output Open_Write_File(Char_Str_Template.Char_Str file) {
    String jfile = ((Std_Char_Str_Realiz.Char_Str)file).val;
    File RFile = new File(jfile);
    try {
      out = new PrintWriter(new BufferedWriter(new FileWriter(RFile)));
    } catch(Exception e) {
      e.printStackTrace();
    }
    Seq_Output pw = new Seq_Output(out);
    return pw;
  }

  public void Write_To_File(Seq_Output_Template.Seq_Output pw, Char_Str_Template.Char_Str s) { 
    String js = ((Std_Char_Str_Realiz.Char_Str)s).val;
    try {   
      (((Std_Seq_Output_Realiz.Seq_Output)pw).val).write(js);
    } catch(Exception e) {
      e.printStackTrace();
    }
  }

  public void Close_Write_File(Seq_Output_Template.Seq_Output pw) {
    try {
      (((Std_Seq_Output_Realiz.Seq_Output)pw).val).close();
    } catch(Exception e) {
      e.printStackTrace();
    }
  }
}

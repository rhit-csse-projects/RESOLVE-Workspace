package RESOLVE.Main.Concepts.Standard.IO;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Char_Str_Template.*;
import java.io.*;

public interface Seq_Output_Template extends RESOLVE_INTERFACE {

  interface Seq_Output extends RType {
  }

  Seq_Output Open_Write_File(Char_Str_Template.Char_Str fileName);
  void Write_To_File(Seq_Output pw, Char_Str_Template.Char_Str s);
  void Close_Write_File(Seq_Output pw);
  Seq_Output createSeq_Output();
  Seq_Output createSeq_Output(PrintWriter pw);
}

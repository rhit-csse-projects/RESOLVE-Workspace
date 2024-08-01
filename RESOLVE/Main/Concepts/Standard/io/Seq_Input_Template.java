package RESOLVE.Main.Concepts.Standard.IO;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Char_Str_Template.*;
import java.io.*;

public interface Seq_Input_Template extends RESOLVE_INTERFACE {

  interface Seq_Input extends RType {
  }

  Seq_Input Open_Read_File(Char_Str_Template.Char_Str fileName);
  Char_Str_Template.Char_Str Read_Line_From_File(Seq_Input br);
  void Close_Read_File(Seq_Input br);
  Seq_Input createSeq_Input();
  Seq_Input createSeq_Input(BufferedReader br); 
}

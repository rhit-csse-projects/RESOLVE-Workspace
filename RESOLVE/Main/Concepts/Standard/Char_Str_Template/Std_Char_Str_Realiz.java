/*
 * This softare is released under the new BSD 2006 license.
 * 
 * Note the new BSD license is equivalent to the MIT License, except for the
 * no-endorsement final clause.
 * 
 * Copyright (c) 2007, Clemson University
 * 
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 *   * Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer. 
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution. 
 *   * Neither the name of the Clemson University nor the names of its
 *     contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission. 
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
 * OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * This sofware has been developed by past and present members of the
 * Reusable Sofware Research Group (RSRG) in the School of Computing at
 * Clemson University.  Contributors to the initial version are:
 * 
 *     Steven Atkinson
 *     Greg Kulczycki
 *     Kunal Chopra
 *     John Hunt
 *     Heather Keown
 *     Ben Markle
 *     Kim Roche
 *     Murali Sitaraman
 */

package RESOLVE.Main.Concepts.Standard.Char_Str_Template;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Boolean_Template.*;
import RESOLVE.Main.Concepts.Standard.Character_Template.*;
import RESOLVE.Main.Concepts.Standard.Integer_Template.*;

import java.lang.*;

public class Std_Char_Str_Realiz extends RESOLVE_BASE implements Char_Str_Template{

  Std_Boolean_Realiz Std_Boolean_Fac = new Std_Boolean_Realiz();
  Std_Character_Realiz Std_Character_Fac = new Std_Character_Realiz();
  Std_Integer_Realiz Std_Integer_Fac = new Std_Integer_Realiz();

  public class Char_Str implements Char_Str_Template.Char_Str {
    public String val;

    Char_Str() {
      val = " ";
    }

    Char_Str(String s) {
      val = s;
    }

    public Object getRep() {
      return val;
    }

    public void setRep(Object o) {
      val = (String)o;
    }

    public RType initialValue() {
      return new Char_Str();
    }

    public String toString() {
      return val;
    }

  }

  public Char_Str_Template.Char_Str Replica(Char_Str_Template.Char_Str s) {
    return new Char_Str(((Std_Char_Str_Realiz.Char_Str)s).val);
  }

  public Char_Str_Template.Char_Str createChar_Str() {
    return new Char_Str();
  }

  public Char_Str_Template.Char_Str createChar_Str(String s) {
    return new Char_Str(s);
  }

  public Char_Str_Template.Char_Str Char_Str_for(Character_Template.Character  c) {
    return new Char_Str(Std_Character_Fac.Make_String(c));
  }

  public Boolean_Template.Boolean Are_Equal(Char_Str_Template.Char_Str s1, 
					Char_Str_Template.Char_Str s2) {
    String js1 = ((Std_Char_Str_Realiz.Char_Str)s1).val;
    String js2 = ((Std_Char_Str_Realiz.Char_Str)s2).val;
    return Std_Boolean_Fac.createBoolean(js1.equals(js2));
  }

  public Boolean_Template.Boolean Are_Not_Equal(Char_Str_Template.Char_Str s1,
					Char_Str_Template.Char_Str s2) {
    String js1 = ((Std_Char_Str_Realiz.Char_Str)s1).val;
    String js2 = ((Std_Char_Str_Realiz.Char_Str)s2).val;
    return Std_Boolean_Fac.createBoolean(!js1.equals(js2));
  }

  public Char_Str_Template.Char_Str Merger(Char_Str_Template.Char_Str s1,
				Char_Str_Template.Char_Str s2) {
    String js1 = ((Std_Char_Str_Realiz.Char_Str)s1).val;
    String js2 = ((Std_Char_Str_Realiz.Char_Str)s2).val;
    js1 = js1 + js2;
    return new Char_Str(js1);
  }
  
/*
    public Char_Str_Template.Char_Str Substr(Char_Str_Template.Char_Str s1, 
				  Integer_Template.Integer beginIndex,
					Integer_Template.Integer endIndex) {
    String js1 = ((Std_Char_Str_Realiz.Char_Str)s1).val;
    int jbeginIndex = ((Std_Integer_Realiz.Integer)beginIndex).val;
    int jendIndex = ((Std_Integer_Realiz.Integer)endIndex).val;
    js1 = js1.substring(jbeginIndex, jendIndex);
    return new Char_Str(js1);
  }
*/
  public Integer_Template.Integer Length(Char_Str_Template.Char_Str s) {
    String js = ((Std_Char_Str_Realiz.Char_Str)s).val;
    int length = js.length();
    return Std_Integer_Fac.createInteger(length);
  }

  public void Read(Char_Str_Template.Char_Str s) {
	((Std_Char_Str_Realiz.Char_Str)s).val = TextIO.getln();
  } 

  public void Write(Char_Str_Template.Char_Str s) {
	TextIO.put(((Std_Char_Str_Realiz.Char_Str)s).val);
  } 

  public void Write_Line(Char_Str_Template.Char_Str s) {
	TextIO.putln(((Std_Char_Str_Realiz.Char_Str)s).val);
  } 

}

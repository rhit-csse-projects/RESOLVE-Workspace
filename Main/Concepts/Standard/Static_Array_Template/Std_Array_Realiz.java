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

package RESOLVE.Main.Concepts.Standard.Static_Array_Template;

import RESOLVE.*;
import RESOLVE.Main.Concepts.Standard.Integer_Template.*;

public class Std_Array_Realiz extends RESOLVE_BASE_EXT implements Static_Array_Template {

  Std_Integer_Realiz Std_Integer_Fac = new Std_Integer_Realiz();

  RType myType;
  int myLowerBound;
  int myUpperBound;

  public class Static_Array implements Static_Array_Template.Static_Array {
    Array_Rep rep;

    Static_Array() {
      rep = new Array_Rep();
    }

    public Object getRep() {
      return rep;
    }

    public void setRep(Object o) {
      rep = (Array_Rep)o;
    }

    public String toString() {
      return rep.toString();
    }
 
    public RType initialValue() {
      return new Static_Array();
    }
  }

  class Array_Rep {
    RType[] content;

    Array_Rep() {
      content = new RType[myUpperBound - myLowerBound + 1];
      for(int i = 0; i < content.length; i++) {
        content[i] = myType.initialValue();
      }
    }

    public String toString() {
      StringBuffer sb = new StringBuffer();
      for(int i = 0; i < content.length; i++) {
        sb.append(content[i].toString());
        sb.append("\n");
      }
      return sb.toString();
    }  
  }

  public Std_Array_Realiz(RType type, 
                          Integer_Template.Integer Lower_Bound, 
                          Integer_Template.Integer Upper_Bound) {
    myType = type;
    myLowerBound = ((Std_Integer_Realiz.Integer)Lower_Bound).val;
    myUpperBound = ((Std_Integer_Realiz.Integer)Upper_Bound).val;
  }

  public Static_Array createStatic_Array() {
    return new Static_Array();
  }

  public void Swap_Entry(Static_Array_Template.Static_Array A, RType V, Integer_Template.Integer I) {
    int adj = ((Std_Integer_Realiz.Integer)I).val - myLowerBound;
	RType[] temp1 = ((Array_Rep)A.getRep()).content;
    swap(V, temp1[adj]);
  }

  public void Swap_Two_Entries(Static_Array_Template.Static_Array A, Integer_Template.Integer I, Integer_Template.Integer J) {
    int adjI = ((Std_Integer_Realiz.Integer)I).val - myLowerBound;
    int adjJ = ((Std_Integer_Realiz.Integer)J).val - myLowerBound;
    RType[] temp1 = ((Array_Rep)A.getRep()).content;
    swap(temp1[adjI], temp1[adjJ]);
  }

  public void Assign_Entry(Static_Array_Template.Static_Array A, RType Entry, Integer_Template.Integer I) {
    int adjI = ((Std_Integer_Realiz.Integer)I).val - myLowerBound;
    RType[] temp1 = ((Array_Rep)A.getRep()).content;
    assign(temp1[adjI], Entry);
  }

  public RType Entry_Replica(Static_Array_Template.Static_Array A, Integer_Template.Integer I) {
    int adjI = ((Std_Integer_Realiz.Integer)I).val - myLowerBound;
    RType[] temp1 = ((Array_Rep)A.getRep()).content;
	return replica(temp1[adjI]);
  }
  
  public RType getTypeEntry() {
	return myType;
  }
  
  public Integer_Template.Integer getLower_Bound() {
	return Std_Integer_Fac.createInteger(myLowerBound);
  }
  
  public Integer_Template.Integer getUpper_Bound() {
	return Std_Integer_Fac.createInteger(myUpperBound);
  }
}

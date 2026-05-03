Proofs for Obvious_Flipping_Realiz.rb generated Thu Apr 30 17:09:42 EDT 2026

# Summary

## Prover Settings
    Prover: General Purpose Prover
    Timeout: 5000 ms
    Number of Tries Before Halting: -1

## VC Results
| VC | Result |
| --- | --- |
| VC 0_1     |     proved in 8 ms. |
| VC 0_2     |     proved in 0 ms. |
| VC 0_3     |     not proved in 14 ms. |
| VC 0_4     |     proved in 2 ms. |
| VC 0_5     |     proved in 8 ms. |
| VC 1_1     |     proved in 1 ms. |
| VC 1_2     |     proved in 5 ms. |

## Aggregate Results
    Total number of proved VCs: 6
    Total number of unproved and skipped VCs: 1
    Total elapsed time in generating proofs: 44 ms

# Proof Generation Details

    Enhancement Realization Name:   Obvious_Flipping_Realiz
    Enhancement Name:               Flipping_Capability
    Concept Name:                   Stack_Template

# VC: 0_1

**VC 0_1**:
Base Case of the Invariant of While Statement at Obvious_Flipping_Realiz.rb(8:15)

**Goal**:
(S = (Reverse(Empty_String) o S))

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Concatenation_1_a** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) 
CC2 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC3 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC4 -> (CR4: o CC2, CC1) 
CC5 -> (CR5: = CC1, CC4) 

```
# VC: 0_2

**VC 0_2**:
Requires Clause for Pop at Obvious_Flipping_Realiz.rb(11:3)

**Goal**:
(1 <= |S''|)

**Given(s)**:
1. (1 <= |S''|)
2. (S = (Reverse(Temp'') o S''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: 1 ) 
CC2 -> (CR2: S'' ) 
CC3 -> (CR3: |_| CC2) 
CC4 -> (CR4: <= CC1, CC3) (succedent)
CC5 -> (CR5: S ) | (CR8: o CC7, CC2) 
CC6 -> (CR6: Temp'' ) 
CC7 -> (CR7: Reverse CC6) 
CC8 -> (CR5: S ) | (CR8: o CC7, CC2) 

```
# VC: 0_3

**VC 0_3**:
Requires Clause for Push at Obvious_Flipping_Realiz.rb(12:3)

**Goal**:
((1 + |Temp''|) <= Max_Depth)

**Given(s)**:
1. (1 <= |S''|)
2. (S = (Reverse(Temp'') o S''))
3. (1 <= Max_Depth)

**Prover Result**: Not Proved

## Applied Theorems:
- **N4_a** (Natural_Number_Theory)
- **N9_a** (Natural_Number_Theory)
- **Reverse_8** (String_Theory)
- **I10_Def** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **LTE_Sum** (Integer_Theory)
- **Str_Length_2** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: 1 ) 
CC2 -> (CR2: S'' ) 
CC3 -> (CR3: |_| CC2 [NEXT: CR17]), (CR17: |_| CC16 [NEXT: CR18]), (CR18: |_| CC3) 
CC4 -> (CR4: <= CC1, CC3) 
CC5 -> (CR5: S ) | (CR8: o CC7, CC2) 
CC6 -> (CR6: Temp'' ) 
CC7 -> (CR7: Reverse CC6) 
CC8 -> (CR5: S ) | (CR8: o CC7, CC2) 
CC9 -> (CR9: Max_Depth ) 
CC10 -> (CR10: <= CC1, CC9) 
CC11 -> (CR11: |_| CC6) 
CC12 -> (CR12: + CC1, CC11 [NEXT: CR14]), (CR14: + CC11, CC1) 
CC13 -> (CR13: <= CC12, CC9) (succedent)
CC14 -> (CR12: + CC1, CC11 [NEXT: CR14]), (CR14: + CC11, CC1) 
CC15 -> (CR15: <= CC9, CC12) 
CC16 -> (CR16: Reverse CC2) 
CC17 -> (CR3: |_| CC2 [NEXT: CR17]), (CR17: |_| CC16 [NEXT: CR18]), (CR18: |_| CC3) 
CC18 -> (CR3: |_| CC2 [NEXT: CR17]), (CR17: |_| CC16 [NEXT: CR18]), (CR18: |_| CC3) 
CC19 -> (CR22: |_| CC21) | (CR19: + CC3, CC11) 
CC20 -> (CR20: <= CC9, CC19) 
CC21 -> (CR21: o CC2, CC6) 
CC22 -> (CR22: |_| CC21) | (CR19: + CC3, CC11) 

```
# VC: 0_4

**VC 0_4**:
Inductive Case of Invariant of While Statement at Obvious_Flipping_Realiz.rb(8:15)

**Goal**:
(S = (Reverse((<Next_Entry''> o Temp'')) o S'))

**Given(s)**:
1. (S'' = (<Next_Entry''> o S'))
2. (1 <= |S''|)
3. (S = (Reverse(Temp'') o S''))

**Prover Result**: Proved

## Applied Theorems:
- **Concatenation_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_2** (String_Theory)
- **Reverse_8** (String_Theory)
- **Abs_Val_1** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) | (CR19: Reverse CC3) 
CC4 -> (CR4: S' ) 
CC5 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC6 -> (CR6: 1 ) 
CC7 -> (CR7: |_| CC1) 
CC8 -> (CR8: <= CC6, CC7) 
CC9 -> (CR12: o CC11, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR9: S ) 
CC10 -> (CR10: Temp'' ) 
CC11 -> (CR11: Reverse CC10) 
CC12 -> (CR12: o CC11, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR9: S ) 
CC13 -> (CR13: o CC3, CC10) 
CC14 -> (CR17: o CC11, CC3) | (CR14: Reverse CC13) 
CC15 -> (CR15: o CC14, CC4) 
CC16 -> (CR16: = CC9, CC15) 
CC17 -> (CR17: o CC11, CC3) | (CR14: Reverse CC13) 
CC18 -> (CR12: o CC11, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR9: S ) 
CC19 -> (CR3: <_> CC2) | (CR19: Reverse CC3) 

```
# VC: 0_5

**VC 0_5**:
Termination of While Statement at Obvious_Flipping_Realiz.rb(9:3)

**Goal**:
((1 + |S'|) <= |S''|)

**Given(s)**:
1. (S'' = (<Next_Entry''> o S'))
2. (1 <= |S''|)
3. (S = (Reverse(Temp'') o S''))

**Prover Result**: Proved

## Applied Theorems:
- **N4_a** (Natural_Number_Theory)
- **N9_a** (Natural_Number_Theory)
- **LTE_1a** (Natural_Number_Theory)
- **Concatenation_2** (String_Theory)
- **Str_Length_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_8** (String_Theory)
- **I10_Def** (Integer_Theory)
- **LTE_1a** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **N10_a** (Natural_Number_Theory)
- **N10_b** (Natural_Number_Theory)
- **NN_LTE_Addition_b** (Natural_Number_Theory)
- **Not_LTE_1a** (Natural_Number_Theory)
- **Singleton_Str_2a** (String_Theory)
- **Reverse_2** (String_Theory)
- **Reverse_3** (String_Theory)
- **LTE_6_def** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) | (CR23: Reverse CC3) 
CC4 -> (CR4: S' ) 
CC5 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC6 -> (CR6: 1 ) 
CC7 -> (CR7: |_| CC1 [NEXT: CR25]), (CR25: |_| CC24 [NEXT: CR26]), (CR26: |_| CC7) | (CR22: + CC21, CC13) 
CC8 -> (CR8: <= CC6, CC7) 
CC9 -> (CR12: o CC11, CC1 [NEXT: CR20]), (CR20: o CC19, CC4) | (CR9: S ) 
CC10 -> (CR10: Temp'' ) 
CC11 -> (CR11: Reverse CC10) 
CC12 -> (CR12: o CC11, CC1 [NEXT: CR20]), (CR20: o CC19, CC4) | (CR9: S ) 
CC13 -> (CR13: |_| CC4) 
CC14 -> (CR14: + CC6, CC13 [NEXT: CR16]), (CR16: + CC13, CC6 [NEXT: CR32]), (CR32: + ) 
CC15 -> (CR15: <= CC14, CC7) (succedent)
CC16 -> (CR14: + CC6, CC13 [NEXT: CR16]), (CR16: + CC13, CC6 [NEXT: CR32]), (CR32: + ) 
CC17 -> (CR17: <= CC7, CC14) 
CC18 -> (CR18: <= CC14, CC6) 
CC19 -> (CR19: o CC11, CC3) 
CC20 -> (CR12: o CC11, CC1 [NEXT: CR20]), (CR20: o CC19, CC4) | (CR9: S ) 
CC21 -> (CR21: |_| CC3) 
CC22 -> (CR7: |_| CC1 [NEXT: CR25]), (CR25: |_| CC24 [NEXT: CR26]), (CR26: |_| CC7) | (CR22: + CC21, CC13) 
CC23 -> (CR3: <_> CC2) | (CR23: Reverse CC3) 
CC24 -> (CR24: Reverse CC1) 
CC25 -> (CR7: |_| CC1 [NEXT: CR25]), (CR25: |_| CC24 [NEXT: CR26]), (CR26: |_| CC7) | (CR22: + CC21, CC13) 
CC26 -> (CR7: |_| CC1 [NEXT: CR25]), (CR25: |_| CC24 [NEXT: CR26]), (CR26: |_| CC7) | (CR22: + CC21, CC13) 
CC27 -> (CR27: <= CC6, CC14) 
CC28 -> (CR28: <= CC6, CC21) 
CC29 -> (CR29: <= CC21, CC6) 
CC30 -> (CR30: <= CC21, CC13) 
CC31 -> (CR31: <= CC13, CC14) 
CC32 -> (CR14: + CC6, CC13 [NEXT: CR16]), (CR16: + CC13, CC6 [NEXT: CR32]), (CR32: + ) 

```
# VC: 1_1

**VC 1_1**:
Base Case of the Invariant of While Statement at Obvious_Flipping_Realiz.rb(8:15)

**Goal**:
(S = (Reverse(Empty_String) o S))

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Concatenation_1_a** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) 
CC2 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC3 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC4 -> (CR4: o CC2, CC1) 
CC5 -> (CR5: = CC1, CC4) 

```
# VC: 1_2

**VC 1_2**:
Ensures Clause of Flip [After Logical Reduction(s)] at Obvious_Flipping_Realiz.rb(3:11)

**Goal**:
(Temp' = Reverse(S)) or 
(1 <= |S'|)

**Given(s)**:
1. (S = (Reverse(Temp') o S'))

**Prover Result**: Proved

## Applied Theorems:
- **N9_a** (Natural_Number_Theory)
- **Reverse_2** (String_Theory)
- **Reverse_8** (String_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **Not_LTE_1a** (Natural_Number_Theory)
- **Reverse_3** (String_Theory)
- **Str_Length_1_a** (String_Theory)
- **Str_Length_3_a** (String_Theory)
- **Zero_LTE_One** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Temp' ) | (CR13: Reverse CC3) 
CC3 -> (CR3: Reverse CC2) 
CC4 -> (CR4: S' ) | (CR18: 0 ) 
CC5 -> (CR1: S ) | (CR5: o CC3, CC4) 
CC6 -> (CR6: Reverse CC1) | (CR14: o CC12, CC2) 
CC7 -> (CR7: = CC2, CC6) (succedent)
CC8 -> (CR8: 1 ) 
CC9 -> (CR9: |_| CC4 [NEXT: CR15]), (CR15: |_| CC12 [NEXT: CR16]), (CR16: |_| CC9 [NEXT: CR17]), (CR17: |_| ) 
CC10 -> (CR10: <= CC8, CC9) (succedent)
CC11 -> (CR11: <= CC9, CC8) 
CC12 -> (CR12: Reverse CC4) 
CC13 -> (CR2: Temp' ) | (CR13: Reverse CC3) 
CC14 -> (CR6: Reverse CC1) | (CR14: o CC12, CC2) 
CC15 -> (CR9: |_| CC4 [NEXT: CR15]), (CR15: |_| CC12 [NEXT: CR16]), (CR16: |_| CC9 [NEXT: CR17]), (CR17: |_| ) 
CC16 -> (CR9: |_| CC4 [NEXT: CR15]), (CR15: |_| CC12 [NEXT: CR16]), (CR16: |_| CC9 [NEXT: CR17]), (CR17: |_| ) 
CC17 -> (CR9: |_| CC4 [NEXT: CR15]), (CR15: |_| CC12 [NEXT: CR16]), (CR16: |_| CC9 [NEXT: CR17]), (CR17: |_| ) 
CC18 -> (CR4: S' ) | (CR18: 0 ) 

```

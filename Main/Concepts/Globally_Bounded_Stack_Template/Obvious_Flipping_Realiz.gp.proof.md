Proofs for Obvious_Flipping_Realiz.rb generated Sun May 03 18:07:42 CDT 2026

# Summary

## Prover Settings
    Prover: General Purpose Prover
    Timeout: 5000 ms
    Number of Tries Before Halting: -1

## VC Results
| VC | Result |
| --- | --- |
| VC 0_1     |     proved in 9 ms. |
| VC 0_2     |     proved in 0 ms. |
| VC 0_3     |     proved in 2 ms. |
| VC 0_4     |     proved in 8 ms. |
| VC 1_1     |     proved in 1 ms. |
| VC 1_2     |     proved in 2 ms. |

## Aggregate Results
    Total number of proved VCs: 6
    Total number of unproved and skipped VCs: 0
    Total elapsed time in generating proofs: 28 ms

# Proof Generation Details

    Enhancement Realization Name:   Obvious_Flipping_Realiz
    Enhancement Name:               Flipping_Capability
    Concept Name:                   Globally_Bounded_Stack_Template

# VC: 0_1

**VC 0_1**:
Base Case of the Invariant of While Statement at Obvious_Flipping_Realiz.rb(9:15)

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
Requires Clause for Pop [After Logical Reduction(s)] at Obvious_Flipping_Realiz.rb(12:3)

**Goal**:
(S'' = Empty_String)

**Given(s)**:
1. (S'' = Empty_String)
2. (S = (Reverse(Temp'') o S''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S'' ) | (CR2: Empty_String ) 
CC2 -> (CR1: S'' ) | (CR2: Empty_String ) 
CC3 -> (CR3: S ) | (CR6: o CC5, CC1) 
CC4 -> (CR4: Temp'' ) 
CC5 -> (CR5: Reverse CC4) 
CC6 -> (CR3: S ) | (CR6: o CC5, CC1) 

```
# VC: 0_3

**VC 0_3**:
Inductive Case of Invariant of While Statement [After Logical Reduction(s)] at Obvious_Flipping_Realiz.rb(9:15)

**Goal**:
(S = (Reverse((<Next_Entry''> o Temp'')) o S')) or 
(S'' = Empty_String)

**Given(s)**:
1. (S'' = (<Next_Entry''> o S'))
2. (S = (Reverse(Temp'') o S''))

**Prover Result**: Proved

## Applied Theorems:
- **Concatenation_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_2** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) | (CR18: Reverse CC3) 
CC4 -> (CR4: S' ) 
CC5 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S ) 
CC7 -> (CR7: Temp'' ) 
CC8 -> (CR8: Reverse CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S ) 
CC10 -> (CR10: o CC3, CC7) 
CC11 -> (CR16: o CC8, CC3) | (CR11: Reverse CC10) 
CC12 -> (CR12: o CC11, CC4) 
CC13 -> (CR13: = CC6, CC12) 
CC14 -> (CR14: Empty_String ) 
CC15 -> (CR15: = CC1, CC14) (succedent)
CC16 -> (CR16: o CC8, CC3) | (CR11: Reverse CC10) 
CC17 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S ) 
CC18 -> (CR3: <_> CC2) | (CR18: Reverse CC3) 

```
# VC: 0_4

**VC 0_4**:
Termination of While Statement [After Logical Reduction(s)] at Obvious_Flipping_Realiz.rb(10:3)

**Goal**:
((1 + |S'|) <= |S''|) or 
(S'' = Empty_String)

**Given(s)**:
1. (S'' = (<Next_Entry''> o S'))
2. (S = (Reverse(Temp'') o S''))

**Prover Result**: Proved

## Applied Theorems:
- **Concatenation_2** (String_Theory)
- **Str_Length_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_8** (String_Theory)
- **I10_Def** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **N4_a** (Natural_Number_Theory)
- **N9_a** (Natural_Number_Theory)
- **Singleton_Str_2a** (String_Theory)
- **Reverse_3** (String_Theory)
- **LTE_6_def** (Integer_Theory)
- **N10_a** (Natural_Number_Theory)
- **N10_b** (Natural_Number_Theory)
- **NN_LTE_Addition_b** (Natural_Number_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) | (CR21: Reverse CC3) 
CC4 -> (CR4: S' ) 
CC5 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S ) 
CC7 -> (CR7: Temp'' ) 
CC8 -> (CR8: Reverse CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S ) 
CC10 -> (CR10: 1 ) | (CR19: |_| CC3) 
CC11 -> (CR11: |_| CC4 [NEXT: CR23]), (CR23: |_| CC22 [NEXT: CR26]), (CR26: |_| CC11) 
CC12 -> (CR12: + CC10, CC11 [NEXT: CR24]), (CR24: + CC11, CC10) 
CC13 -> (CR13: |_| CC1) | (CR20: + CC19, CC11) 
CC14 -> (CR14: <= CC12, CC13) 
CC15 -> (CR15: Empty_String ) 
CC16 -> (CR16: = CC1, CC15) (succedent)
CC17 -> (CR17: o CC8, CC3) 
CC18 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S ) 
CC19 -> (CR10: 1 ) | (CR19: |_| CC3) 
CC20 -> (CR13: |_| CC1) | (CR20: + CC19, CC11) 
CC21 -> (CR3: <_> CC2) | (CR21: Reverse CC3) 
CC22 -> (CR22: Reverse CC4) 
CC23 -> (CR11: |_| CC4 [NEXT: CR23]), (CR23: |_| CC22 [NEXT: CR26]), (CR26: |_| CC11) 
CC24 -> (CR12: + CC10, CC11 [NEXT: CR24]), (CR24: + CC11, CC10) 
CC25 -> (CR25: <= CC13, CC12) 
CC26 -> (CR11: |_| CC4 [NEXT: CR23]), (CR23: |_| CC22 [NEXT: CR26]), (CR26: |_| CC11) 

```
# VC: 1_1

**VC 1_1**:
Base Case of the Invariant of While Statement at Obvious_Flipping_Realiz.rb(9:15)

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
Ensures Clause of Flip at Obvious_Flipping_Realiz.rb(4:11)

**Goal**:
(Temp' = Reverse(S))

**Given(s)**:
1. (S' = Empty_String)
2. (S = (Reverse(Temp') o S'))

**Prover Result**: Proved

## Applied Theorems:
- **Concatenation_1_b** (String_Theory)
- **Reverse_2** (String_Theory)
- **Concatenation_2** (String_Theory)
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S' ) | (CR2: Empty_String ) | (CR9: Reverse CC1) 
CC2 -> (CR1: S' ) | (CR2: Empty_String ) | (CR9: Reverse CC1) 
CC3 -> (CR3: S ) | (CR5: Reverse CC4) | (CR6: o CC3, CC1) 
CC4 -> (CR4: Temp' ) 
CC5 -> (CR3: S ) | (CR5: Reverse CC4) | (CR6: o CC3, CC1) 
CC6 -> (CR3: S ) | (CR5: Reverse CC4) | (CR6: o CC3, CC1) 
CC7 -> (CR7: Reverse CC3) | (CR12: o CC11, CC7) | (CR10: o CC1, CC7) 
CC8 -> (CR8: = CC4, CC7) 
CC9 -> (CR1: S' ) | (CR2: Empty_String ) | (CR9: Reverse CC1) 
CC10 -> (CR7: Reverse CC3) | (CR12: o CC11, CC7) | (CR10: o CC1, CC7) 
CC11 -> (CR11: o CC9) 
CC12 -> (CR7: Reverse CC3) | (CR12: o CC11, CC7) | (CR10: o CC1, CC7) 

```

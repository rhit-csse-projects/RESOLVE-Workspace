Proofs for Clear_3_Realiz.rb generated Wed Apr 29 11:31:36 EDT 2026

# Summary

## Prover Settings
    Prover: General Purpose Prover
    Timeout: 5000 ms
    Number of Tries Before Halting: -1

## VC Results
| VC | Result |
| --- | --- |
| VC 0_1     |     not proved in 15 ms. |
| VC 0_2     |     not proved in 7 ms. |
| VC 0_3     |     not proved in 8 ms. |
| VC 0_4     |     not proved in 7 ms. |

## Aggregate Results
    Total number of proved VCs: 0
    Total number of unproved and skipped VCs: 4
    Total elapsed time in generating proofs: 42 ms

# Proof Generation Details

    Enhancement Realization Name:   Clear_3_Realiz
    Enhancement Name:               Clear_3_Capability
    Concept Name:                   Stack_Template

# VC: 0_1

**VC 0_1**:
Requires Clause for Pop at Clear_3_Realiz.rb(5:2)

**Goal**:
(1 <= |S|)

**Given(s)**:
1. (|S| = 3)
2. (|S| <= Max_Depth)
3. (1 <= Max_Depth)
4. (min_int <= Max_Depth)
5. (Max_Depth <= max_int)
6. (min_int <= 0)
7. (1 <= max_int)

**Prover Result**: Not Proved

## Applied Theorems:
- **N9_a** (Natural_Number_Theory)
- **LTE_1a** (Natural_Number_Theory)
- **LTE_1a** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **Not_LTE_1a** (Natural_Number_Theory)
- **Zero_LTE_One** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) 
CC2 -> (CR2: |_| CC1 [NEXT: CR18]), (CR18: |_| CC2) | (CR3: 3 ) | (CR12: 0 ) 
CC3 -> (CR2: |_| CC1 [NEXT: CR18]), (CR18: |_| CC2) | (CR3: 3 ) | (CR12: 0 ) 
CC4 -> (CR4: Max_Depth ) 
CC5 -> (CR5: <= CC2, CC4) 
CC6 -> (CR6: 1 ) 
CC7 -> (CR7: <= CC6, CC4) 
CC8 -> (CR8: min_int ) 
CC9 -> (CR9: <= CC8, CC4) 
CC10 -> (CR10: max_int ) 
CC11 -> (CR11: <= CC4, CC10) 
CC12 -> (CR2: |_| CC1 [NEXT: CR18]), (CR18: |_| CC2) | (CR3: 3 ) | (CR12: 0 ) 
CC13 -> (CR13: <= CC8, CC2) 
CC14 -> (CR14: <= CC6, CC10) 
CC15 -> (CR15: <= CC6, CC2) [35m(succedent)[0m
CC16 -> (CR16: <= CC2, CC6) 
CC17 -> (CR17: <= CC2, CC10) 
CC18 -> (CR2: |_| CC1 [NEXT: CR18]), (CR18: |_| CC2) | (CR3: 3 ) | (CR12: 0 ) 

```
# VC: 0_2

**VC 0_2**:
Requires Clause for Pop at Clear_3_Realiz.rb(6:2)

**Goal**:
(1 <= |S'''|)

**Given(s)**:
1. (S = (<Next_Entry'''> o S'''))
2. (|S| = 3)
3. (|S| <= Max_Depth)
4. (1 <= Max_Depth)
5. (min_int <= Max_Depth)
6. (Max_Depth <= max_int)
7. (min_int <= 0)
8. (1 <= max_int)

**Prover Result**: Not Proved

## Applied Theorems:
- **N9_a** (Natural_Number_Theory)
- **LTE_1a** (Natural_Number_Theory)
- **LTE_1a** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **Not_LTE_1a** (Natural_Number_Theory)
- **Zero_LTE_One** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry''' ) 
CC3 -> (CR3: <_> CC2) 
CC4 -> (CR4: S''' ) 
CC5 -> (CR1: S ) | (CR5: o CC3, CC4) 
CC6 -> (CR6: |_| CC1 [NEXT: CR23]), (CR23: |_| CC6) | (CR7: 3 ) 
CC7 -> (CR6: |_| CC1 [NEXT: CR23]), (CR23: |_| CC6) | (CR7: 3 ) 
CC8 -> (CR8: Max_Depth ) 
CC9 -> (CR9: <= CC6, CC8) 
CC10 -> (CR10: 1 ) 
CC11 -> (CR11: <= CC10, CC8) 
CC12 -> (CR12: min_int ) 
CC13 -> (CR13: <= CC12, CC8) 
CC14 -> (CR14: max_int ) 
CC15 -> (CR15: <= CC8, CC14) 
CC16 -> (CR19: |_| CC4) | (CR16: 0 ) 
CC17 -> (CR17: <= CC12, CC16) 
CC18 -> (CR18: <= CC10, CC14) 
CC19 -> (CR19: |_| CC4) | (CR16: 0 ) 
CC20 -> (CR20: <= CC10, CC16) [35m(succedent)[0m
CC21 -> (CR21: <= CC16, CC10) 
CC22 -> (CR22: <= CC6, CC14) 
CC23 -> (CR6: |_| CC1 [NEXT: CR23]), (CR23: |_| CC6) | (CR7: 3 ) 

```
# VC: 0_3

**VC 0_3**:
Requires Clause for Pop at Clear_3_Realiz.rb(7:2)

**Goal**:
(1 <= |S''|)

**Given(s)**:
1. (S''' = (<Next_Entry''> o S''))
2. (S = (<Next_Entry'''> o S'''))
3. (|S| = 3)
4. (|S| <= Max_Depth)
5. (1 <= Max_Depth)
6. (min_int <= Max_Depth)
7. (Max_Depth <= max_int)
8. (min_int <= 0)
9. (1 <= max_int)

**Prover Result**: Not Proved

## Applied Theorems:
- **N9_a** (Natural_Number_Theory)
- **LTE_1a** (Natural_Number_Theory)
- **Concatenation_2** (String_Theory)
- **LTE_1a** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **Not_LTE_1a** (Natural_Number_Theory)
- **Zero_LTE_One** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S''' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) 
CC4 -> (CR4: S'' ) 
CC5 -> (CR1: S''' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR28]), (CR28: o CC27, CC4) | (CR6: S ) 
CC7 -> (CR7: Next_Entry''' ) 
CC8 -> (CR8: <_> CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR28]), (CR28: o CC27, CC4) | (CR6: S ) 
CC10 -> (CR10: |_| CC6 [NEXT: CR29]), (CR29: |_| CC10) | (CR11: 3 ) 
CC11 -> (CR10: |_| CC6 [NEXT: CR29]), (CR29: |_| CC10) | (CR11: 3 ) 
CC12 -> (CR12: Max_Depth ) 
CC13 -> (CR13: <= CC10, CC12) 
CC14 -> (CR14: 1 ) 
CC15 -> (CR15: <= CC14, CC12) 
CC16 -> (CR16: min_int ) 
CC17 -> (CR17: <= CC16, CC12) 
CC18 -> (CR18: max_int ) 
CC19 -> (CR19: <= CC12, CC18) 
CC20 -> (CR23: |_| CC4) | (CR20: 0 ) 
CC21 -> (CR21: <= CC16, CC20) 
CC22 -> (CR22: <= CC14, CC18) 
CC23 -> (CR23: |_| CC4) | (CR20: 0 ) 
CC24 -> (CR24: <= CC14, CC20) [35m(succedent)[0m
CC25 -> (CR25: <= CC20, CC14) 
CC26 -> (CR26: <= CC10, CC18) 
CC27 -> (CR27: o CC8, CC3) 
CC28 -> (CR9: o CC8, CC1 [NEXT: CR28]), (CR28: o CC27, CC4) | (CR6: S ) 
CC29 -> (CR10: |_| CC6 [NEXT: CR29]), (CR29: |_| CC10) | (CR11: 3 ) 

```
# VC: 0_4

**VC 0_4**:
Ensures Clause of Clear_3 (Condition from "CLEARS" parameter mode) at Clear_3_Realiz.rb(2:26)

**Goal**:
(S' = Empty_String)

**Given(s)**:
1. (S'' = (<Next_Entry'> o S'))
2. (S''' = (<Next_Entry''> o S''))
3. (S = (<Next_Entry'''> o S'''))
4. (|S| = 3)
5. (|S| <= Max_Depth)
6. (1 <= Max_Depth)
7. (min_int <= Max_Depth)
8. (Max_Depth <= max_int)
9. (min_int <= 0)
10. (1 <= max_int)

**Prover Result**: Not Proved

## Applied Theorems:
- **LTE_1a** (Natural_Number_Theory)
- **Concatenation_2** (String_Theory)
- **LTE_1a** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry' ) 
CC3 -> (CR3: <_> CC2) 
CC4 -> (CR4: S' ) 
CC5 -> (CR1: S'' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR31]), (CR31: o CC30, CC4) | (CR6: S''' ) 
CC7 -> (CR7: Next_Entry'' ) 
CC8 -> (CR8: <_> CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR31]), (CR31: o CC30, CC4) | (CR6: S''' ) 
CC10 -> (CR13: o CC12, CC6) | (CR10: S ) 
CC11 -> (CR11: Next_Entry''' ) 
CC12 -> (CR12: <_> CC11) 
CC13 -> (CR13: o CC12, CC6) | (CR10: S ) 
CC14 -> (CR14: |_| CC10 [NEXT: CR32]), (CR32: |_| CC14) | (CR15: 3 ) 
CC15 -> (CR14: |_| CC10 [NEXT: CR32]), (CR32: |_| CC14) | (CR15: 3 ) 
CC16 -> (CR16: Max_Depth ) 
CC17 -> (CR17: <= CC14, CC16) 
CC18 -> (CR18: 1 ) 
CC19 -> (CR19: <= CC18, CC16) 
CC20 -> (CR20: min_int ) 
CC21 -> (CR21: <= CC20, CC16) 
CC22 -> (CR22: max_int ) 
CC23 -> (CR23: <= CC16, CC22) 
CC24 -> (CR24: 0 ) 
CC25 -> (CR25: <= CC20, CC24) 
CC26 -> (CR26: <= CC18, CC22) 
CC27 -> (CR27: Empty_String ) 
CC28 -> (CR28: = CC4, CC27) [35m(succedent)[0m
CC29 -> (CR29: <= CC14, CC22) 
CC30 -> (CR30: o CC8, CC3) 
CC31 -> (CR9: o CC8, CC1 [NEXT: CR31]), (CR31: o CC30, CC4) | (CR6: S''' ) 
CC32 -> (CR14: |_| CC10 [NEXT: CR32]), (CR32: |_| CC14) | (CR15: 3 ) 

```

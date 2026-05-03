Proofs for Do_Nothing_Realiz.rb generated Sun May 03 17:27:44 CDT 2026

# Summary

## Prover Settings
    Prover: General Purpose Prover
    Timeout: 5000 ms
    Number of Tries Before Halting: -1

## VC Results
| VC | Result |
| --- | --- |
| VC 0_1     |     proved in 2 ms. |
| VC 0_2     |     proved in 0 ms. |
| VC 0_3     |     proved in 15 ms. |
| VC 0_4     |     proved in 0 ms. |

## Aggregate Results
    Total number of proved VCs: 4
    Total number of unproved and skipped VCs: 0
    Total elapsed time in generating proofs: 23 ms

# Proof Generation Details

    Enhancement Realization Name:   Do_Nothing_Realiz
    Enhancement Name:               Do_Nothing_Capability
    Concept Name:                   Stack_Template

# VC: 0_1

**VC 0_1**:
Explicit Confirm Statement at Do_Nothing_Realiz.rb(7:2)

**Goal**:
((0 + 1) = (0 + 1))

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: 0 ) 
CC2 -> (CR2: 1 ) 
CC3 -> (CR3: + CC1, CC2) 

```
# VC: 0_2

**VC 0_2**:
Requires Clause for Pop at Do_Nothing_Realiz.rb(9:2)

**Goal**:
(1 <= |S|)

**Given(s)**:
1. (1 <= |S|)
2. (|S| <= Max_Depth)
3. (1 <= Max_Depth)
4. (min_int <= Max_Depth)
5. (Max_Depth <= max_int)
6. (min_int <= 0)
7. (1 <= max_int)

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: 1 ) 
CC2 -> (CR2: S ) 
CC3 -> (CR3: |_| CC2) 
CC4 -> (CR4: <= CC1, CC3) (succedent)
CC5 -> (CR5: Max_Depth ) 
CC6 -> (CR6: <= CC3, CC5) 
CC7 -> (CR7: <= CC1, CC5) 
CC8 -> (CR8: min_int ) 
CC9 -> (CR9: <= CC8, CC5) 
CC10 -> (CR10: max_int ) 
CC11 -> (CR11: <= CC5, CC10) 
CC12 -> (CR12: 0 ) 
CC13 -> (CR13: <= CC8, CC12) 
CC14 -> (CR14: <= CC1, CC10) 

```
# VC: 0_3

**VC 0_3**:
Requires Clause for Push at Do_Nothing_Realiz.rb(10:2)

**Goal**:
((1 + |S''|) <= Max_Depth)

**Given(s)**:
1. (S = (<Next_Entry''> o S''))
2. (1 <= Max_Depth)
3. (min_int <= Max_Depth)
4. (Max_Depth <= max_int)
5. (1 <= |S|)
6. (|S| <= Max_Depth)
7. (min_int <= 0)
8. (1 <= max_int)

**Prover Result**: Proved

## Applied Theorems:
- **N4_a** (Natural_Number_Theory)
- **N9_a** (Natural_Number_Theory)
- **LTE_1a** (Natural_Number_Theory)
- **Str_Length_1_a** (String_Theory)
- **Str_Length_3_a** (String_Theory)
- **Str_Length_2** (String_Theory)
- **I10_Def** (Integer_Theory)
- **LTE_1a** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **NN_LTE_Addition_b** (Natural_Number_Theory)
- **Str_Length_Expanded_Def_i** (String_Theory)
- **Str_Length_2_a** (String_Theory)
- **Singleton_Str_2a** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) | (CR5: o CC3, CC4) | (CR25: + ) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) 
CC4 -> (CR4: S'' ) 
CC5 -> (CR1: S ) | (CR5: o CC3, CC4) | (CR25: + ) 
CC6 -> (CR6: 1 ) 
CC7 -> (CR7: Max_Depth ) 
CC8 -> (CR8: <= CC6, CC7) 
CC9 -> (CR9: min_int ) 
CC10 -> (CR10: <= CC9, CC7) 
CC11 -> (CR11: max_int ) 
CC12 -> (CR12: <= CC7, CC11) 
CC13 -> (CR13: |_| CC1 [NEXT: CR29]), (CR29: |_| CC13) | (CR28: + CC27, CC19) 
CC14 -> (CR14: <= CC6, CC13) 
CC15 -> (CR15: <= CC13, CC7) 
CC16 -> (CR16: 0 ) 
CC17 -> (CR17: <= CC9, CC16) 
CC18 -> (CR18: <= CC6, CC11) 
CC19 -> (CR19: |_| CC4) 
CC20 -> (CR20: + CC6, CC19 [NEXT: CR22]), (CR22: + CC19, CC6) 
CC21 -> (CR21: <= CC20, CC7) (succedent)
CC22 -> (CR20: + CC6, CC19 [NEXT: CR22]), (CR22: + CC19, CC6) 
CC23 -> (CR23: <= CC7, CC20) 
CC24 -> (CR24: <= CC20, CC6) 
CC25 -> (CR1: S ) | (CR5: o CC3, CC4) | (CR25: + ) 
CC26 -> (CR26: <= CC13, CC16) 
CC27 -> (CR27: |_| CC3) 
CC28 -> (CR13: |_| CC1 [NEXT: CR29]), (CR29: |_| CC13) | (CR28: + CC27, CC19) 
CC29 -> (CR13: |_| CC1 [NEXT: CR29]), (CR29: |_| CC13) | (CR28: + CC27, CC19) 
CC30 -> (CR30: <= CC27, CC19) 
CC31 -> (CR31: <= CC19, CC7) 

```
# VC: 0_4

**VC 0_4**:
Ensures Clause of Do_Nothing (Condition from "RESTORES" parameter mode) at Do_Nothing_Realiz.rb(2:31)

**Goal**:
((<Next_Entry''> o S'') = S)

**Given(s)**:
1. (S = (<Next_Entry''> o S''))
2. (1 <= |S|)
3. (|S| <= Max_Depth)
4. (1 <= Max_Depth)
5. (min_int <= Max_Depth)
6. (Max_Depth <= max_int)
7. (min_int <= 0)
8. (1 <= max_int)

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) 
CC4 -> (CR4: S'' ) 
CC5 -> (CR1: S ) | (CR5: o CC3, CC4) 
CC6 -> (CR6: 1 ) 
CC7 -> (CR7: |_| CC1) 
CC8 -> (CR8: <= CC6, CC7) 
CC9 -> (CR9: Max_Depth ) 
CC10 -> (CR10: <= CC7, CC9) 
CC11 -> (CR11: <= CC6, CC9) 
CC12 -> (CR12: min_int ) 
CC13 -> (CR13: <= CC12, CC9) 
CC14 -> (CR14: max_int ) 
CC15 -> (CR15: <= CC9, CC14) 
CC16 -> (CR16: 0 ) 
CC17 -> (CR17: <= CC12, CC16) 
CC18 -> (CR18: <= CC6, CC14) 

```

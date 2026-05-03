Proofs for Obvious_CC_Realiz.rb generated Sun May 03 18:07:33 CDT 2026

# Summary

## Prover Settings
    Prover: General Purpose Prover
    Timeout: 5000 ms
    Number of Tries Before Halting: -1

## VC Results
| VC | Result |
| --- | --- |
| VC 0_1     |     proved in 11 ms. |
| VC 0_2     |     proved in 0 ms. |
| VC 0_3     |     proved in 2 ms. |
| VC 0_4     |     proved in 7 ms. |
| VC 1_1     |     proved in 1 ms. |
| VC 1_2     |     proved in 0 ms. |
| VC 1_3     |     proved in 0 ms. |
| VC 1_4     |     proved in 0 ms. |
| VC 1_5     |     proved in 0 ms. |
| VC 1_6     |     proved in 2 ms. |
| VC 1_7     |     proved in 6 ms. |
| VC 2_1     |     proved in 1 ms. |
| VC 2_2     |     proved in 0 ms. |
| VC 2_3     |     proved in 1 ms. |
| VC 2_4     |     proved in 5 ms. |
| VC 3_1     |     proved in 0 ms. |
| VC 3_2     |     proved in 0 ms. |
| VC 3_3     |     proved in 0 ms. |
| VC 3_4     |     proved in 0 ms. |
| VC 3_5     |     not proved in 2 ms. |

## Aggregate Results
    Total number of proved VCs: 19
    Total number of unproved and skipped VCs: 1
    Total elapsed time in generating proofs: 49 ms

# Proof Generation Details

    Enhancement Realization Name:   Obvious_CC_Realiz
    Enhancement Name:               Copying_Capability
    Concept Name:                   Globally_Bounded_Stack_Template

# VC: 0_1

**VC 0_1**:
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(14:24)

**Goal**:
(S_Orig = (Reverse(Empty_String) o S_Orig))

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Concatenation_1_a** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig ) 
CC2 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC3 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC4 -> (CR4: o CC2, CC1) 
CC5 -> (CR5: = CC1, CC4) 

```
# VC: 0_2

**VC 0_2**:
Requires Clause for Pop [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(17:12)

**Goal**:
(S_Orig'''' = Empty_String)

**Given(s)**:
1. (S_Orig'''' = Empty_String)
2. (S_Orig = (Reverse(S_Reversed'''') o S_Orig''''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig'''' ) | (CR2: Empty_String ) 
CC2 -> (CR1: S_Orig'''' ) | (CR2: Empty_String ) 
CC3 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 
CC4 -> (CR4: S_Reversed'''' ) 
CC5 -> (CR5: Reverse CC4) 
CC6 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 

```
# VC: 0_3

**VC 0_3**:
Inductive Case of Invariant of While Statement [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(14:24)

**Goal**:
(S_Orig = (Reverse((<Next_Entry'''''> o S_Reversed'''')) o S_Orig''')) or 
(S_Orig'''' = Empty_String)

**Given(s)**:
1. (S_Orig'''' = (<Next_Entry'''''> o S_Orig'''))
2. (S_Orig = (Reverse(S_Reversed'''') o S_Orig''''))

**Prover Result**: Proved

## Applied Theorems:
- **Concatenation_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_2** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig'''' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry''''' ) 
CC3 -> (CR3: <_> CC2) | (CR18: Reverse CC3) 
CC4 -> (CR4: S_Orig''' ) 
CC5 -> (CR1: S_Orig'''' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S_Orig ) 
CC7 -> (CR7: S_Reversed'''' ) 
CC8 -> (CR8: Reverse CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S_Orig ) 
CC10 -> (CR10: o CC3, CC7) 
CC11 -> (CR16: o CC8, CC3) | (CR11: Reverse CC10) 
CC12 -> (CR12: o CC11, CC4) 
CC13 -> (CR13: = CC6, CC12) 
CC14 -> (CR14: Empty_String ) 
CC15 -> (CR15: = CC1, CC14) (succedent)
CC16 -> (CR16: o CC8, CC3) | (CR11: Reverse CC10) 
CC17 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S_Orig ) 
CC18 -> (CR3: <_> CC2) | (CR18: Reverse CC3) 

```
# VC: 0_4

**VC 0_4**:
Termination of While Statement [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(15:12)

**Goal**:
((1 + |S_Orig'''|) <= |S_Orig''''|) or 
(S_Orig'''' = Empty_String)

**Given(s)**:
1. (S_Orig'''' = (<Next_Entry'''''> o S_Orig'''))
2. (S_Orig = (Reverse(S_Reversed'''') o S_Orig''''))

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
CC1 -> (CR1: S_Orig'''' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry''''' ) 
CC3 -> (CR3: <_> CC2) | (CR21: Reverse CC3) 
CC4 -> (CR4: S_Orig''' ) 
CC5 -> (CR1: S_Orig'''' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S_Orig ) 
CC7 -> (CR7: S_Reversed'''' ) 
CC8 -> (CR8: Reverse CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S_Orig ) 
CC10 -> (CR10: 1 ) | (CR19: |_| CC3) 
CC11 -> (CR11: |_| CC4 [NEXT: CR23]), (CR23: |_| CC22 [NEXT: CR26]), (CR26: |_| CC11) 
CC12 -> (CR12: + CC10, CC11 [NEXT: CR24]), (CR24: + CC11, CC10) 
CC13 -> (CR13: |_| CC1) | (CR20: + CC19, CC11) 
CC14 -> (CR14: <= CC12, CC13) 
CC15 -> (CR15: Empty_String ) 
CC16 -> (CR16: = CC1, CC15) (succedent)
CC17 -> (CR17: o CC8, CC3) 
CC18 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S_Orig ) 
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
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(14:24)

**Goal**:
(S_Orig = (Reverse(Empty_String) o S_Orig))

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Concatenation_1_a** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig ) 
CC2 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC3 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC4 -> (CR4: o CC2, CC1) 
CC5 -> (CR5: = CC1, CC4) 

```
# VC: 1_2

**VC 1_2**:
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(25:24)

**Goal**:
(Empty_String = Empty_String)

**Given(s)**:
1. (S_Orig''' = Empty_String)
2. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig''' ) | (CR2: Empty_String ) 
CC2 -> (CR1: S_Orig''' ) | (CR2: Empty_String ) 
CC3 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 
CC4 -> (CR4: S_Reversed''' ) 
CC5 -> (CR5: Reverse CC4) 
CC6 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 

```
# VC: 1_3

**VC 1_3**:
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(25:24)

**Goal**:
(S_Orig = (Reverse(S_Reversed''') o Empty_String))

**Given(s)**:
1. (S_Orig''' = Empty_String)
2. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig''' ) | (CR2: Empty_String ) 
CC2 -> (CR1: S_Orig''' ) | (CR2: Empty_String ) 
CC3 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 
CC4 -> (CR4: S_Reversed''' ) 
CC5 -> (CR5: Reverse CC4) 
CC6 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 

```
# VC: 1_4

**VC 1_4**:
Requires Clause for Pop [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(29:12)

**Goal**:
(S_Reversed'' = Empty_String)

**Given(s)**:
1. (S_Reversed'' = Empty_String)
2. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))
3. (S_Copy'' = S_Orig'')
4. (S_Orig''' = Empty_String)
5. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Reversed'' ) | (CR2: Empty_String ) | (CR8: S_Orig''' ) 
CC2 -> (CR1: S_Reversed'' ) | (CR2: Empty_String ) | (CR8: S_Orig''' ) 
CC3 -> (CR3: S_Orig ) | (CR11: o CC10, CC1) | (CR6: o CC4, CC5) 
CC4 -> (CR4: Reverse CC1) 
CC5 -> (CR5: S_Orig'' ) | (CR7: S_Copy'' ) 
CC6 -> (CR3: S_Orig ) | (CR11: o CC10, CC1) | (CR6: o CC4, CC5) 
CC7 -> (CR5: S_Orig'' ) | (CR7: S_Copy'' ) 
CC8 -> (CR1: S_Reversed'' ) | (CR2: Empty_String ) | (CR8: S_Orig''' ) 
CC9 -> (CR9: S_Reversed''' ) 
CC10 -> (CR10: Reverse CC9) 
CC11 -> (CR3: S_Orig ) | (CR11: o CC10, CC1) | (CR6: o CC4, CC5) 

```
# VC: 1_5

**VC 1_5**:
Inductive Case of Invariant of While Statement [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(25:24)

**Goal**:
((<Entry_Copy''> o S_Copy'') = (<Next_Entry''> o S_Orig'')) or 
(S_Reversed'' = Empty_String)

**Given(s)**:
1. (Entry_Copy'' = Next_Entry'')
2. (S_Reversed'' = (<Next_Entry''> o S_Reversed'))
3. (S_Copy'' = S_Orig'')
4. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))
5. (S_Orig''' = Empty_String)
6. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: Entry_Copy'' ) | (CR2: Next_Entry'' ) 
CC2 -> (CR1: Entry_Copy'' ) | (CR2: Next_Entry'' ) 
CC3 -> (CR3: S_Reversed'' ) | (CR6: o CC4, CC5) 
CC4 -> (CR4: <_> CC1) 
CC5 -> (CR5: S_Reversed' ) 
CC6 -> (CR3: S_Reversed'' ) | (CR6: o CC4, CC5) 
CC7 -> (CR7: S_Copy'' ) | (CR8: S_Orig'' ) 
CC8 -> (CR7: S_Copy'' ) | (CR8: S_Orig'' ) 
CC9 -> (CR11: o CC10, CC7 [NEXT: CR16]), (CR16: o CC15, CC12) | (CR9: S_Orig ) 
CC10 -> (CR10: Reverse CC3) 
CC11 -> (CR11: o CC10, CC7 [NEXT: CR16]), (CR16: o CC15, CC12) | (CR9: S_Orig ) 
CC12 -> (CR12: S_Orig''' ) | (CR13: Empty_String ) 
CC13 -> (CR12: S_Orig''' ) | (CR13: Empty_String ) 
CC14 -> (CR14: S_Reversed''' ) 
CC15 -> (CR15: Reverse CC14) 
CC16 -> (CR11: o CC10, CC7 [NEXT: CR16]), (CR16: o CC15, CC12) | (CR9: S_Orig ) 
CC17 -> (CR17: o CC4, CC7) 

```
# VC: 1_6

**VC 1_6**:
Inductive Case of Invariant of While Statement [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(25:24)

**Goal**:
(S_Orig = (Reverse(S_Reversed') o (<Next_Entry''> o S_Orig''))) or 
(S_Reversed'' = Empty_String)

**Given(s)**:
1. (Entry_Copy'' = Next_Entry'')
2. (S_Reversed'' = (<Next_Entry''> o S_Reversed'))
3. (S_Copy'' = S_Orig'')
4. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))
5. (S_Orig''' = Empty_String)
6. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:
- **Concatenation_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_2** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: Entry_Copy'' ) | (CR2: Next_Entry'' ) 
CC2 -> (CR1: Entry_Copy'' ) | (CR2: Next_Entry'' ) 
CC3 -> (CR3: S_Reversed'' ) | (CR6: o CC4, CC5) 
CC4 -> (CR4: <_> CC1) | (CR24: Reverse CC4) 
CC5 -> (CR5: S_Reversed' ) 
CC6 -> (CR3: S_Reversed'' ) | (CR6: o CC4, CC5) 
CC7 -> (CR7: S_Copy'' ) | (CR8: S_Orig'' ) 
CC8 -> (CR7: S_Copy'' ) | (CR8: S_Orig'' ) 
CC9 -> (CR11: o CC10, CC7 [NEXT: CR16]), (CR16: o CC15, CC12) | (CR9: S_Orig ) 
CC10 -> (CR22: o CC17, CC4) | (CR10: Reverse CC3) 
CC11 -> (CR11: o CC10, CC7 [NEXT: CR16]), (CR16: o CC15, CC12) | (CR9: S_Orig ) 
CC12 -> (CR12: S_Orig''' ) | (CR13: Empty_String ) 
CC13 -> (CR12: S_Orig''' ) | (CR13: Empty_String ) 
CC14 -> (CR14: S_Reversed''' ) 
CC15 -> (CR15: Reverse CC14) 
CC16 -> (CR11: o CC10, CC7 [NEXT: CR16]), (CR16: o CC15, CC12) | (CR9: S_Orig ) 
CC17 -> (CR17: Reverse CC5) 
CC18 -> (CR18: o CC4, CC7) 
CC19 -> (CR19: o CC17, CC18 [NEXT: CR23]), (CR23: o CC22, CC7) 
CC20 -> (CR20: = CC9, CC19) 
CC21 -> (CR21: = CC3, CC12) (succedent)
CC22 -> (CR22: o CC17, CC4) | (CR10: Reverse CC3) 
CC23 -> (CR19: o CC17, CC18 [NEXT: CR23]), (CR23: o CC22, CC7) 
CC24 -> (CR4: <_> CC1) | (CR24: Reverse CC4) 

```
# VC: 1_7

**VC 1_7**:
Termination of While Statement [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(27:12)

**Goal**:
((1 + |S_Reversed'|) <= |S_Reversed''|) or 
(S_Reversed'' = Empty_String)

**Given(s)**:
1. (S_Reversed'' = (<Next_Entry''> o S_Reversed'))
2. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))
3. (S_Copy'' = S_Orig'')
4. (S_Orig''' = Empty_String)
5. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:
- **Str_Length_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_2** (String_Theory)
- **Reverse_8** (String_Theory)
- **I10_Def** (Integer_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **N4_a** (Natural_Number_Theory)
- **N9_a** (Natural_Number_Theory)
- **Concatenation_2** (String_Theory)
- **Singleton_Str_2a** (String_Theory)
- **Reverse_3** (String_Theory)
- **LTE_6_def** (Integer_Theory)
- **N10_a** (Natural_Number_Theory)
- **N10_b** (Natural_Number_Theory)
- **NN_LTE_Addition_b** (Natural_Number_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Reversed'' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry'' ) 
CC3 -> (CR3: <_> CC2) | (CR24: Reverse CC3) 
CC4 -> (CR4: S_Reversed' ) 
CC5 -> (CR1: S_Reversed'' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC7, CC8 [NEXT: CR15]), (CR15: o CC14, CC11 [NEXT: CR32]), (CR32: o CC25, CC31) | (CR6: S_Orig ) 
CC7 -> (CR26: o CC25, CC3) | (CR7: Reverse CC1) 
CC8 -> (CR8: S_Orig'' ) | (CR10: S_Copy'' ) 
CC9 -> (CR9: o CC7, CC8 [NEXT: CR15]), (CR15: o CC14, CC11 [NEXT: CR32]), (CR32: o CC25, CC31) | (CR6: S_Orig ) 
CC10 -> (CR8: S_Orig'' ) | (CR10: S_Copy'' ) 
CC11 -> (CR11: S_Orig''' ) | (CR12: Empty_String ) 
CC12 -> (CR11: S_Orig''' ) | (CR12: Empty_String ) 
CC13 -> (CR13: S_Reversed''' ) 
CC14 -> (CR14: Reverse CC13) 
CC15 -> (CR9: o CC7, CC8 [NEXT: CR15]), (CR15: o CC14, CC11 [NEXT: CR32]), (CR32: o CC25, CC31) | (CR6: S_Orig ) 
CC16 -> (CR16: 1 ) | (CR22: |_| CC3) 
CC17 -> (CR17: |_| CC4 [NEXT: CR27]), (CR27: |_| CC25 [NEXT: CR30]), (CR30: |_| CC17) 
CC18 -> (CR18: + CC16, CC17 [NEXT: CR28]), (CR28: + CC17, CC16) 
CC19 -> (CR19: |_| CC1) | (CR23: + CC22, CC17) 
CC20 -> (CR20: <= CC18, CC19) 
CC21 -> (CR21: = CC1, CC11) (succedent)
CC22 -> (CR16: 1 ) | (CR22: |_| CC3) 
CC23 -> (CR19: |_| CC1) | (CR23: + CC22, CC17) 
CC24 -> (CR3: <_> CC2) | (CR24: Reverse CC3) 
CC25 -> (CR25: Reverse CC4) 
CC26 -> (CR26: o CC25, CC3) | (CR7: Reverse CC1) 
CC27 -> (CR17: |_| CC4 [NEXT: CR27]), (CR27: |_| CC25 [NEXT: CR30]), (CR30: |_| CC17) 
CC28 -> (CR18: + CC16, CC17 [NEXT: CR28]), (CR28: + CC17, CC16) 
CC29 -> (CR29: <= CC19, CC18) 
CC30 -> (CR17: |_| CC4 [NEXT: CR27]), (CR27: |_| CC25 [NEXT: CR30]), (CR30: |_| CC17) 
CC31 -> (CR31: o CC3, CC8) 
CC32 -> (CR9: o CC7, CC8 [NEXT: CR15]), (CR15: o CC14, CC11 [NEXT: CR32]), (CR32: o CC25, CC31) | (CR6: S_Orig ) 

```
# VC: 2_1

**VC 2_1**:
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(14:24)

**Goal**:
(S_Orig = (Reverse(Empty_String) o S_Orig))

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Concatenation_1_a** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig ) 
CC2 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC3 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC4 -> (CR4: o CC2, CC1) 
CC5 -> (CR5: = CC1, CC4) 

```
# VC: 2_2

**VC 2_2**:
Requires Clause for Pop [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(17:12)

**Goal**:
(S_Orig''' = Empty_String)

**Given(s)**:
1. (S_Orig''' = Empty_String)
2. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig''' ) | (CR2: Empty_String ) 
CC2 -> (CR1: S_Orig''' ) | (CR2: Empty_String ) 
CC3 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 
CC4 -> (CR4: S_Reversed''' ) 
CC5 -> (CR5: Reverse CC4) 
CC6 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 

```
# VC: 2_3

**VC 2_3**:
Inductive Case of Invariant of While Statement [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(14:24)

**Goal**:
(S_Orig = (Reverse((<Next_Entry'''> o S_Reversed''')) o S_Orig'')) or 
(S_Orig''' = Empty_String)

**Given(s)**:
1. (S_Orig''' = (<Next_Entry'''> o S_Orig''))
2. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

**Prover Result**: Proved

## Applied Theorems:
- **Concatenation_2** (String_Theory)
- **Reverse_1a** (String_Theory)
- **Reverse_2** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig''' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry''' ) 
CC3 -> (CR3: <_> CC2) | (CR18: Reverse CC3) 
CC4 -> (CR4: S_Orig'' ) 
CC5 -> (CR1: S_Orig''' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S_Orig ) 
CC7 -> (CR7: S_Reversed''' ) 
CC8 -> (CR8: Reverse CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S_Orig ) 
CC10 -> (CR10: o CC3, CC7) 
CC11 -> (CR16: o CC8, CC3) | (CR11: Reverse CC10) 
CC12 -> (CR12: o CC11, CC4) 
CC13 -> (CR13: = CC6, CC12) 
CC14 -> (CR14: Empty_String ) 
CC15 -> (CR15: = CC1, CC14) (succedent)
CC16 -> (CR16: o CC8, CC3) | (CR11: Reverse CC10) 
CC17 -> (CR9: o CC8, CC1 [NEXT: CR17]), (CR17: o CC16, CC4) | (CR6: S_Orig ) 
CC18 -> (CR3: <_> CC2) | (CR18: Reverse CC3) 

```
# VC: 2_4

**VC 2_4**:
Termination of While Statement [After Logical Reduction(s)] at Obvious_CC_Realiz.rb(15:12)

**Goal**:
((1 + |S_Orig''|) <= |S_Orig'''|) or 
(S_Orig''' = Empty_String)

**Given(s)**:
1. (S_Orig''' = (<Next_Entry'''> o S_Orig''))
2. (S_Orig = (Reverse(S_Reversed''') o S_Orig'''))

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
CC1 -> (CR1: S_Orig''' ) | (CR5: o CC3, CC4) 
CC2 -> (CR2: Next_Entry''' ) 
CC3 -> (CR3: <_> CC2) | (CR21: Reverse CC3) 
CC4 -> (CR4: S_Orig'' ) 
CC5 -> (CR1: S_Orig''' ) | (CR5: o CC3, CC4) 
CC6 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S_Orig ) 
CC7 -> (CR7: S_Reversed''' ) 
CC8 -> (CR8: Reverse CC7) 
CC9 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S_Orig ) 
CC10 -> (CR10: 1 ) | (CR19: |_| CC3) 
CC11 -> (CR11: |_| CC4 [NEXT: CR23]), (CR23: |_| CC22 [NEXT: CR26]), (CR26: |_| CC11) 
CC12 -> (CR12: + CC10, CC11 [NEXT: CR24]), (CR24: + CC11, CC10) 
CC13 -> (CR13: |_| CC1) | (CR20: + CC19, CC11) 
CC14 -> (CR14: <= CC12, CC13) 
CC15 -> (CR15: Empty_String ) 
CC16 -> (CR16: = CC1, CC15) (succedent)
CC17 -> (CR17: o CC8, CC3) 
CC18 -> (CR9: o CC8, CC1 [NEXT: CR18]), (CR18: o CC17, CC4) | (CR6: S_Orig ) 
CC19 -> (CR10: 1 ) | (CR19: |_| CC3) 
CC20 -> (CR13: |_| CC1) | (CR20: + CC19, CC11) 
CC21 -> (CR3: <_> CC2) | (CR21: Reverse CC3) 
CC22 -> (CR22: Reverse CC4) 
CC23 -> (CR11: |_| CC4 [NEXT: CR23]), (CR23: |_| CC22 [NEXT: CR26]), (CR26: |_| CC11) 
CC24 -> (CR12: + CC10, CC11 [NEXT: CR24]), (CR24: + CC11, CC10) 
CC25 -> (CR25: <= CC13, CC12) 
CC26 -> (CR11: |_| CC4 [NEXT: CR23]), (CR23: |_| CC22 [NEXT: CR26]), (CR26: |_| CC11) 

```
# VC: 3_1

**VC 3_1**:
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(14:24)

**Goal**:
(S_Orig = (Reverse(Empty_String) o S_Orig))

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Concatenation_1_a** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig ) 
CC2 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC3 -> (CR2: Empty_String ) | (CR3: Reverse CC2) 
CC4 -> (CR4: o CC2, CC1) 
CC5 -> (CR5: = CC1, CC4) 

```
# VC: 3_2

**VC 3_2**:
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(25:24)

**Goal**:
(Empty_String = Empty_String)

**Given(s)**:
1. (S_Orig'' = Empty_String)
2. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig'' ) | (CR2: Empty_String ) 
CC2 -> (CR1: S_Orig'' ) | (CR2: Empty_String ) 
CC3 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 
CC4 -> (CR4: S_Reversed'' ) 
CC5 -> (CR5: Reverse CC4) 
CC6 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 

```
# VC: 3_3

**VC 3_3**:
Base Case of the Invariant of While Statement at Obvious_CC_Realiz.rb(25:24)

**Goal**:
(S_Orig = (Reverse(S_Reversed'') o Empty_String))

**Given(s)**:
1. (S_Orig'' = Empty_String)
2. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Orig'' ) | (CR2: Empty_String ) 
CC2 -> (CR1: S_Orig'' ) | (CR2: Empty_String ) 
CC3 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 
CC4 -> (CR4: S_Reversed'' ) 
CC5 -> (CR5: Reverse CC4) 
CC6 -> (CR3: S_Orig ) | (CR6: o CC5, CC1) 

```
# VC: 3_4

**VC 3_4**:
Ensures Clause of Copy_Stack at Obvious_CC_Realiz.rb(8:14)

**Goal**:
(S_Copy' = S_Orig')

**Given(s)**:
1. (S_Reversed' = Empty_String)
2. (S_Copy' = S_Orig')
3. (S_Orig = (Reverse(S_Reversed') o S_Orig'))
4. (S_Orig'' = Empty_String)
5. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR8: S_Orig'' ) 
CC2 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR8: S_Orig'' ) 
CC3 -> (CR3: S_Copy' ) | (CR4: S_Orig' ) 
CC4 -> (CR3: S_Copy' ) | (CR4: S_Orig' ) 
CC5 -> (CR5: S_Orig ) | (CR11: o CC10, CC1) | (CR7: o CC6, CC3) 
CC6 -> (CR6: Reverse CC1) 
CC7 -> (CR5: S_Orig ) | (CR11: o CC10, CC1) | (CR7: o CC6, CC3) 
CC8 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR8: S_Orig'' ) 
CC9 -> (CR9: S_Reversed'' ) 
CC10 -> (CR10: Reverse CC9) 
CC11 -> (CR5: S_Orig ) | (CR11: o CC10, CC1) | (CR7: o CC6, CC3) 

```
# VC: 3_5

**VC 3_5**:
Ensures Clause of Copy_Stack (Condition from "RESTORES" parameter mode) at Obvious_CC_Realiz.rb(8:58)

**Goal**:
(S_Orig' = S_Orig)

**Given(s)**:
1. (S_Reversed' = Empty_String)
2. (S_Copy' = S_Orig')
3. (S_Orig = (Reverse(S_Reversed') o S_Orig'))
4. (S_Orig'' = Empty_String)
5. (S_Orig = (Reverse(S_Reversed'') o S_Orig''))

**Prover Result**: Not Proved

## Applied Theorems:
- **Concatenation_1_b** (String_Theory)
- **Reverse_Expanded_Definition_i** (String_Theory)
- **Reverse_2** (String_Theory)
- **Reverse_3** (String_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR19: Reverse CC6) | (CR21: Reverse CC1) | (CR6: Reverse CC1) | (CR8: S_Orig'' ) 
CC2 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR19: Reverse CC6) | (CR21: Reverse CC1) | (CR6: Reverse CC1) | (CR8: S_Orig'' ) 
CC3 -> (CR3: S_Copy' ) | (CR4: S_Orig' ) 
CC4 -> (CR3: S_Copy' ) | (CR4: S_Orig' ) 
CC5 -> (CR5: S_Orig ) | (CR10: Reverse CC9) | (CR11: o CC5, CC1) | (CR7: o CC1, CC3) 
CC6 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR19: Reverse CC6) | (CR21: Reverse CC1) | (CR6: Reverse CC1) | (CR8: S_Orig'' ) 
CC7 -> (CR5: S_Orig ) | (CR10: Reverse CC9) | (CR11: o CC5, CC1) | (CR7: o CC1, CC3) 
CC8 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR19: Reverse CC6) | (CR21: Reverse CC1) | (CR6: Reverse CC1) | (CR8: S_Orig'' ) 
CC9 -> (CR9: S_Reversed'' ) 
CC10 -> (CR5: S_Orig ) | (CR10: Reverse CC9) | (CR11: o CC5, CC1) | (CR7: o CC1, CC3) 
CC11 -> (CR5: S_Orig ) | (CR10: Reverse CC9) | (CR11: o CC5, CC1) | (CR7: o CC1, CC3) 
CC12 -> (CR12: = CC3, CC5) (succedent)
CC13 -> (CR13: o CC6, CC9) 
CC14 -> (CR14: Reverse CC13 [NEXT: CR18]), (CR18: Reverse CC17) | (CR16: o CC15, CC1 [NEXT: CR20]), (CR20: o CC15, CC1) 
CC15 -> (CR15: Reverse CC9) 
CC16 -> (CR14: Reverse CC13 [NEXT: CR18]), (CR18: Reverse CC17) | (CR16: o CC15, CC1 [NEXT: CR20]), (CR20: o CC15, CC1) 
CC17 -> (CR17: o CC6, CC9) 
CC18 -> (CR14: Reverse CC13 [NEXT: CR18]), (CR18: Reverse CC17) | (CR16: o CC15, CC1 [NEXT: CR20]), (CR20: o CC15, CC1) 
CC19 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR19: Reverse CC6) | (CR21: Reverse CC1) | (CR6: Reverse CC1) | (CR8: S_Orig'' ) 
CC20 -> (CR18: Reverse CC17) | (CR20: o CC15, CC1) 
CC21 -> (CR1: S_Reversed' ) | (CR2: Empty_String ) | (CR19: Reverse CC6) | (CR21: Reverse CC1) | (CR6: Reverse CC1) | (CR8: S_Orig'' ) 

```

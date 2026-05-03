Proofs for Def_Pop_Realiz.rb generated Wed Apr 29 11:28:37 EDT 2026

# Summary

## Prover Settings
    Prover: General Purpose Prover
    Timeout: 5000 ms
    Number of Tries Before Halting: -1

## VC Results
| VC | Result |
| --- | --- |
| VC 0_1     |     not proved in 11 ms. |
| VC 0_2     |     not proved in 2 ms. |
| VC 0_3     |     not proved in 4 ms. |
| VC 1_1     |     proved in 1 ms. |
| VC 1_2     |     not proved in 2 ms. |
| VC 1_3     |     proved in 0 ms. |
| VC 1_4     |     proved in 0 ms. |

## Aggregate Results
    Total number of proved VCs: 3
    Total number of unproved and skipped VCs: 4
    Total elapsed time in generating proofs: 27 ms

# Proof Generation Details

    Enhancement Realization Name:   Def_Pop_Realiz
    Enhancement Name:               Def_Pop_Capability
    Concept Name:                   Stack_Template

# VC: 0_1

**VC 0_1**:
Ensures Clause of Def_Pop at Def_Pop_Realiz.rb(3:14)

**Goal**:
(true = (|S| = 0))

**Given(s)**:
1. (|S| = 0)

**Prover Result**: Not Proved

## Applied Theorems:
- **Abs_Val_1** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) 
CC2 -> (CR2: |_| CC1 [NEXT: CR7]), (CR7: |_| CC2) | (CR3: 0 ) 
CC3 -> (CR2: |_| CC1 [NEXT: CR7]), (CR7: |_| CC2) | (CR3: 0 ) 
CC4 -> (CR4: true ) 
CC5 -> (CR5: = CC2) 
CC6 -> (CR6: = CC4, CC5) [35m(succedent)[0m
CC7 -> (CR2: |_| CC1 [NEXT: CR7]), (CR7: |_| CC2) | (CR3: 0 ) 

```
# VC: 0_2

**VC 0_2**:
Ensures Clause of Def_Pop [After Logical Reduction(s)] at Def_Pop_Realiz.rb(3:14)

**Goal**:
(S = Empty_String)

**Given(s)**:
1. (|S| = 0)
2. (|S| = 0)

**Prover Result**: Not Proved

## Applied Theorems:
- **Abs_Val_1** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) 
CC2 -> (CR2: |_| CC1 [NEXT: CR6]), (CR6: |_| CC2) | (CR3: 0 ) 
CC3 -> (CR2: |_| CC1 [NEXT: CR6]), (CR6: |_| CC2) | (CR3: 0 ) 
CC4 -> (CR4: Empty_String ) 
CC5 -> (CR5: = CC1, CC4) [35m(succedent)[0m
CC6 -> (CR2: |_| CC1 [NEXT: CR6]), (CR6: |_| CC2) | (CR3: 0 ) 

```
# VC: 0_3

**VC 0_3**:
Ensures Clause of Def_Pop [After Logical Reduction(s)] at Def_Pop_Realiz.rb(3:14)

**Goal**:
(S = (<R> o S))

**Given(s)**:
1. (|S| /= 0)
2. (|S| = 0)

**Prover Result**: Not Proved

## Applied Theorems:
- **Abs_Val_1** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) 
CC2 -> (CR2: |_| CC1 [NEXT: CR9]), (CR9: |_| CC2) | (CR3: 0 ) 
CC3 -> (CR2: |_| CC1 [NEXT: CR9]), (CR9: |_| CC2) | (CR3: 0 ) 
CC4 -> (CR4: /= CC2, CC2) 
CC5 -> (CR5: R ) 
CC6 -> (CR6: <_> CC5) 
CC7 -> (CR7: o CC6, CC1) 
CC8 -> (CR8: = CC1, CC7) [35m(succedent)[0m
CC9 -> (CR2: |_| CC1 [NEXT: CR9]), (CR9: |_| CC2) | (CR3: 0 ) 

```
# VC: 1_1

**VC 1_1**:
Requires Clause for Pop [After Logical Reduction(s)] at Def_Pop_Realiz.rb(8:12)

**Goal**:
(1 <= |S|) or 
(|S| = 0)

**Given(s)**:

**Prover Result**: Proved

## Applied Theorems:
- **N9_a** (Natural_Number_Theory)
- **LTE_3** (Integer_Theory)
- **Abs_Val_1** (Integer_Theory)
- **Not_LTE_1a** (Natural_Number_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: 1 ) 
CC2 -> (CR2: S ) 
CC3 -> (CR3: |_| CC2 [NEXT: CR8]), (CR8: |_| CC3) 
CC4 -> (CR4: <= CC1, CC3) [35m(succedent)[0m
CC5 -> (CR5: 0 ) 
CC6 -> (CR6: = CC3, CC5) 
CC7 -> (CR7: <= CC3, CC1) 
CC8 -> (CR3: |_| CC2 [NEXT: CR8]), (CR8: |_| CC3) 

```
# VC: 1_2

**VC 1_2**:
Ensures Clause of Def_Pop [After Logical Reduction(s)] at Def_Pop_Realiz.rb(3:14)

**Goal**:
(false = (|S| = 0)) or 
(|S| = 0)

**Given(s)**:

**Prover Result**: Not Proved

## Applied Theorems:
- **Abs_Val_1** (Integer_Theory)


**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: false ) 
CC2 -> (CR2: S ) 
CC3 -> (CR3: |_| CC2 [NEXT: CR8]), (CR8: |_| CC3) 
CC4 -> (CR4: 0 ) 
CC5 -> (CR5: = CC3, CC4) 
CC6 -> (CR6: = CC1, CC5) [35m(succedent)[0m
CC7 -> (CR7: = CC3, CC4) [35m(succedent)[0m
CC8 -> (CR3: |_| CC2 [NEXT: CR8]), (CR8: |_| CC3) 

```
# VC: 1_3

**VC 1_3**:
Ensures Clause of Def_Pop [After Logical Reduction(s)] at Def_Pop_Realiz.rb(3:14)

**Goal**:
(S' = Empty_String) or 
(|S| = 0)

**Given(s)**:
1. (|S| = 0)
2. (S = (<R'> o S'))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) | (CR7: o CC5, CC6) 
CC2 -> (CR2: |_| CC1) | (CR3: 0 ) 
CC3 -> (CR2: |_| CC1) | (CR3: 0 ) 
CC4 -> (CR4: R' ) 
CC5 -> (CR5: <_> CC4) 
CC6 -> (CR6: S' ) 
CC7 -> (CR1: S ) | (CR7: o CC5, CC6) 
CC8 -> (CR8: Empty_String ) 
CC9 -> (CR9: = CC6, CC8) [35m(succedent)[0m

```
# VC: 1_4

**VC 1_4**:
Ensures Clause of Def_Pop [After Logical Reduction(s)] at Def_Pop_Realiz.rb(3:14)

**Goal**:
(S = (<R'> o S')) or 
(|S| = 0)

**Given(s)**:
1. (|S| /= 0)
2. (S = (<R'> o S'))

**Prover Result**: Proved

## Applied Theorems:

**NOTE**: Not all applied theorems may have actually contributed to the proof

## Registry State:
```
CC1 -> (CR1: S ) | (CR8: o CC6, CC7) 
CC2 -> (CR2: |_| CC1) 
CC3 -> (CR3: 0 ) 
CC4 -> (CR4: /= CC2, CC3) 
CC5 -> (CR5: R' ) 
CC6 -> (CR6: <_> CC5) 
CC7 -> (CR7: S' ) 
CC8 -> (CR1: S ) | (CR8: o CC6, CC7) 

```

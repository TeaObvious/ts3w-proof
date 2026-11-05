# Lot level range admission, mutation and notification

Reference: original shipped PC1.67 TS3W.exe. Analyst names describe verified
roles; they are not recovered EA symbols. All evidence here is static.

## Canonical original functions

| Role | Complete original instructions and actual annotated Ghidra pseudocode |
| --- | --- |
| Growth admission | [CD2DA0 ASM](../../evidence/native/functions/00CD2DA0_LotLevels_ExpandBounds.asm) ([pseudocode](../../evidence/native/functions/00CD2DA0_LotLevels_ExpandBounds.c)) |
| Retained range application | [ACE050 ASM](../../evidence/native/functions/00ACE050_LotLevels_ApplyRange.asm) ([pseudocode](../../evidence/native/functions/00ACE050_LotLevels_ApplyRange.c)) |
| Mutation followed by notification | [ACE0E0 ASM](../../evidence/native/functions/00ACE0E0_LotLevels_ApplyRangeAndNotify.asm) ([pseudocode](../../evidence/native/functions/00ACE0E0_LotLevels_ApplyRangeAndNotify.c)) |

## Inputs and outputs

CD2DA0 is cdecl: lot pointer and signed requested level, caller-owned stack,
plain RET. Only AL is Boolean; upper EAX is not a full-width success status.
Null lot, unchanged range and rejected growth return false. The requested value
is supplied by the caller; this wrapper does not itself add or subtract one.

The retained minimum/maximum are signed DWORDs at lot+17C/+180. A newly lowered
minimum must be at least-4 when byte+4BC is zero and at least-1 otherwise. A newly
raised maximum must be at most5. JL/JG/JGE/JLE establish signed comparisons.
The bounds restrict actual expansion: existing authored levels beyond a bound
are not clamped. An admitted path calls ACE0E0 on ECX=the retained lot and then
sets AL=1 independently of an inferred child return value.

## Apply before publishing

ACE050 and ACE0E0 are thiscall, two signed stack words, RET8, no return contract.
ACE050 computes maximum-minimum+1; if this is smaller than old lot+184, it invokes
A8FC00 on lot+290 before other resizing. It calls ACDA80 for a changed bottom
with count=oldMinimum-newMinimum, mode0, then a changed top with
count=newMaximum-oldMaximum, mode1. It writes +17C/+180/+184 afterward. Finally
ABF620 receives retained display level+39C and Boolean arguments true,true,false.
This lower-level function accepts changes beyond the growth wrapper; do not
silently apply CD2DA0's admission limits to it.

ACE0E0 returns immediately for equal bounds. Otherwise it first calls ACE050.
If a current dispatcher exists, it allocates an18hex-byte message using vtable
1065F8C and supplies:

| Message field | Source |
| --- | --- |
| +8/+C | Lot ID low/high DWORDs from lot+48/+4C |
| +10/+14 | Updated minimum/maximum, after ACE050 |

Dispatcher virtual+1C receives041F9E24,message,0,lot+364; message virtual+8
releases its reference afterward. Nonnull lot+290 then receives A95F30.
Finally792460 receives both lot-ID DWORDs, with caller cleanup8.
The retained decompiler signature of792460 omits those arguments: the physical
PUSHes at ACE195..1A2, rather than the displayed zero-argument call, are decisive.
Full dispatcher/message ownership and those consumers remain separate scopes.
Allocation failure is not a documented clean false result: its null branch
rejoins a message dereference. Managed safe allocation/failure behavior must not
be presented as emulation of this unsafe native failure.

## Ownership and comparison boundary

These functions mutate one retained native lot and its managers. They contain
no immutable construction revision, weak memo, generation map or undo record.
Host implementations that use immutable revisions must define their own winner
identity, provenance, generation and lock ordering while retaining original
range effects. This evidence establishes neither a native parallel scheduler
nor full auxiliary-layer, water-lot, renderer or callback parity.

## Boundary cases

- Ordinary bottom-4 is admitted; a newly requested-5 is rejected.
- Restricted bottom-1 is admitted; a newly requested-2 is rejected.
- Newly requested top5 is admitted; newly requested top6 is rejected.
- Equal bounds cause no child mutation or notification.
- A retained out-of-ceiling authored range is not reduced by an unchanged request.

Original bytes and complete function boundaries were checked against the same
PC executable. Ghidra metadata was saved with original FileBytes unchanged.
No original/game execution, compiler or concurrency stress test is claimed.

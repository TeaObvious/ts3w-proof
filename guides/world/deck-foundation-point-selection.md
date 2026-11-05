# Deck/foundation selection, platform forwarding and support below

Reference: original PC1.67 TS3W.exe, identified in the central reference index.
The following are complete existing Ghidra bodies with original-PE byte checks.
The descriptive roles are analyst labels; stored prototypes can hide AL returns.
These are static contracts, not observed gameplay or a successful world load.

| Entry | Role and ABI | Evidence |
| --- | --- | --- |
| AFEB00 | Vertex deck/foundation test; two caller-cleaned words, AL Boolean | [ASM](../../evidence/native/functions/00AFEB00_FUN_00afeb00.asm) ([C](../../evidence/native/functions/00AFEB00_FUN_00afeb00.c)) |
| AFEC10 | Full-cell deck/foundation test; two caller-cleaned words, AL Boolean | [ASM](../../evidence/native/functions/00AFEC10_FUN_00afec10.asm) ([C](../../evidence/native/functions/00AFEC10_FUN_00afec10.c)) |
| AFECD0 | Selected-quarter deck/foundation test; two caller-cleaned words, AL Boolean | [ASM](../../evidence/native/functions/00AFECD0_FUN_00afecd0.asm) ([C](../../evidence/native/functions/00AFECD0_FUN_00afecd0.c)) |
| AFEDE0 | Full-cell platform adapter; three caller-cleaned words, child AL retained | [ASM](../../evidence/native/functions/00AFEDE0_FUN_00afede0.asm) ([C](../../evidence/native/functions/00AFEDE0_FUN_00afede0.c)) |
| ACFA20 | Support query one level below; four caller-cleaned words, child AL retained | [ASM](../../evidence/native/functions/00ACFA20_FUN_00acfa20.asm) ([C](../../evidence/native/functions/00ACFA20_FUN_00acfa20.c)) |
| AB16E0 | Lot-local XZ → world XZ; ECX lot and four stack words, RET10 void | [ASM](../../evidence/native/functions/00AB16E0_FUN_00ab16e0.asm) ([C](../../evidence/native/functions/00AB16E0_FUN_00ab16e0.c)) |

AFEB00 has two defined body ranges. Its six intervening bytes are not instructions
owned by this function and are excluded from the Listing and byte hash.

## A broader predicate is not a platform predicate

Original `AFEE10` dispatches vertices to AFEB00, centres to AFEC10, and edge-side
or interior regions to AFECD0. The [parent bounds and point classifier](deck-foundation-query-boundaries.md#local-point-bounds-and-dispatch)
remain authoritative. The three children all require signed-byte X/Z within
half-open lot width/depth and a signed-byte level in the closed lot min/max range.
They query the actual four-word deck marker layer through AB67D0 in **strict mode0**.

- AFEB00 uses the same four-cell iterator and masks6/3/9/12 as the
  [platform vertex](platform-point-selection.md#vertex-four-specific-regions-in-order).
  It constructs the iterator at index0, without a separate reset call, and stops
  at the first admitted region.
- AFEC10 copies the cell's three coordinate/level bytes and **forces mask0xF**.
  It does not use incoming mask bits and does not use the platform centre's mode1.
- AFECD0 preserves the supplied mask; a missing selected marker or incompatible
  product region returns the AB67D0 sentinelFFFFFFFF and is rejected.

After obtaining any other raw product ID, these children perform **negative
kind tests**: reject kind3, kind6, then kind5. The first lookup is a direct
C8BBB0 read; AFEC10/AFECD0 use AFE300 for the later tests, while AFEB00 repeats
the lookup. All inspect the product's DWORD+88. A valid row of another kind
passes. This is not a positive allowlist of known deck/foundation catalog rows.

Importantly, if an ordinary non-FFFFFFFF ID **does not resolve to any row**,
all three type comparisons fail and the result can be **true**. The platform
predicate AFED60 requires a present kind5 row and answers false instead.
This observed native rule must not be silently replaced with either a null-safe
host policy or a claim that a missing host catalog bank is initialized. The bank
pointer itself has no null admission guard here.

AB67D0 compatibility remains a distinct earlier stage: equal raw IDs pass before
lookup, while differing IDs need two resolved rows with equal kinds. Therefore
four equal unresolved IDs can pass strict region resolution and this negative
kind filter; two different unresolved IDs cannot.

| Admitted marker input | Deck/foundation result | Platform result where comparable |
| --- | --- | --- |
| Centre: four kind5 products with compatible IDs | false | true under platform centre mode1 |
| Centre: four different valid products all kind1 | true | false |
| Centre: selected missing marker among kind1 products | false | Different mode1 policy; do not substitute it |
| Centre: four equal unresolved ordinary IDs | true | false |
| Centre: different unresolved IDs | false | false for an unresolved first retained product |
| AFECD0 single quarter with unresolved ordinary ID | true | AFED60 single-quarter query is false |

These are independently derived branch witnesses, not runtime executions.

## Full-cell platform and support-below adapters

AFEDE0 copies X, Z and level, sets mask0xF, and forwards the caller's low-byte
mode to AFED60. It leaves the caller's record unchanged. Its ADD ESP / RET after
the call do not overwrite EAX/AL. The stored `void` projection therefore must not
erase the actual child result when reconstructing a caller that consumes AL.
Strict mode0 and partial mode1 retain the different rules in the platform guide.

ACFA20 copies X/Z, subtracts **one from the low level byte**, and forwards the
copied location, allow-type6 byte and optional output pointer to ACF820. Level
subtraction wraps as a byte: 0→FF(-1), FF(-1)→FE(-2), and80(-128)→7F(127).
ACF820 performs its bounds check, forces mask0xF and uses strict AB67D0, accepting
kind3 or optionally kind6. It writes optional output0/1 only on success; failure
leaves that output untouched. ACFA20 again physically preserves child AL despite
its displayed void return. This is not a terrain fallback or a platform test.

## Forward transform used by the floor sampler

AB16E0 reads angle at lot+1A0, computes x87 FSIN/FCOS and stores binary32 factors.
Positive and negated sine are separately stored. MULPS forms separate products,
ADDPS adds them, and a later ADDPS adds origin X at+190 or origin Z at+198:

`worldX = originX + (sin(angle)*localZ + cos(angle)*localX)`

`worldZ = originZ + (-sin(angle)*localX + cos(angle)*localZ)`

The symbolic equations do not authorize reassociation, FMA, double trig or a
different rounding environment. The actual store/product/sum/origin order and
the separate negative-sine store remain visible in the Listing. The helper does
not change level, add Y, clamp a coordinate or apply the floor's 0.01 allowance.
It supplies the original floor sampler A8C690's outside-lot world query; the
separately established B051D0 inverse transform remains the platform path.

Whole-world bucket ordering, live edit publication, catalog completeness, FPU
environment, generic deck resource admission and actual platform gameplay remain
outside these selected bodies. No new source implementation is certified here.

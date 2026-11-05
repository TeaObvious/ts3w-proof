# Routing candidate status, segment admission and eight-byte insertion

The selected PC 1.67 helpers compute and conditionally publish routing candidates, choose surrogate probes, admit two-dimensional segment crossings and insert raw eight-byte rows. Their physical return values and side outputs have distinct contracts: a nonzero solver status is not a universal success flag, and a zero caller byte does not imply that the candidate stayed unchanged.

The [complete Original instruction/CFG context](../../evidence/native/routing/candidate-solver/instruction-contexts.json) preserves seven historical stored bodies: five primary helpers contain 4,623 bytes / 1,149 instruction starts; two selected joins add 580 bytes / 192 starts. The [data/import ledger](../../evidence/native/routing/candidate-solver/data-and-imports.json) retains constants, labels, exact use sites and the declared memmove import; the [conditional countercases](../../evidence/native/routing/candidate-solver/conditional-countercases.json) are instruction/algebra deductions, never observed game execution. Identity is the [central Original reference](../../evidence/reference.json). The [range and pair lookup](../../indexes/routing-candidate-solver.tsv) separates complete selected instruction evidence from current canonical availability.

No C was fabricated or newly exported. The historical signatures, approximate floating-point formulas and names do not grant a new source declaration, Ghidra type/name/variable change or body definition. The machine instructions govern evaluation order and exceptional cases. Static byte coverage, understood behavior, current DB annotation and actual runtime execution remain separate.

| Entry | Complete stored half-open range | Bytes / starts | Physical transport |
| --- | --- | --- | --- |
| 0085AD20 | [0085AD20,0085B663) | 2371 / 496 | twelve stack DWORD slots; plain RET; full EAX status 0/1/2/3 |
| 0085B670 | [0085B670,0085BC3F) | 1487 / 407 | twelve stack DWORD slots; plain RET; full EAX forwarded from AD20 |
| 0085A2D0 | [0085A2D0,0085A439) | 361 / 94 | four point pointers plus Float32 tolerance; plain RET; only AL normalized |
| 0085A250 | [0085A250,0085A2CA) | 122 / 37 | ECX object, no stack argument; plain RET; only AL normalized |
| 00572360 | [00572360,0057247A) | 282 / 115 | ECX array receiver plus insertion and source pointers; RET 8; no result contract |
| 0085AB20 | [0085AB20,0085AD18) | 504 / 169 | five stack DWORD slots; plain RET; only AL normalized |
| 0055DDC0 | [0055DDC0,0055DE0C) | 76 / 23 | one stack species DWORD; plain RET; full EAX 0/1 |

All seven selections are complete contiguous historical stored ranges, not inferred next-entry envelopes or current Ghidra body readbacks. Gaps and surrounding code remain outside this selection. Opcode CFG reachability assumes ordinary call return; it does not prove path feasibility, exception coverage or runtime termination. The existing DDC0 pair is reused rather than duplicated: [ASM](../../evidence/native/functions/0055DDC0_Routing_IsBoatSpeciesForPortalPermission.asm) ([C](../../evidence/native/functions/0055DDC0_Routing_IsBoatSpeciesForPortalPermission.c)). Its broad analyst name does not strengthen the local numeric-code predicate below.

## How the known callers connect these operations

The existing Phase1 Original managed/native joins and full Phase2 F3C0/EC50/C750/BC40/D030 bodies are reused, not re-extracted or reinterpreted as fresh declarations. F3C0 forwards the GUID result container and two optional GUID-array/count pairs to EC50. EC50 uses A2D0 on polygon edges and appends selected eight-byte identifiers through 572500. Its polygon flag is still not an append gate: the previously documented cleanup-to-append path is unchanged. C750 conditionally updates point/direction/status outputs; none of these new helpers makes all C750 outputs unconditional. BC40 chooses B670 or AD20 for the candidate branch, then tests full EAX against 3 and zero. D030's outer AL result still only reports its selected list condition, not an atomic all-output success.

The [finite call/physical-word ledger](../../evidence/native/routing/candidate-solver/caller-and-physical-argument-joins.json) preserves seventeen rel32 joins and their surrounding Original instruction context. It joins selected bodies and previously captured callers only. It is not a new global caller census. There is no newly established direct managed import for these five internal helpers.

## AD20: status and actual publication, including partial side outputs

Call its physical stack words a1..a12. a1 is an aligned, readable/writable sixteen-byte candidate; a2 is an aligned sixteen-byte reference point; a3 supplies an aligned direction vector; a4 and a5 supply aligned sixteen-byte obstacle/probe positions. a6/a7/a8/a9 are consumed as Float32 words. a12 is forwarded to AB20 as its query flags word. a10 and a11 are not read anywhere in this complete body; their transport by callers does not make them dependencies of this version's solver logic. The historical a5 type claiming twelve bytes is insufficient to describe its physical MOVAPS read. Neither that mismatch nor the historical `char` result projection authorizes a type/signature edit.

Under stable, appropriately aligned valid inputs and normal FP/helper behavior, the first gate computes R = a6 + a7*a8 and compares R² with the sum of the first three squared lanes of a1-a4 (AD2C..AD82). `JB` returns full EAX 0 for an ordered outside point or an unordered completed comparison. Equality enters further work. A negative R is not rejected: squaring loses its sign. There is no blanket nonnegative-radius precondition check.

The next length is L = length3(a4-a2). The vector MAX(-L,L) is compared lane-wise with epsilon `0x34000000` (2^-23); all four true mask lanes return full EAX 2 at ADF7. This is not a universal valid/finite-number guard. The following normalization uses RSQRTPS plus two refinement stages. The scalar a7*a8/L is fed to **FSIN** at AE20 and rounded into a Float32 stack word. It is not an ASIN instruction or an inferred tangent angle. FCOMIP against Float32 0.95 and a positive cross-product Y test choose whether this stored quantity is negated using the original -0.0 constant. Arbitrary exceptional x87 inputs, out-of-range FSIN behavior, control modes and nonreturning exceptions are not normalized by this code.

The initial construction applies the matrix rows corresponding in the first three lanes to `(c*nx+s*nz, ny, -s*nx+c*nz)`, with θ = 2*a, multiplies by a9 and adds the original sixteen-byte a2 snapshot. The complete matrix/rounding sequence is the ASM, not an exact-real replacement formula. In particular the fourth lane is written too; the rows have fourth components c,0,s, so it is not guaranteed to remain a conventional homogeneous 0 or 1. No normalized quaternion or point-w invariant is supplied by this body.

**The retry gates do not publish the newly tested retry vector.** B0DE saves the initial sixteen-byte construction at local stack +100. B129..B134 tests its three-lane distance from a5. If it is ordered outside or unordered, execution proceeds to the query stage. Otherwise B13A..B2BF constructs/tests a probe using **2.4*a**, not half an angle. This second probe is not stored at +100. If still not outside, B2C5..B449 negates the stored a and tests a third probe using -2*a, again without writing +100. Ordered R² >= third distance² returns EAX 2. Unordered at that last comparison does not take JAE. The query and eventual ordinary publication still use the saved initial probe. Thus the tests alone do not prove that the published point is outside a5, collision-free or the last tested point.

The query stage B44F obtains the routing object through 828CF0 and reads world pointer 011EDBC4. If either is null, it retains the initial probe and BL=0. Otherwise 8295C0 supplies the backend and AB20(world,routing,backend,&savedProbe,a12) is called. A positive AL result sets BL=1 and constructs/replaces the local +100 candidate at B60E using the current signed stored a, sequential `*0.5F` then `*2.0F`, and a newly loaded a2. That sequence is retained exactly; it is not silently algebraically cancelled for every Float32 value. The earlier two test-only probes are still not substituted. A2 aliasing or callback mutation can affect this later reload; stable-input descriptions assume no such mutation.

The final two A440(candidate,1) level queries compare full EAX values. Different levels return status 2. Equal values load local +100, write all sixteen bytes through a1 at **B64C**, then return full `1 + 2*(BL != 0)` at B64F.

| EAX | Concrete return cause | Explicit a1 write in this body |
| --- | --- | --- |
| 0 | first distance comparison takes AD82 JB | none; no helper called before this return |
| 2 | small-length mask, final ordered retry overlap, or unequal A440 levels | none before this return; some paths already called helpers |
| 1 | level equality with BL=0 | sixteen bytes at B64C |
| 3 | level equality after positive AB20 AL and adjusted local candidate | sixteen bytes at B64C |

BC40 compares full EAX with 3 at BE27/BF20/C16A, then zero. Status 3 sets its separate byte; any other nonzero value ends that candidate path without setting the byte. Consequently **byte zero does not imply an unchanged candidate**: status 1 writes a1 but leaves the byte zero. Conversely status 2 can stop candidate scanning without this body's a1 write. Helper/virtual effects, invalid aliases, exceptions, and general lifetime remain separate; no transactional rollback or absence of all external side effects is claimed.

## B670: orientation-derived surrogate probes and exact AD20 forwarding

Physical a1 supplies an aligned obstacle center; a2 supplies four aligned orientation words; a3 is the aligned candidate pointer and becomes AD20 a1; a4/a5 become AD20 reference/direction pointers. a6 is the caller scalar and a7 is the eventual AD20 travel/scale word. a8 is passed as AD20 a10, a11 as AD20 a11, a12 as AD20 a12. B670 **does not read a9**. a10 points to four scalar extent words d0,d1,d2,d3 (loads at B852/B86D/B878/B88D, actual order d0,d1,d3,d2). BC40 supplies this pointer as selected-field+74; it obtains the orientation words through the object's virtual +40 call and the center through virtual +3C. The virtual producers are not resolved here, so their exact Original declaration, extent sign constraints and quaternion normalization are open.

For the first three lanes, the arithmetic forms `e + 2*cross(qv,cross(qv,e)+qw*e)` for e=+Z and then e=-X, and normalizes each result by RSQRTPS/refinements. Denote these computed axes U and V. This identifies the local quaternion-style arithmetic; it does not prove the producer supplied a unit quaternion. There is no zero-axis or finite-input branch protecting either normalization.

With center O, define the following explanatory three-lane expressions, with actual Float32 instruction order authoritative:

- H = O + d1*U; C = H - 0.5*(d1+d3)*U.
- `K = 0.5*(d0+d2) + 2.15F; h = ((d1+d3)*1.075F)/K`.
- First pair Pminus/Pplus = C -/+ h*U; second pair Qminus/Qplus = C -/+ **2.15F** V.
- Four corner-like local vectors are H-d0*V, H+d2*V, O-d3*U-d0*V, O-d3*U+d2*V.
- Two surrogate radii are computed from H-d0*V to Pplus and Qplus respectively, using three-lane SQRTPS distances at `0085B9CA` and `0085B9FE`; `0085BA01` is the subsequent MOVAPS result store. Neither radius is read from an unsigned integer capacity or clamped.

Dot products of a3-C with U/V choose one member of each pair and a corner. `COMISS; JBE` makes the sign booleans true only for an ordered strictly positive dot result; zero, negative and unordered choose the false side when the comparisons complete. The selected corner-minus-P vector is swizzled into a signed plane-like vector at BB07..BB32, then dotted with a3-P. Another ordered-positive boolean combines with `(firstSign == secondSign)` via XOR at BB7F..BB89 to select one of two AD20 calls.

Both calls supply AD20 arguments `(a3,a4,a5,chosen,chosen,a6,surrogateRadius,1.0F,a7,a8,a11,a12)`. They differ in selected local probe and surrogate radius. There is no pre-AD20 early return: either BB C3 or BC20 executes after local arithmetic. The subsequent writes FF00FF00 and FF66FFCC go through pointers into this function's own scalar stack locals at +18/+1C; they are not color writes through caller outparameters. These writes and epilogues leave EAX unchanged. Therefore B670 forwards AD20's complete EAX0/1/2/3 and its candidate-side-effect distinction. Its recorded historical `undefined` result is not evidence to discard full EAX at BC40. Unchecked negative/zero K, invalid orientations and exceptional FP behavior preclude a general collision-solving guarantee.

## A250 and DDC0: the branch is selected from B8 flags

A250 reads the field DWORD [ECX+B8] once and classifies masks. When `word & CF00` is zero, the repeated main species tests OR0100 before masking. AL becomes 1 for normalized species0400 when `(word&7F)==(word&60)`, or normalized0600 or0200. Otherwise DDC0 receives the **raw** word&CF00 and its AL is normalized by SETNE. DDC0's complete existing Original body accepts exactly C00,D00,E00,F00,4100,4200,4300,4500,4600 as full DWORD codes and returns EAX0/1. 4400 is absent. A250 itself guarantees only AL0/1; its upper EAX can retain masked input bits. No pure shape or object-layout subclass classification follows from this single field test.

BC40 calls this at BDC8 only in its selected-field empty-list branch, after virtual center acquisition and lazy offset initialization. True chooses the orientation/extent B670 route, false the scalar AD20 route. The existing B8 writer and producer/lifetime limits from Phase1/2 remain; this helper performs no field write or allocation. It does not establish that all possible B8 values observed at runtime satisfy a known enum.

## A2D0: distance-trimmed two-dimensional segment crossing

Let A,B,C,D be the first two Float32 coordinates at the first four physical stack pointers; T is the fifth Float32 word. Under ordinary finite, nondegenerate inputs, set r=B-A, s=D-C. The SSE determinant is `-cross(r,s)` and its absolute value is compared with original Float32 **0.01F** at A376. Equality is allowed. Its `JA` rejection is delayed to A39E, **after both x87 lengths and tolerance divisions**; there is no early denominator/FP-exception guard.

For the ordinary finite nonparallel case, the following inclusive conditions describe the tested result:

`T/|r| <= cross(C-A,s)/cross(r,s) <= 1-T/|r|`

`T/|s| <= cross(C-A,r)/cross(r,s) <= 1-T/|s|`.

The exact SSE/x87 evaluation and Float32 spills govern boundary rounding. Negative T is not clamped: its ordinary interpretation expands the parameter intervals. At zero T, a nonparallel endpoint intersection can pass; positive T removes endpoint margins. The caller EC50 uses original Float320.05 at its A2D0 call. It tests AL, not all EAX bits. The helper has no point-buffer output and only normalizes AL0/1; it supplies no intersection coordinate or distance result.

The function is **not stack-memory pure**. Its own eight-byte local area and four incoming argument slots are overwritten: entryESP+4 receives abs determinant (A368/A36E); entryESP+8 receives D.y (A334); entryESP+10h receives T/|s| (A39A); entryESP+14h receives T/|r| (A385). The needed pointers were already captured in registers. Incoming C-pointer slot entryESP+Ch is not overwritten. Under stable nonaliasing valid point buffers these are stack scratch writes, not point writes. Deliberate aliases into those stack words change the premise. Completed unordered interval comparisons take JB and reject, but unmasked invalid/division exceptions can prevent completion; there is no unconditional all-NaN-return-false or finite-output promise.

## 572360: eight-byte insertion and selected append growth

The receiver contains begin+0, end+4, capacityEnd+8 and an allocator label/token word+C. It inserts the source's two DWORDs at its first stack pointer and consumes the second pointer as source. No GUID parsing, reference retain or element destructor appears; eight-byte payloads are raw transport at this layer.

The complete caller 572500 compares end with capacityEnd **unsigned JAE**, not equality. Under the normal contiguous-array invariant begin<=end<=capacityEnd with eight-byte alignment, only exhaustion reaches the helper and insertion=end. If end>capacityEnd, the caller also delegates, but 572360's own growth branch tests **equality only**. No malformed-array recovery is implied.

When end!=capacityEnd, 572360 adjusts an aliased source in [insert,end) by +8; if end!=0, it first copies the last row to end. It then calls imported memmove with length `(oldEnd-8)-insert` and destination derived as `oldEnd - (SAR3(length)*8)`, source insert. For a valid aligned **non-end insertion** this destination is insert+8. It copies the selected source row to insert, then increments end by8. Its no-growth branch is not a general checked append: insert=end produces length FFFFFFF8, demonstrating why this branch cannot be declared safe for arbitrary positions. That countercase is an instruction-level derivation, not an observed Retail call or failure. The selected well-formed 572500 fallback uses the other branch.

When end==capacityEnd, oldCount=(end-begin) SAR3. New row capacity is1 if count0, else doubled count with wrapping DWORD arithmetic. A nonzero doubled value is multiplied by8 with wrap and passed to 4E4500 along with receiver+C,0,0, the retained EASTL allocation source-label address F99988 and source-lineE7. The syntactic doubled-zero branch skips allocation and sets its local pointer to0, but cannot be reached under this straight-line local arithmetic: a nonzero arithmetic-right-shift-by3 result lies in [-2^28,2^28-1], whose double is never zero modulo2^32. The later multiplication by8 can still wrap for malformed pointer deltas. Returned allocation EAX is used without an allocation-success check.

The helper memmoves the prefix to the new allocation; uses **the import's returned EAX** plus the rounded prefix length to derive the insertion address; conditionally writes the new source row when that address is nonzero; memmoves the suffix to insertion+8; and uses that second returned EAX to derive the new end. It frees old begin through 4E44E0 when nonnull, then publishes begin=new allocation, end=new cursor, capacityEnd=new allocation+capacity*8. Source aliasing into the old array can remain valid through the inserted-row copy because old storage is freed afterward, under normal allocator/import behavior and nonaliasing metadata assumptions. No arbitrary self-aliasing or overlapping-allocation safety is promised.

The Original ILT/IAT binding of F96688 is MSVCR80!memmove, independently established in the frozen formatter-growth source and re-pinned here. This identifies the import, not a live IAT target or an all-input CRT guarantee. Allocation/free completion, overflow, address validity, import result semantics, nonlocal exceptions and capacity success remain preconditions/open dependencies. There is no rollback or OOM normalization branch, and no assertion of an actual Retail defect or allocator success.

## AB20: finite query-kind predicate and local lifetime

AB20 receives world, routing receiver, backend, aligned candidate pointer and flags. It constructs a local bounds block by A510 and requests a temporary reference-vector through complete previously retained 82E7E0. The vector carries an Original source-label string at 01027E74; it is not a vtable pointer. If query AL is zero, false cleanup follows. On a positive query it obtains a lot-like object through C687D0 using the candidate's first/third coordinates, then conditionally uses its full two-DWORD ID (+48/+4C) with 62F750 to adjust the local query vector. These two helper bodies are not newly expanded here: their effects on vector contents and side outputs remain explicit open joins.

The vector loop walks four-byte object pointers. Each nonnull object receives a **non-atomic +4 reference increment**, virtual+4 is called (its result is discarded here), then virtual+8 is called to test numeric kinds12,13,23. Repeated virtual+8 calls are real; no stable-type assumption is silently added. A matching observed return leads to AL1; absent a match leads to AL0. The held element reference is decremented on both routes; zero is reset to1 before virtual0(flag1). CA0570 releases all vector-held references and 4E44E0 frees backing storage. The extra local held reference and container-held references are distinct roles. This balances the visible ownership operations on normal return under conventional virtual-call behavior; it is not proof of concrete virtual targets, reentrancy/thread safety, no helper mutation or entire object lifetime. AL1 explains the AD20 alternate-query route and full status3 only after AD20 level equality; it is not a broad “routing succeeded” value.

## Remaining limits and next action

All seven selected stored bodies, direct instructions, data loads, physical writes and finite caller joins are available. Complete deeper behavior is not claimed for unresolved C687D0/62F750 effects, allocator/free internals, virtual producers/types/releases, world/routing lifetime, or all inputs/FP modes. BSS initial zeros at011EDBC4 are not live null observations. Public canonical pairs, names, parameters, variables, Ghidra comments and persistence have **not** been updated by this offline package.

The [open dependency ledger](../../evidence/native/routing/candidate-solver/open-dependencies.json) preserves the unresolved child/producer questions. No new canonical pair or C export is supplied for the six missing pairs. Meaningful Ghidra names/heads, precise variable identities, ABI refinements and persistence remain separate work; existing C variable mapping is deferred to the final overall export from maintained Ghidra.

Existing dependency exports remain useful with their own boundaries: the lot lookup [ASM](../../evidence/native/functions/00C687D0_LotSpatialIndex_FindContainingLotAtWorldXZ.asm) ([C](../../evidence/native/functions/00C687D0_LotSpatialIndex_FindContainingLotAtWorldXZ.c)), lot transform [ASM](../../evidence/native/functions/0062F750_LotRouteGraph_ApplyLotPositionMatrix.asm) ([C](../../evidence/native/functions/0062F750_LotRouteGraph_ApplyLotPositionMatrix.c)), and free helper [ASM](../../evidence/native/functions/004E44E0_Memory_FreeIfNonNull.asm) ([C](../../evidence/native/functions/004E44E0_Memory_FreeIfNonNull.c)). Their existence does not settle this caller's vector mutation, allocation success or lifetime assumptions.

# Original formatter buffer growth and retry boundaries

The original PC1.67 formatter changes a receiver's logical byte length and may
retry formatting. Growth **within already valid capacity** zero-fills the
extension. Successful allocation beyond capacity is not established: the exact
capacity-work entry `009E2810` passes literal0 as the declared memmove destination
and subsequently uses a numeric length as an address. The original instructions
are retained here without replacing that path with a conventional allocator.

This is a static contract for the [PC1.67 reference](../../references/pc-167.md).
The [instruction ledger](../../evidence/native/text-formatting/growth-instructions.tsv)
contains original bytes, VAs/RVAs, PE file offsets and both retained disassembler
texts. Its [boundary record](../../evidence/native/text-formatting/growth-boundaries.json)
separates372 newly examined bytes/150 starts from323 reused bytes/129 starts.
These are instruction contexts under historical stored ownership, **not canonical
ASM/C pairs or freshly captured Ghidra C**. The [lookup](../../indexes/formatter-growth-contexts.tsv)
resolves all seven ranges. No original game process was executed, and no retail
fault or loaded import target is claimed.

## Receiver and physical interfaces

Use physical field labels `B=[receiver+0]`, `P=[receiver+4]`, `E=[receiver+8]`.
The instructions compute length `L=P-B` and interval size `C=E-B` with ordinary
32-bit arithmetic. The useful non-overflowing buffer interpretation assumes
`B <= P < E`, readable/writable storage, and a terminating zero at P. These
conditions are assumptions, not validation performed by every entry. Receiver,
format and argument storage must remain stable for the ordinary interpretation;
an aliased `%n` destination can invalidate that assumption.

| Entry | Selected operation | Historical stored interval, exclusive end / bytes / starts |
| --- | --- | --- |
| `005F6200` | Change logical length | `[005F6200,005F624E)` /78 /37 |
| `005F6030` | Extend/fill, with conditional capacity work | `[005F6030,005F60D1)` /161 /65 |
| `009E2810` | Exact capacity-work entry called by `005F6030` | `[009E2810,009E2889)` /121 /46 |
| `00F7F286` | Indirect jump through declared memcpy IAT slot | `[00F7F286,00F7F28C)` /6 /1 |
| `00F7F298` | Indirect jump through declared memset IAT slot | `[00F7F298,00F7F29E)` /6 /1 |
| `005F6250` | Forward caller argument area and return destination; reused | `[005F6250,005F626A)` /26 /11 |
| `00930DA0` | Coordinate formatting, length changes and retries; reused | `[00930DA0,00930EC9)` /297 /118 |

`005F6200` receives the receiver in ECX and one stacked target length; RET4
consumes that word. `005F6030` receives ECX and two stacked words, extension count
and fill byte, ending with RET8. It returns the receiver in EAX on normal return.
`009E2810` receives that same ECX receiver and one stacked request, ending with
RET4. Generated parameter counts are not substituted for these physical inputs.
The [argument-cursor contract](formatter-argument-cursor.md) separately retains
the wrapper/engine chain and its repeated use of the original argument-area value.

## Shortening and extension within capacity

`005F6200(this,T)` compares T and L unsigned:

* T=L returns without changing the fields.
* T<L computes `B+T` and calls IAT slot `00F96688` with `(B+T,old P,1)`.
  The copy count is exactly one (`005F621D..21`). Under the buffer assumptions
  and declared memmove behavior, this transfers the old terminator, then changes
  receiver+4 to `B+T`. It neither copies the whole suffix nor erases old storage.
* T>L calls `005F6030(this,T-L,0)`. It does not inspect a growth-success flag.

`005F6030(this,n,fill)` forms `D=L+n`. If D is unsigned-at-most `C-1`, capacity
work is skipped. Otherwise the raw request is:

1. `G = (C-1 > 8) ? 2*(C-1) : 8`.
2. `H = max_unsigned(D,G)`.
3. `X = max_unsigned(H,L)+1`.
4. Only if X>C unsigned, call entry `009E2810(this,X)` at `005F6094`.

All arithmetic is low32; no overflow guard is inserted. X is the observed
argument, not an assumed allocator size. The callee later adds one itself.

For n>0, the fill portion uses the then-current P, calls the declared memset
thunk with `(P+1,lowByte(fill),n-1)`, writes fill at P, advances receiver+4 by n
and writes zero at the new P. For n=0 it skips filling. Thus the admitted
zero-fill resize path within unchanged valid capacity fills exactly
`[old P,B+T)` and terminates at `B+T`. This result is conditional on valid
storage and normal imported-call behavior; it does not establish the invariant
after capacity work.

## What the exact capacity-work body actually stores

The original CALL at `005F6094` targets **entry `009E2810`**. `005F6092` supplies
the receiver in ECX and the preceding PUSH supplies X. No alternative entry or
calling-convention mismatch is needed to reach the following instructions.

Call the request K. K=`FFFFFFFF` substitutes the current length. Otherwise K<L
unsigned first truncates P to `B+K`. K equal to `C-1` returns immediately. If
that equality was not taken and K=0, the body writes `(B,P,E)=(S,S,S+1)`, with
S=`011C8E54`. The separate nonzero branch is:

| Site | Original operation | Exact value at this point |
| --- | --- | --- |
| `009E2846` | `MOV EDI,[ESI+4]` | End pointer P after any earlier truncation |
| `009E2849` | `SUB EDI,EAX` | EAX=old B, so EDI becomes numeric length `L'=P-B` |
| `009E284B..4D` | `PUSH EDI; PUSH EAX; PUSH 0` | Imported-call inputs `(0,old B,L')` |
| `009E284F` | `CALL [00F96688]` | Original descriptor/ILT declares `MSVCR80.dll!memmove` |
| `009E2858` | `MOV BYTE PTR [EDI],0` | Address is numeric L', not `old B+L'` or a returned allocation |
| `009E285B` | `MOV [ESI+4],EDI` | End field receives numeric L' |
| `009E285E..62` | Increment K and store receiver+8 | Limit field receives numeric K+1 |
| `009E2865` | `MOV DWORD PTR [ESI],0` | Base field receives literal zero |

These post-call consequences assume normal return and conventional preservation
of ESI/EDI by the declared imported interface. The returned EAX is not adopted
as any buffer pointer. The body has no checked allocator call, allocation-result
guard, deallocation, explicit error-status branch or rollback. Whether the
indirect call and numeric-address store complete is unobserved. Custom runtime
redirection/patching remains unknown; it is not supplied as an explanation or
used to claim that the retail game executes or faults on this path.

## Declared imports and the separate sentinel boundary

The [import and sentinel proof](../../evidence/native/text-formatting/growth-imports-and-sentinel.json)
retains the descriptor, ILT word, original file-IAT word, DLL name and complete
hint/name bytes for three slots:

| Original IAT slot | Declared import | Selected use |
| --- | --- | --- |
| `00F96658` | `MSVCR80.dll!memcpy` | FF25 jump at `00F7F286`, the copy dependency in the cursor package |
| `00F96668` | `MSVCR80.dll!memset` | FF25 jump at `00F7F298`, used by the extension fill |
| `00F96688` | `MSVCR80.dll!memmove` | Direct IAT calls in `005F6200` and `009E2810` |

Original file-IAT words identify declared import lookups. They are not observed
loaded function addresses or imported implementation bytes.

S=`011C8E54` lies in the virtual tail of `.data`: file-backed bytes end at
`011B1000`, while the declared virtual extent ends at `01235384`. There is
**no original file byte at S**. Initial image zero-fill is a PE-mapping model,
not an extracted zero byte or a current game-process value. The stores prove
the S/S/S+1 relationship, without establishing all sentinel writers or lifetime.
A future Ghidra image read would still not be an original-game runtime read.

## Formatter results and the one-million retry guard

`00930DA0` saves entry length L0 and initially formats at P with the original
argument-area pointer. Its initial count is zero when B=S, otherwise E-P.
After the call it reloads E and P and compares signed result R with signed E-P.
The following ordinary-buffer interpretation also assumes stable receiver fields
and normal returns from dependencies:

| First result | Original action | Commit/return boundary |
| --- | --- | --- |
| Nonnegative and signed-less than E-P | No resize/reformat | Set `P=B+L0+R`; common normal return is receiver pointer, RET8. |
| Signed-greater/equal to E-P | Resize to L0+R, then reformat at freshly loaded B+L0 with count R+1 | A nonnegative second result sets `P=B+L0+R2`; negative skips that commit. No explicit second capacity/result guard or growth-success test. |
| Negative and signed-less than E-P | Enter the negative-result retry loop | No general rollback of output bytes or logical length. |

The negative loop initializes `q=max_unsigned(2*currentLength,7)` and checks
q>=`000F4240` (1,000,000) **before each primary retry**. At or above the guard,
it returns the receiver pointer with the last negative result and no further
format call or final end commit.

Below the guard it resizes logical length to q and formats at freshly loaded
`B+L0` with count `k=q-L0+1`. Only exact R==k triggers an extra resize and
format: increment q and k by one, resize again and reformat. It then restores
L0, doubles q, and repeats only while the last result is negative; a nonnegative
result commits `P=B+L0+R`. In particular q=999,999 can produce an extra resize
request of1,000,000 after the primary guard. The threshold is neither a global
allocation bound nor a guarantee that all requests are below one million. The
first nonnegative-result branch has no such guard.

Each engine call receives the same starting argument-area value and constructs
its own cursor. Repeated formatting can repeat `%n` or other writes. The
coordinator does not restore entry length or bytes before every negative return;
no imported-call exception or arithmetic overflow becomes a distinct returned
error code here. Its pointer return, and the outer wrapper's destination-pointer
return, are not exposed integer formatting statuses. Standard snprintf error,
truncation or allocation guarantees are not substituted.

## Remaining boundaries

This publication reuses the earlier wrapper/coordinator instruction decodings
and the bounded formatter-consumer contract. The new five stored intervals are
complete as recorded instruction contexts. Their historical ownership is not a
current actual-function-extent certificate, and no function body is enlarged.
The four proposed current C/Info/Vars acquisitions and four analysis-image
IAT/sentinel reads are **not claimed as performed by this publication**. Genuine
current C, meaningful Ghidra annotations and affected captured-caller exports
remain separate requirements before canonical function pairs are adopted.

Successful growth beyond existing capacity, actual loaded imports, sentinel
contents/lifetime, other patch routes, malformed/nonfinite execution and the
whole formatting subsystem remain open. The static original field/branch facts
support this limited conditional contract without a runtime or retail-defect claim.

# Platform point selection

Reference: shipped PC 1.67 `TS3W.exe`, identified in [reference `ts3w-pc-1.67`](../../evidence/reference.json).
These contracts come from complete existing Ghidra bodies and independent
original-PE byte/instruction-boundary checks. Names below describe analyst roles;
they are not recovered original class names. `TestPlatformVertex` and
`TestPlatformRegion` expose their Boolean result in **AL**; callers must not treat
retained upper EAX bits as Boolean truth. The iterator end test is more specific:
`IsVertexRegionIteratorAtEnd` first clears EAX, then sets AL, so its full EAX
result is exactly 0 or 1. No original game was executed.

## Complete selected bodies

The [address/name index](../../indexes/platform-point-selection.tsv) resolves
each stable address to one canonical pair and preserves its legacy alias.
[Source mapping](../../indexes/platform-source-mapping.tsv) identifies the reused
original proof bodies and their exact source commit. Function comments come from
the annotated Ghidra export; matching instruction comments are also placed at
the relevant C statements because this decompiler route omits Listing EOL comments.
Names and comments were read back from the existing program; its explicit project
Save reported success. No close/reopen persistence test was performed.

| Entry | Role and physical boundary | Evidence |
| --- | --- | --- |
| `00AFF160` | Lot pointer and packed vertex pointer; cdecl, plain RET, AL boolean; 109 bytes | [ASM](../../evidence/native/construction/platforms/00AFF160.asm.txt) ([C](../../evidence/native/construction/platforms/00AFF160.c)) |
| `00AFED60` | Lot pointer, packed cell pointer, low-byte allowPartial; cdecl, plain RET, AL boolean; 114 bytes | [ASM](../../evidence/native/construction/platforms/00AFED60.asm.txt) ([C](../../evidence/native/construction/platforms/00AFED60.c)) |
| `00AF7730` | Input X/Z/Int32-level pointer and output pointer; cdecl, plain RET, void; 110 bytes | [ASM](../../evidence/native/grid/cell-coordinates/00AF7730.asm.txt) ([C](../../evidence/native/grid/cell-coordinates/00AF7730.c)) |
| `00AF6C40` | ECX iterator plus packed vertex pointer; RET4; 50 bytes | [ASM](../../evidence/native/grid/vertex-regions/00AF6C40.asm.txt) ([C](../../evidence/native/grid/vertex-regions/00AF6C40.c)) |
| `00AF6640` | ECX iterator; reset index, plain RET; 7 bytes | [ASM](../../evidence/native/grid/vertex-regions/00AF6640.asm.txt) ([C](../../evidence/native/grid/vertex-regions/00AF6640.c)) |
| `00AF6660` | ECX iterator; borrowed current cell in EAX, plain RET; 46 bytes | [ASM](../../evidence/native/grid/vertex-regions/00AF6660.asm.txt) ([C](../../evidence/native/grid/vertex-regions/00AF6660.c)) |
| `00AF6650` | ECX iterator; increment index, plain RET; 6 bytes | [ASM](../../evidence/native/grid/vertex-regions/00AF6650.asm.txt) ([C](../../evidence/native/grid/vertex-regions/00AF6650.c)) |
| `00AF67C0` | ECX iterator; full EAX 0/1 for index==4, plain RET; 9 bytes | [ASM](../../evidence/native/grid/vertex-regions/00AF67C0.asm.txt) ([C](../../evidence/native/grid/vertex-regions/00AF67C0.c)) |

The inferred `__fastcall` display of the small iterator helpers establishes no
second meaningful register argument. The constructor physically takes its one
stack argument and returns with RET4. These facts qualify the displayed types.
The projected structure/class names remain inferred; selected instructions only
establish DWORD index at +0, retained vertex bytes +4/+5/+6 and scratch
X/Z/level/mask bytes +7/+8/+9/+A. The invocation-local allocation is 12 bytes;
byte +B has no demonstrated semantic use in this constructor.

The analyst names are `TestPlatformVertex` (`AFF160`), `TestPlatformRegion`
(`AFED60`), `EncodeCellCoordinates` (`AF7730`),
`InitializeVertexRegionIterator` (`AF6C40`), `ResetVertexRegionIterator`
(`AF6640`), `GetVertexRegionIteratorCell` (`AF6660`),
`AdvanceVertexRegionIterator` (`AF6650`), and
`IsVertexRegionIteratorAtEnd` (`AF67C0`). The iterator also serves the generic
deck/foundation vertex query `AFEB00`; its ownership is not platform-specific.

## Vertex: four specific regions, in order

`AFF160` constructs an invocation-local iterator, resets its index, and repeatedly
calls `AFED60` with **mode 0**. It returns on the first true AL result. Exhausting
the four cells returns false. The input vertex supplies three bytes: signed X,
signed Z and signed level. It supplies no quarter mask.

The constructor stores the input at iterator+4/+5/+6 and preserves the level in
the scratch cell at +9. `AF6660` returns the **same borrowed scratch pointer** at
iterator+7; another current-cell call overwrites its X, Z and mask. The consumer
uses it immediately and does not retain it after this invocation.

Physical tables `0106ADF0`, `0106AE00`, `0106AE10` establish this order:

| Index | Tile X | Tile Z | Mask | Selected quarter indices |
| ---: | --- | --- | ---: | --- |
| 0 | vertex X - 1 | vertex Z - 1 | `0x6` | 1, 2 |
| 1 | vertex X | vertex Z - 1 | `0x3` | 0, 1 |
| 2 | vertex X | vertex Z | `0x9` | 0, 3 |
| 3 | vertex X - 1 | vertex Z | `0xC` | 2, 3 |

[X offsets](../../evidence/native/grid/vertex-regions/x-offsets.tsv),
[Z offsets](../../evidence/native/grid/vertex-regions/z-offsets.tsv), and
[quarter masks](../../evidence/native/grid/vertex-regions/quarter-masks.tsv) retain
the physical addresses and values. Each coordinate table is four DWORDs, but the actual
reader takes each DWORD's **low byte** at stride4. Coordinate addition and stores
wrap as bytes; the later predicate sign-extends them. This is not an unbounded
integer-coordinate iterator. There is no clamping to an outer lot edge.

`AF6650` increments without saturation. `AF67C0` clears EAX at `AF67C0`,
compares index with 4 at `AF67C2`, and uses `SETZ AL` at `AF67C5`. It therefore
returns full EAX 0/1 and tests equality with4, not >=4;
normal `AFF160` traversal stops at4. A fabricated index5 would not be an ended
iterator. No such malformed producer is demonstrated by this caller.

## Cell predicate: bounds, ordered compatibility, then catalog kind

`AFED60` interprets packed bytes0/1/2 as **signed** X/Z/level. It requires
`0 <= X < lot+174`, `0 <= Z < lot+178`, and
`lot+17C <= level <= lot+180`. Endpoints on the level interval are included;
X/Z far endpoints are excluded. Out-of-range inputs clear AL.

It then calls `AB67D0` on the same lot and packed cell, forwarding the low-byte
mode unchanged. The selected product result `FFFFFFFF` clears AL. Otherwise it
looks up that complete UInt32 product ID through `C8BBB0` using the process bank
at `011EE034`. A missing product clears AL. A present product is a platform only
when its DWORD at `+88` equals **5**. There is no ID0 absence rule, and no bank-null
guard in this body. Product-bank initialization and concurrent mutation are not
established by this predicate.

The existing [foundation storage/compatibility guide](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/deck-foundation-query-boundaries.md#selected-quarter-edit-compatibility-and-live-compressed-storage)
closes the actual selected product chain:
`AB67D0` → `AB3E50` for four UInt32 quarter IDs at storage level `level-minLevel`,
then `B02820` for compatibility, and `C8BBB0` for product resolution.

For mask bits0,1,2,3 in that order, `AB67D0` starts with retained ID `FFFFFFFF`:

- Mode0 rejects a selected missing marker immediately. A later incompatible
  marker also returns `FFFFFFFF`.
- Mode1 permits missing markers while no product has been retained. Once a valid
  product is retained, the **first incompatible subsequent marker returns that
  retained product immediately**. It does not search later quarters.
- Equal raw IDs are compatible even before catalog lookup. Different IDs are
  compatible only when neither is `FFFFFFFF`, both resolve, and their kinds at
  `+88` agree. Compatibility does not require identical raw IDs.
- No selected bits returns `FFFFFFFF`; ID0 proceeds through ordinary lookup.
- The final retained product is still checked for kind5 by `AFED60`.

Mode1 is therefore **ordered prefix selection**, not an OR over all quarters
and not majority selection. Do not replace it with “any platform in the tile.”

## Centre encoder and the fourth byte

`AF7730` writes **only bytes0,1,2** of its output. It copies the input level's
low byte from input+8 into output+2 and leaves output+3 untouched. Its input's
two coordinates are binary32; the level is an Int32 word transported in the same
three-word record, not a numeric float-to-level conversion. The separate original
`78BBC0` caller sign-extends its level byte into EAX at `78BE6B`, stores the
integer third word at `78BE89`, and calls the encoder at `78BE8D`:
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0078bbc0.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0078bbc0.c)).

For each coordinate the original uses x87 `FIST` under the current control word,
subtracts that converted integer, stores the residual as binary32 and compares
its **unsigned bit pattern** with `0x80000001`. `ADC integer,-1` retains the
integer for a nonnegative residual or negative zero, otherwise subtracts one.
For ordinary finite inputs in the representable conversion range this produces
floor, followed by low-byte narrowing. The decompiler's `ROUND` must not be read
as proof of a fixed nearest/ties-to-even control word. NaN, conversion overflow,
FPU exceptions and arbitrary environments remain separate questions.

The existing `B04EA0` caller recognizes a centre using
`abs(fracX-0.5) <= 2^-16 && abs(fracZ-0.5) <= 2^-16`. At
`B0502F` supplies mode1 and `B05043` stores byte3=`0xF` before the call at
`B05048` to `AFED60`.
Other interior points use `AF7DB0` and mode0. Edge paths use the existing
oriented adjacent-tile encoders and mode0; vertices use the iterator above.
See the complete [parent dispatch](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00b04ea0.asm.txt)
([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00b04ea0.c)).

The integer-grid test uses `abs(point-floor(point)) <= 2^-16`; it is not a
symmetric snap to the nearest integer from both sides. A point just below the
next integer can take the interior branch even when equally close to that line.

## Independently derived examples

These are consequences of the original branches, **not executed game tests**.
Let `P` and `Q` be different valid product IDs of kind5, `N` a valid kind3 product,
`U` an unresolved ordinary ID and `-` the marker `FFFFFFFF`. All coordinates and
levels in the examples are admitted; unspecified tiles have missing markers.

| Input | Required result | Why |
| --- | --- | --- |
| Vertex(4,6,L), tile(3,5,L) quarters1=P and2=Q | true | First iterator mask6; different IDs share kind5 |
| Same vertex, only tile(3,5,L) quarter1=P | false | Strict mask6 also selects missing quarter2 |
| Centre(4.5,6.5,L), quarters `[-,P,P,P]` | true | Mode1 may pass leading missing marker |
| Centre, `[P,-,N,N]` | true | After P, missing is incompatible: return P immediately |
| Centre, `[N,P,P,P]` | false | Incompatibility returns first retained N, not later platforms |
| Centre, `[P,N,N,N]` | true | Opposite ordering returns P |
| Centre, `[U,P,P,P]` | false | Retains U at failed compatibility; final lookup cannot resolve U |
| Centre, `[-,-,-,-]` | false | No retained product |
| A single selected quarter holds rawID0, resolving to kind5 | true | Zero is not a missing-marker sentinel |
| Cell X==lot width or level==max+1 | false | Half-open coordinates, closed level interval |
| AF7730 input(4.5,6.5,-1), output byte3 initially A5 | output bytes `04 06 FF A5` | Encoder preserves the caller-owned mask |

## Height caller and unresolved boundaries

The complete [surface caller](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/lot-surface-bounds-and-platform-admission.md) still
governs height use. `B051D0` transforms the original world point independently of
floor sampling's 0.01 edge allowance and forwards the same level. `C6A090` asks
the platform predicate even after a floor miss, conditionally adds **binary32
0.1875**, and only then compares with the -100 sentinel using epsilon2^-16.
For example, floor -100 plus a true platform is -99.8125 before that comparison;
moving the sentinel check before the addition changes the original branch.

These leaf contracts do not establish native spatial-bucket order/production,
live edit publication, platform-room reconstruction, resource/catalog completeness,
safe use of an unavailable-input Boolean as height authority, or successful world
startup. [Generic deck/foundation selection](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/world/deck-foundation-point-selection.md)
(`AFEE10` and its `AFEB00/AFEC10/AFECD0` children) is a distinct query from
**platform kind5**. A raw-ID false result in a
fully initialized native bank is not proof that a host's missing bank/layer is
known to contain no platform. World-loading and platform-lot gameplay remain
separate verification work.

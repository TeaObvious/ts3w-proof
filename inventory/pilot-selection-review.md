# Independent offline pilot selection

This pilot distinguishes byte-window defects from uncertain function ownership.
It reviews twelve selected entries in the previous reference at
[`cf6f60a42fe8c5bd181495a32161217972cefebc`](https://github.com/JJCodes90/OpenTS3-Playtest/tree/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof),
using the PC 1.67 executable identified in [the original-input reference](../references/pc-167.md).
This is a selection and byte review, not a statement that these functions or the
overall reference are complete.

## Method and limits

The original PE was freshly hashed and matched the prescribed reference.
Its section table and image base were parsed directly with Python's standard
library; each selected exported byte was compared to its original file offset.
GNU objdump 2.47.0 decoded the selected windows without running the executable.
All selected exported bytes matched. The three selected existing owned Listings
also matched objdump at every listed instruction start and instruction byte.

The old windows were originally produced with objdump too. Decoding them again
with the same tool family is not an independent disassembler confirmation.
The direct comparison to original PE bytes is independent of the exported text.
No live Ghidra ownership, types, annotations, save state or runtime behavior was
queried by this review. An external branch is a control-flow observation, not
proof that the target belongs to the same function. No boundary was inferred by
searching for RET bytes.

Addresses below are VAs, image base `00400000`; stable RVAs are VA minus that
base. Every stop is exclusive.

## Selection

| Entry and existing evidence | Existing window | Reason for selection and offline result |
| --- | --- | --- |
| `00D84E80`, TaskControl registration getter: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d84e80.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d84e80.c)) | `[D84E80,D86E80)`, 8,192 bytes | The sole old `cap_applied=true` entry. Its first three instructions occupy **13 bytes**, store registration-table address `0108D648`, and return with stack cleanup 4. Three `CC` bytes follow, then different adapter-like instruction sequences. The cap therefore supplies extensive extra material; it does not itself demonstrate a truncated getter. Exact live ownership and separate adapter identities remain to be established. |
| `00777F30`, lot thumbnails: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00777f30.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00777f30.c)) | `[777F30,777F74)`, 68 bytes | Confirmed missing outgoing-path evidence: conditional branches at `777F43` and `777F47` reach `777F74` and `77808D`, both omitted. The existing C describes a delegate/notifier path absent from the ASM. Highest priority for qualified CFG recovery and ownership investigation. |
| `005ABB40`, CAS part preset: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x005abb40.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x005abb40.c)) | `[5ABB40,5ABC80)`, 320 bytes | A next-entry candidate with substantial ordinary code. There are no direct branch targets outside this window. The final decoded return is at `5ABC7C`, followed by three `CC` bytes. Existing C warns of removed unreachable blocks, so even correct body extraction will require semantic review against instructions. Root-side ownership review is required before narrowing. |
| `005A57B0`, tattoo-template merge bridge: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x005a57b0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x005a57b0.c)) | `[5A57B0,5A57C0)`, 16 bytes | A five-byte unconditional jump `E9 0B 10 05 00` reaches `005F67C0`; eleven `CC` bytes remain. Useful control case: an external jump can represent a forwarding boundary instead of a missing internal block. The target's body and contract require their own evidence. |
| `004B40C0`, missing-animation callback setter: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004b40c0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004b40c0.c)) | `[4B40C0,4B40D0)`, 16 bytes | Very small old window: entry byte `C3`, followed by fifteen `CC` bytes. This proves immediate return from the selected entry; it does not establish callback registration elsewhere or general function-boundary policy. |
| `00960AE0`, camera zoom distance: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00960ae0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00960ae0.c)) | `[960AE0,960B40)`, 96 bytes | Internal numeric helper with two return paths, including `960AF0 JE 960B29`. All direct branches stay inside the window. Final decoded return at `960B32`, then thirteen `CC` bytes. Useful positive candidate for live ownership comparison; not yet a complete numeric/FP contract. |
| `007674D0`, SACS state request: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007674d0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007674d0.c)) | `[7674D0,767590)`, 192 bytes | Existing detailed ABI commentary, multiple returns and indirect dispatch. No direct branch escapes; final return at `767584`, then eleven `CC` bytes. Presence of a reviewed contract does not settle ownership or all indirect dependencies. |
| `007869F0`, deck/foundation facade: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007869f0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007869f0.c)) | `[7869F0,786A50)`, 96 bytes | Construction bridge with call to `00AFEE10` at `786A37`. Both success and failure paths are present, with final return at `786A48` and seven `CC` bytes. No missing outgoing direct branch demonstrated. Child query evidence remains separate. |
| `0078E7F0`, platform facade: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0078e7f0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0078e7f0.c)) | `[78E7F0,78E930)`, 320 bytes | Larger construction facade: coordinate conversion and multiple comparisons precede call `00B04EA0` at `78E915`. No direct branch escapes. Final return at `78E921`, then fourteen `CC` bytes. This does not prove the callee's semantics or whole platform coverage. |
| `00642220`, path-runner substep: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00642220.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00642220.c)) | Envelope `[642220,64234C)`, 300 bytes | Existing disjoint-body control: ranges `[642220,642256]` and `[642260,64234B]`, inclusive, total **291** listed bytes and 110 instructions. The nine omitted envelope bytes must remain distinguished from owned instructions. Original bytes and instruction starts match. |
| `00410500`, UInt32 field getter: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00410500.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00410500.c)) | `[410500,410504)`, 4 bytes | Existing two-instruction owned Listing: `MOV EAX,[ECX+5C]; RET`. All four original bytes and both instruction starts match. Small exact body control without inferring object type from one field access. |
| `00504BE0`, UI message dispatch: [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00504be0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00504be0.c)) | `[504BE0,504F26)`, 838 bytes | Existing 349-instruction owned Listing, all bytes/starts match. At `504C06`, an indirect jump reads table `00504F28`, outside the function's listed range. Demonstrates why complete function bytes and complete data/dispatch evidence are separate obligations. |

## Demonstrated thumbnail omission

At `00777F43`, bytes `75 2F` encode `JNE 00777F74`, exactly the old exclusive
stop. At `00777F47`, bytes `0F 84 40 01 00 00` encode `JE 0077808D`.
The first target begins `PUSH EBX; PUSH EBP; PUSH ESI` and calls `00769390`
at `00777F77`. This is reached conditionally from the original entry, rather
than invented from a nearby prologue or return. The second target starts an
epilogue with `POP EDI; ADD ESP,24; RET` at `0077808D..00778091`.

Thus the old 68-byte ASM omits instructions on outgoing paths already described
by its paired C. This is a concrete evidence gap even if live Ghidra cannot
provide meaningful function ownership. Recovering the bounded reachable CFG,
indirect calls and exact ownership must be tracked separately; do not label a
larger linear window as a complete owned function without that qualification.

The similarly named group entry `007780A0` is a secondary investigation lead:
its existing window ends at `007780E9`, while recorded conditional branches
lead there and to `0077820B`. It is not counted among the twelve selected rows.

## Recommended next checks

1. Query actual live ownership for `00777F30`, `00D84E80`, `005ABB40` and
   `00960AE0`, recording singleton/undefined cases honestly. Do not repair
   ownership or create functions merely to obtain a successful export.
2. For `00777F30`, retain the omitted branch targets and distinguish independently
   qualified CFG evidence from Ghidra-owned Listing. Check calls and data for the
   delegate/notifier path. For `00D84E80`, distinguish the 13-byte getter path
   from the extra 8-KiB window contents before deciding any canonical replacement.
3. Where live ownership is meaningful, compare the exact range union against PE
   bytes and independent instruction decoding before replacing a window. Reuse
   `00642220`, `00410500` and `00504BE0` as different ownership/data controls.
4. Preserve unresolved indirect targets, types, ABI and referenced data as
   explicit questions. No selection count or absence of escaping direct
   branches is a completeness measure.

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

OriginalPC1.67; existing FUN_008000c0 complete owned Listing.
Explicit/TS3W.exe readonlymetadata[008000c0,008000d5],22bytes8instructions, no gap/padding.
PristinePE/independentdecode exact; noDBmutation/save.

ORIGINAL ENVELOPE BYTES
008000c0: 8b 44 24 04 8b 49 0c 50 e8 53 d7 ff ff f7 d8 1b
008000d0: c0 f7 d8 c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_008000c0
Entry Point: 008000c0

008000c0: MOV EAX, dword ptr [ESP + 0x4]
008000c4: MOV ECX, dword ptr [ECX + 0xc]
008000c7: PUSH EAX
008000c8: CALL 0x007fd820
008000cd: NEG EAX
008000cf: SBB EAX, EAX
008000d1: NEG EAX
008000d3: RET 0x4

Total instructions: 8

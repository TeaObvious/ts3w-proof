# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; existing FUN_00932950, complete owned Listing.
Inclusive metadata range[00932950,0093295b]; 12ownedbytes/3instructions. No gaps/padding/data included.
Explicit /TS3W.exe serialreadonlyMCP and pristinePE/independentdecode; noDBmutator/save.

ORIGINAL ENVELOPE BYTES
00932950: 66 8b 44 24 04 66 89 41 04 c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00932950
Entry Point: 00932950

00932950: MOV AX, word ptr [ESP + 0x4]
00932955: MOV word ptr [ECX + 0x4], AX
00932959: RET 0x4

Total instructions: 3

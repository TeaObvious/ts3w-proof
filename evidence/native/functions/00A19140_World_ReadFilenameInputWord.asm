# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 selected complete existing-function instruction listing
Entry: 0x00a19140 (World_ReadFilenameInputWord; analyst-assigned name)
Paired annotated pseudocode: 00A19140_World_ReadFilenameInputWord.c
Selected extent: [0x00a19140, 0x00a19147) (7 bytes, 2 instructions)
Boundary: complete existing-function listing through RET; no next-entry or alignment window.
Source: genuine annotated Ghidra get_code disassembly; selected current DB memory bytes
were independently read and matched to the pristine PE. No other range is covered.
Physical contract: ECX input receiver, EAX raw DWORD result, RET consumes no stack arguments.
The decompiler prototype is inferred; field production, string type and lifetime remain external.

AUTHENTICATED CODE BYTES
00a19140: 8b 81 f0 00 00 00 c3

ACTUAL ANNOTATED GHIDRA LISTING
World_ReadFilenameInputWord
Entry Point: 00a19140

00a19140: MOV EAX, dword ptr [ECX + 0xf0] ; Load exactly the raw receiver+0xF0 DWORD into EAX; validity and field production remain external.
00a19146: RET ; Return raw EAX. No stack arguments are consumed, and no guard, allocation, cleanup or mutation occurs here.

Total instructions: 2

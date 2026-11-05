# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: JazzMachine_LoadResourceThunk
Paired actual annotated Ghidra pseudocode: 007FEE50_JazzMachine_LoadResourceThunk.c
Owned ranges: [[007fee50, 007fee6a]]
Envelope bytes=27

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fee50  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007fee54  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007fee58  8b542408  MOV EDX,dword ptr [ESP + 0x8]
007fee5c  50  PUSH EAX
007fee5d  51  PUSH ECX
007fee5e  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007fee62  52  PUSH EDX
007fee63  e868fcffff  CALL 0x007fead0
007fee68  c21000  RET 0x10
Owned instructions=9 owned bytes=27 gap/nonowned bytes=0

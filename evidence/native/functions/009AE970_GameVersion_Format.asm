# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: GameVersion_Format
Paired actual annotated Ghidra pseudocode: 009AE970_GameVersion_Format.c
Owned ranges: [[009ae970, 009ae993]]
Envelope bytes=36

GHIDRA LISTING (original bytes; nonowned alignment explicit)
009ae970  8b410c  MOV EAX,dword ptr [ECX + 0xc]
009ae973  8b5108  MOV EDX,dword ptr [ECX + 0x8]
009ae976  50  PUSH EAX
009ae977  8b4104  MOV EAX,dword ptr [ECX + 0x4]
009ae97a  8b09  MOV ECX,dword ptr [ECX]
009ae97c  52  PUSH EDX
009ae97d  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
009ae981  50  PUSH EAX
009ae982  51  PUSH ECX
009ae983  6870d40401  PUSH 0x104d470
009ae988  52  PUSH EDX
009ae989  e8b2fea5ff  CALL 0x0040e840
009ae98e  83c418  ADD ESP,0x18
009ae991  c20400  RET 0x4
Owned instructions=14 owned bytes=36 gap/nonowned bytes=0

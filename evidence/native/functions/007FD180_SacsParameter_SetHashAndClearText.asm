# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsParameter_SetHashAndClearText
Paired actual annotated Ghidra pseudocode: 007FD180_SacsParameter_SetHashAndClearText.c
Owned ranges: [[007fd180, 007fd1af]]
Envelope bytes=48

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd180  56  PUSH ESI
007fd181  8bf1  MOV ESI,ECX
007fd183  8b4604  MOV EAX,dword ptr [ESI + 0x4]
007fd186  85c0  TEST EAX,EAX
007fd188  741b  JZ 0x007fd1a5
007fd18a  50  PUSH EAX
007fd18b  c7460400000000  MOV dword ptr [ESI + 0x4],0x0
007fd192  e84973ceff  CALL 0x004e44e0
007fd197  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007fd19b  83c404  ADD ESP,0x4
007fd19e  894608  MOV dword ptr [ESI + 0x8],EAX
007fd1a1  5e  POP ESI
007fd1a2  c20400  RET 0x4
007fd1a5  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007fd1a9  894e08  MOV dword ptr [ESI + 0x8],ECX
007fd1ac  5e  POP ESI
007fd1ad  c20400  RET 0x4
Owned instructions=17 owned bytes=48 gap/nonowned bytes=0

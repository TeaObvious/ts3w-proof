# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1038ba20..1038ba3f; CAW_ConfigRegistryLoadSection
1038ba20: 8b44240c  MOV EAX,dword ptr [ESP + 0xc]
1038ba24: 8b542404  MOV EDX,dword ptr [ESP + 0x4]
1038ba28: 8b08  MOV ECX,dword ptr [EAX]
1038ba2a: 56  PUSH ESI
1038ba2b: 50  PUSH EAX
1038ba2c: 895008  MOV dword ptr [EAX + 0x8],EDX
1038ba2f: 8b31  MOV ESI,dword ptr [ECX]
1038ba31: 8b464c  MOV EAX,dword ptr [ESI + 0x4c]
1038ba34: 6880b93810  PUSH 0x1038b980
1038ba39: 52  PUSH EDX
1038ba3a: ffd0  CALL EAX
1038ba3c: b001  MOV AL,0x1
1038ba3e: 5e  POP ESI
1038ba3f: c3  RET

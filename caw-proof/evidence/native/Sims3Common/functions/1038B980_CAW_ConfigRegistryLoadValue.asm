# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1038b980..1038b9ac; CAW_ConfigRegistryLoadValue
1038b980: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
1038b984: 8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
1038b988: 56  PUSH ESI
1038b989: 8b742410  MOV ESI,dword ptr [ESP + 0x10]
1038b98d: 8b5608  MOV EDX,dword ptr [ESI + 0x8]
1038b990: 50  PUSH EAX
1038b991: 51  PUSH ECX
1038b992: 8b4e04  MOV ECX,dword ptr [ESI + 0x4]
1038b995: 52  PUSH EDX
1038b996: e8e5f1ffff  CALL 0x1038ab80
1038b99b: 84c0  TEST AL,AL
1038b99d: 740a  JZ 0x1038b9a9
1038b99f: b801000000  MOV EAX,0x1
1038b9a4: 01460c  ADD dword ptr [ESI + 0xc],EAX
1038b9a7: 5e  POP ESI
1038b9a8: c3  RET
1038b9a9: b001  MOV AL,0x1
1038b9ab: 5e  POP ESI
1038b9ac: c3  RET

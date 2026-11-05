# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 108dcd60..108dcdb5; CAW_DbpfShutdown
108dcd60: 56  PUSH ESI
108dcd61: 8bf1  MOV ESI,ECX
108dcd63: 807e0c00  CMP byte ptr [ESI + 0xc],0x0
108dcd67: 7449  JZ 0x108dcdb2
108dcd69: 837e1400  CMP dword ptr [ESI + 0x14],0x0
108dcd6d: 7407  JZ 0x108dcd76
108dcd6f: 8b06  MOV EAX,dword ptr [ESI]
108dcd71: 8b501c  MOV EDX,dword ptr [EAX + 0x1c]
108dcd74: ffd2  CALL EDX
108dcd76: 8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
108dcd7c: 8b06  MOV EAX,dword ptr [ESI]
108dcd7e: 8b9098000000  MOV EDX,dword ptr [EAX + 0x98]
108dcd84: 51  PUSH ECX
108dcd85: 8bce  MOV ECX,ESI
108dcd87: ffd2  CALL EDX
108dcd89: c786d002000000000000  MOV dword ptr [ESI + 0x2d0],0x0
108dcd93: 8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
108dcd99: 85c9  TEST ECX,ECX
108dcd9b: 7411  JZ 0x108dcdae
108dcd9d: c7866002000000000000  MOV dword ptr [ESI + 0x260],0x0
108dcda7: 8b01  MOV EAX,dword ptr [ECX]
108dcda9: 8b5008  MOV EDX,dword ptr [EAX + 0x8]
108dcdac: ffd2  CALL EDX
108dcdae: c6460c00  MOV byte ptr [ESI + 0xc],0x0
108dcdb2: b001  MOV AL,0x1
108dcdb4: 5e  POP ESI
108dcdb5: c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 105cc690..105cc704; CAW_ResourceFilenameLookupOrInstance
105cc690: 56  PUSH ESI
105cc691: 8b742408  MOV ESI,dword ptr [ESP + 0x8]
105cc695: c7460c04b3b210  MOV dword ptr [ESI + 0xc],0x10b2b304
105cc69c: 57  PUSH EDI
105cc69d: 8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
105cc6a1: c7064482ca10  MOV dword ptr [ESI],0x10ca8244
105cc6a7: c746044482ca10  MOV dword ptr [ESI + 0x4],0x10ca8244
105cc6ae: c746084582ca10  MOV dword ptr [ESI + 0x8],0x10ca8245
105cc6b5: 8b4704  MOV EAX,dword ptr [EDI + 0x4]
105cc6b8: 8b0f  MOV ECX,dword ptr [EDI]
105cc6ba: 50  PUSH EAX
105cc6bb: 51  PUSH ECX
105cc6bc: e83ff8ffff  CALL 0x105cbf00
105cc6c1: 83c408  ADD ESP,0x8
105cc6c4: 85c0  TEST EAX,EAX
105cc6c6: 7423  JZ 0x105cc6eb
105cc6c8: 8bc8  MOV ECX,EAX
105cc6ca: 8d7901  LEA EDI,[ECX + 0x1]
105cc6cd: 8d4900  LEA ECX,[ECX]
105cc6d0: 8a11  MOV DL,byte ptr [ECX]
105cc6d2: 83c101  ADD ECX,0x1
105cc6d5: 84d2  TEST DL,DL
105cc6d7: 75f7  JNZ 0x105cc6d0
105cc6d9: 2bcf  SUB ECX,EDI
105cc6db: 03c8  ADD ECX,EAX
105cc6dd: 51  PUSH ECX
105cc6de: 50  PUSH EAX
105cc6df: 8bce  MOV ECX,ESI
105cc6e1: e8ba21a4ff  CALL 0x1000e8a0
105cc6e6: 5f  POP EDI
105cc6e7: 8bc6  MOV EAX,ESI
105cc6e9: 5e  POP ESI
105cc6ea: c3  RET
105cc6eb: 8b17  MOV EDX,dword ptr [EDI]
105cc6ed: 8b4704  MOV EAX,dword ptr [EDI + 0x4]
105cc6f0: 52  PUSH EDX
105cc6f1: 50  PUSH EAX
105cc6f2: 6834b3b210  PUSH 0x10b2b334
105cc6f7: 56  PUSH ESI
105cc6f8: e88329a4ff  CALL 0x1000f080
105cc6fd: 83c410  ADD ESP,0x10
105cc700: 5f  POP EDI
105cc701: 8bc6  MOV EAX,ESI
105cc703: 5e  POP ESI
105cc704: c3  RET

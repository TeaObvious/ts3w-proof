# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10926ca0..10926d13; CAW_InitializeCounterTimer
10926ca0: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
10926ca4: f30f1005d4b0ac10  MOVSS XMM0,dword ptr [0x10acb0d4]
10926cac: 83ec08  SUB ESP,0x8
10926caf: 53  PUSH EBX
10926cb0: 33db  XOR EBX,EBX
10926cb2: 56  PUSH ESI
10926cb3: 8bf1  MOV ESI,ECX
10926cb5: 50  PUSH EAX
10926cb6: 891e  MOV dword ptr [ESI],EBX
10926cb8: 895e04  MOV dword ptr [ESI + 0x4],EBX
10926cbb: 895e08  MOV dword ptr [ESI + 0x8],EBX
10926cbe: 895e0c  MOV dword ptr [ESI + 0xc],EBX
10926cc1: 895e10  MOV dword ptr [ESI + 0x10],EBX
10926cc4: f30f114614  MOVSS dword ptr [ESI + 0x14],XMM0
10926cc9: e802fbffff  CALL 0x109267d0
10926cce: 385c2418  CMP byte ptr [ESP + 0x18],BL
10926cd2: 7436  JZ 0x10926d0a
10926cd4: 8b0e  MOV ECX,dword ptr [ESI]
10926cd6: 0b4e04  OR ECX,dword ptr [ESI + 0x4]
10926cd9: 752f  JNZ 0x10926d0a
10926cdb: 837e1001  CMP dword ptr [ESI + 0x10],0x1
10926cdf: 7511  JNZ 0x10926cf2
10926ce1: 0f31  RDTSC
10926ce3: 8906  MOV dword ptr [ESI],EAX
10926ce5: 895604  MOV dword ptr [ESI + 0x4],EDX
10926ce8: 8bc6  MOV EAX,ESI
10926cea: 5e  POP ESI
10926ceb: 5b  POP EBX
10926cec: 83c408  ADD ESP,0x8
10926cef: c20800  RET 0x8
10926cf2: 8d542408  LEA EDX,[ESP + 0x8]
10926cf6: 52  PUSH EDX
10926cf7: ff15a4b2aa10  CALL dword ptr [0x10aab2a4]
10926cfd: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
10926d01: 8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
10926d05: 894e04  MOV dword ptr [ESI + 0x4],ECX
10926d08: 8906  MOV dword ptr [ESI],EAX
10926d0a: 8bc6  MOV EAX,ESI
10926d0c: 5e  POP ESI
10926d0d: 5b  POP EBX
10926d0e: 83c408  ADD ESP,0x8
10926d11: c20800  RET 0x8

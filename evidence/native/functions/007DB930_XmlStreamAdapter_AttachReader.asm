# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function XmlStreamAdapter_AttachReader Entry 007db930
OWNED_RANGE 007db930:007db9bb
007db930: 56  PUSH ESI
007db931: 8bf1  MOV ESI,ECX
007db933: 837e4800  CMP dword ptr [ESI + 0x48],0x0
007db937: 757d  JNZ 0x007db9b6
007db939: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
007db93d: 85c0  TEST EAX,EAX
007db93f: 7475  JZ 0x007db9b6
007db941: 837e0800  CMP dword ptr [ESI + 0x8],0x0
007db945: 753a  JNZ 0x007db981
007db947: 6a00  PUSH 0x0
007db949: 6a00  PUSH 0x0
007db94b: 6a00  PUSH 0x0
007db94d: 6a00  PUSH 0x0
007db94f: 68c0b70101  PUSH 0x101b7c0
007db954: 688c000000  PUSH 0x8c
007db959: 894644  MOV dword ptr [ESI + 0x44],EAX
007db95c: e89f8bd0ff  CALL 0x004e4500
007db961: 83c418  ADD ESP,0x18
007db964: 85c0  TEST EAX,EAX
007db966: 7414  JZ 0x007db97c
007db968: 8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007db96c: 8b5644  MOV EDX,dword ptr [ESI + 0x44]
007db96f: 6a00  PUSH 0x0
007db971: 51  PUSH ECX
007db972: 52  PUSH EDX
007db973: 8bc8  MOV ECX,EAX
007db975: e8365fc9ff  CALL 0x004718b0
007db97a: eb02  JMP 0x007db97e
007db97c: 33c0  XOR EAX,EAX
007db97e: 894608  MOV dword ptr [ESI + 0x8],EAX
007db981: 8b462c  MOV EAX,dword ptr [ESI + 0x2c]
007db984: 8b4e28  MOV ECX,dword ptr [ESI + 0x28]
007db987: 57  PUSH EDI
007db988: 8d7e24  LEA EDI,[ESI + 0x24]
007db98b: 50  PUSH EAX
007db98c: 51  PUSH ECX
007db98d: 8bcf  MOV ECX,EDI
007db98f: e80cfbffff  CALL 0x007db4a0
007db994: c7470c00000000  MOV dword ptr [EDI + 0xc],0x0
007db99b: b801000000  MOV EAX,0x1
007db9a0: 394648  CMP dword ptr [ESI + 0x48],EAX
007db9a3: 5f  POP EDI
007db9a4: 7509  JNZ 0x007db9af
007db9a6: 8b5608  MOV EDX,dword ptr [ESI + 0x8]
007db9a9: 837a0800  CMP dword ptr [EDX + 0x8],0x0
007db9ad: 7507  JNZ 0x007db9b6
007db9af: 894648  MOV dword ptr [ESI + 0x48],EAX
007db9b2: 5e  POP ESI
007db9b3: c20800  RET 0x8
007db9b6: 32c0  XOR AL,AL
007db9b8: 5e  POP ESI
007db9b9: c20800  RET 0x8
Total instructions: 52; owned bytes: 140

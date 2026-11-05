# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined RoomLighting_AdvanceQualityStage(int * param_1)
Owned ranges: [[0069ec80, 0069ecfc]]

0069ec80  53  PUSH EBX
0069ec81  56  PUSH ESI
0069ec82  8bf1  MOV ESI,ECX
0069ec84  57  PUSH EDI
0069ec85  8bbef4000000  MOV EDI,dword ptr [ESI + 0xf4]
0069ec8b  89be00010000  MOV dword ptr [ESI + 0x100],EDI
0069ec91  bb05000000  MOV EBX,0x5
0069ec96  e885fcffff  CALL 0x0069e920
0069ec9b  3bf8  CMP EDI,EAX
0069ec9d  7c0f  JL 0x0069ecae
0069ec9f  3b3d009b1501  CMP EDI,dword ptr [0x01159b00]
0069eca5  7421  JZ 0x0069ecc8
0069eca7  bb04000000  MOV EBX,0x4
0069ecac  eb1a  JMP 0x0069ecc8
0069ecae  85ff  TEST EDI,EDI
0069ecb0  750a  JNZ 0x0069ecbc
0069ecb2  bf01000000  MOV EDI,0x1
0069ecb7  8d5f01  LEA EBX,[EDI + 0x1]
0069ecba  eb0c  JMP 0x0069ecc8
0069ecbc  83ff01  CMP EDI,0x1
0069ecbf  7507  JNZ 0x0069ecc8
0069ecc1  bf02000000  MOV EDI,0x2
0069ecc6  8bdf  MOV EBX,EDI
0069ecc8  83fb03  CMP EBX,0x3
0069eccb  89bef4000000  MOV dword ptr [ESI + 0xf4],EDI
0069ecd1  7515  JNZ 0x0069ece8
0069ecd3  8b460c  MOV EAX,dword ptr [ESI + 0xc]
0069ecd6  8b0e  MOV ECX,dword ptr [ESI]
0069ecd8  50  PUSH EAX
0069ecd9  e862750000  CALL 0x006a6240
0069ecde  5f  POP EDI
0069ecdf  899ef0000000  MOV dword ptr [ESI + 0xf0],EBX
0069ece5  5e  POP ESI
0069ece6  5b  POP EBX
0069ece7  c3  RET
0069ece8  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
0069eceb  51  PUSH ECX
0069ecec  8b0e  MOV ECX,dword ptr [ESI]
0069ecee  e84d6e0000  CALL 0x006a5b40
0069ecf3  5f  POP EDI
0069ecf4  899ef0000000  MOV dword ptr [ESI + 0xf0],EBX
0069ecfa  5e  POP ESI
0069ecfb  5b  POP EBX
0069ecfc  c3  RET

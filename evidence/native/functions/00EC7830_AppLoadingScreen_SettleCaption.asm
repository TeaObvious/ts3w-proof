# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_SettleCaption Entry 00ec7830
OWNED_RANGE 00ec7830:00ec7a10
00ec7830: 83ec20  SUB ESP,0x20
00ec7833: 53  PUSH EBX
00ec7834: 55  PUSH EBP
00ec7835: 56  PUSH ESI
00ec7836: 8bf1  MOV ESI,ECX
00ec7838: 8b8e80020000  MOV ECX,dword ptr [ESI + 0x280]
00ec783e: 8b01  MOV EAX,dword ptr [ECX]
00ec7840: 8b5010  MOV EDX,dword ptr [EAX + 0x10]
00ec7843: ffd2  CALL EDX
00ec7845: 8b10  MOV EDX,dword ptr [EAX]
00ec7847: 8bc8  MOV ECX,EAX
00ec7849: 8b4234  MOV EAX,dword ptr [EDX + 0x34]
00ec784c: ffd0  CALL EAX
00ec784e: f30f1000  MOVSS XMM0,dword ptr [EAX]
00ec7852: 8b8e84020000  MOV ECX,dword ptr [ESI + 0x284]
00ec7858: f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00ec785e: f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
00ec7863: f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00ec7869: f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
00ec786e: f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00ec7874: f30f10400c  MOVSS XMM0,dword ptr [EAX + 0xc]
00ec7879: f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00ec787f: 8b11  MOV EDX,dword ptr [ECX]
00ec7881: 8b82a4000000  MOV EAX,dword ptr [EDX + 0xa4]
00ec7887: ffd0  CALL EAX
00ec7889: d905b435fb00  FLD float ptr [0x00fb35b4]
00ec788f: f30f1000  MOVSS XMM0,dword ptr [EAX]
00ec7893: f30f104804  MOVSS XMM1,dword ptr [EAX + 0x4]
00ec7898: f30f105008  MOVSS XMM2,dword ptr [EAX + 0x8]
00ec789d: f30f10580c  MOVSS XMM3,dword ptr [EAX + 0xc]
00ec78a2: f30f1064240c  MOVSS XMM4,dword ptr [ESP + 0xc]
00ec78a8: 8b8e84020000  MOV ECX,dword ptr [ESI + 0x284]
00ec78ae: f30f5ce0  SUBSS XMM4,XMM0
00ec78b2: f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00ec78b8: f30f5cc1  SUBSS XMM0,XMM1
00ec78bc: f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00ec78c2: f30f10442414  MOVSS XMM0,dword ptr [ESP + 0x14]
00ec78c8: f30f58c2  ADDSS XMM0,XMM2
00ec78cc: f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00ec78d2: f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
00ec78d8: 83c110  ADD ECX,0x10
00ec78db: f30f58c3  ADDSS XMM0,XMM3
00ec78df: f30f1164240c  MOVSS dword ptr [ESP + 0xc],XMM4
00ec78e5: f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00ec78eb: 8b11  MOV EDX,dword ptr [ECX]
00ec78ed: 8b4218  MOV EAX,dword ptr [EDX + 0x18]
00ec78f0: 51  PUSH ECX
00ec78f1: d91c24  FSTP float ptr [ESP]
00ec78f4: ffd0  CALL EAX
00ec78f6: 0f57c0  XORPS XMM0,XMM0
00ec78f9: 8b8e84020000  MOV ECX,dword ptr [ESI + 0x284]
00ec78ff: f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00ec7905: f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ec790b: f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00ec7911: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00ec7917: 8b11  MOV EDX,dword ptr [ECX]
00ec7919: 8b92a8000000  MOV EDX,dword ptr [EDX + 0xa8]
00ec791f: 8d44241c  LEA EAX,[ESP + 0x1c]
00ec7923: 50  PUSH EAX
00ec7924: ffd2  CALL EDX
00ec7926: 8b8e84020000  MOV ECX,dword ptr [ESI + 0x284]
00ec792c: 8b4110  MOV EAX,dword ptr [ECX + 0x10]
00ec792f: 8b5048  MOV EDX,dword ptr [EAX + 0x48]
00ec7932: 83c110  ADD ECX,0x10
00ec7935: 6a00  PUSH 0x0
00ec7937: ffd2  CALL EDX
00ec7939: 8b8e80020000  MOV ECX,dword ptr [ESI + 0x280]
00ec793f: 8b01  MOV EAX,dword ptr [ECX]
00ec7941: 8b5010  MOV EDX,dword ptr [EAX + 0x10]
00ec7944: ffd2  CALL EDX
00ec7946: 8b10  MOV EDX,dword ptr [EAX]
00ec7948: 8b5264  MOV EDX,dword ptr [EDX + 0x64]
00ec794b: 8d4c240c  LEA ECX,[ESP + 0xc]
00ec794f: 51  PUSH ECX
00ec7950: 8bc8  MOV ECX,EAX
00ec7952: ffd2  CALL EDX
00ec7954: 8b8668020000  MOV EAX,dword ptr [ESI + 0x268]
00ec795a: 398680020000  CMP dword ptr [ESI + 0x280],EAX
00ec7960: 7508  JNZ 0x00ec796a
00ec7962: 8bae6c020000  MOV EBP,dword ptr [ESI + 0x26c]
00ec7968: eb02  JMP 0x00ec796c
00ec796a: 8be8  MOV EBP,EAX
00ec796c: 8b9e74020000  MOV EBX,dword ptr [ESI + 0x274]
00ec7972: 399e84020000  CMP dword ptr [ESI + 0x284],EBX
00ec7978: 7506  JNZ 0x00ec7980
00ec797a: 8b9e78020000  MOV EBX,dword ptr [ESI + 0x278]
00ec7980: 8b4500  MOV EAX,dword ptr [EBP]
00ec7983: 8b5010  MOV EDX,dword ptr [EAX + 0x10]
00ec7986: 8bcd  MOV ECX,EBP
00ec7988: ffd2  CALL EDX
00ec798a: 8b10  MOV EDX,dword ptr [EAX]
00ec798c: 8bc8  MOV ECX,EAX
00ec798e: 8b4228  MOV EAX,dword ptr [EDX + 0x28]
00ec7991: ffd0  CALL EAX
00ec7993: a801  TEST AL,0x1
00ec7995: 7467  JZ 0x00ec79fe
00ec7997: 8b5500  MOV EDX,dword ptr [EBP]
00ec799a: 8b4210  MOV EAX,dword ptr [EDX + 0x10]
00ec799d: 57  PUSH EDI
00ec799e: 8bcd  MOV ECX,EBP
00ec79a0: ffd0  CALL EAX
00ec79a2: 8b10  MOV EDX,dword ptr [EAX]
00ec79a4: 6a00  PUSH 0x0
00ec79a6: 8bc8  MOV ECX,EAX
00ec79a8: 8b4274  MOV EAX,dword ptr [EDX + 0x74]
00ec79ab: 6a01  PUSH 0x1
00ec79ad: ffd0  CALL EAX
00ec79af: d905b435fb00  FLD float ptr [0x00fb35b4]
00ec79b5: 8b5310  MOV EDX,dword ptr [EBX + 0x10]
00ec79b8: 8b4218  MOV EAX,dword ptr [EDX + 0x18]
00ec79bb: 8d7b10  LEA EDI,[EBX + 0x10]
00ec79be: 51  PUSH ECX
00ec79bf: 8bcf  MOV ECX,EDI
00ec79c1: d91c24  FSTP float ptr [ESP]
00ec79c4: ffd0  CALL EAX
00ec79c6: 0f57c0  XORPS XMM0,XMM0
00ec79c9: 8b13  MOV EDX,dword ptr [EBX]
00ec79cb: 8b92a8000000  MOV EDX,dword ptr [EDX + 0xa8]
00ec79d1: 8d442420  LEA EAX,[ESP + 0x20]
00ec79d5: 50  PUSH EAX
00ec79d6: 8bcb  MOV ECX,EBX
00ec79d8: f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00ec79de: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00ec79e4: f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00ec79ea: f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00ec79f0: ffd2  CALL EDX
00ec79f2: 8b07  MOV EAX,dword ptr [EDI]
00ec79f4: 8b5048  MOV EDX,dword ptr [EAX + 0x48]
00ec79f7: 6a00  PUSH 0x0
00ec79f9: 8bcf  MOV ECX,EDI
00ec79fb: ffd2  CALL EDX
00ec79fd: 5f  POP EDI
00ec79fe: 89ae80020000  MOV dword ptr [ESI + 0x280],EBP
00ec7a04: 899e84020000  MOV dword ptr [ESI + 0x284],EBX
00ec7a0a: 5e  POP ESI
00ec7a0b: 5d  POP EBP
00ec7a0c: 5b  POP EBX
00ec7a0d: 83c420  ADD ESP,0x20
00ec7a10: c3  RET
Total instructions: 139; owned bytes: 481

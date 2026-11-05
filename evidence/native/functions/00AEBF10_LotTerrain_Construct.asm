# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined1 * LotTerrain_Construct(undefined1 * param_1)
Owned ranges: [[00aebf10, 00aec0d9]]

00aebf10  f30f1005c8f80601  MOVSS XMM0,dword ptr [0x0106f8c8]
00aebf18  53  PUSH EBX
00aebf19  33db  XOR EBX,EBX
00aebf1b  56  PUSH ESI
00aebf1c  8bf1  MOV ESI,ECX
00aebf1e  f30f114614  MOVSS dword ptr [ESI + 0x14],XMM0
00aebf23  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00aebf2b  881e  MOV byte ptr [ESI],BL
00aebf2d  895e04  MOV dword ptr [ESI + 0x4],EBX
00aebf30  895e08  MOV dword ptr [ESI + 0x8],EBX
00aebf33  895e0c  MOV dword ptr [ESI + 0xc],EBX
00aebf36  895e10  MOV dword ptr [ESI + 0x10],EBX
00aebf39  c74618ffffffff  MOV dword ptr [ESI + 0x18],0xffffffff
00aebf40  895e30  MOV dword ptr [ESI + 0x30],EBX
00aebf43  895e34  MOV dword ptr [ESI + 0x34],EBX
00aebf46  895e38  MOV dword ptr [ESI + 0x38],EBX
00aebf49  c7463c28a60601  MOV dword ptr [ESI + 0x3c],0x106a628
00aebf50  f30f114650  MOVSS dword ptr [ESI + 0x50],XMM0
00aebf55  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00aebf5d  f30f114654  MOVSS dword ptr [ESI + 0x54],XMM0
00aebf62  c7465c0ca60601  MOV dword ptr [ESI + 0x5c],0x106a60c
00aebf69  c7464801000000  MOV dword ptr [ESI + 0x48],0x1
00aebf70  c7464400d91401  MOV dword ptr [ESI + 0x44],0x114d900
00aebf77  895e4c  MOV dword ptr [ESI + 0x4c],EBX
00aebf7a  895e58  MOV dword ptr [ESI + 0x58],EBX
00aebf7d  895e60  MOV dword ptr [ESI + 0x60],EBX
00aebf80  895e64  MOV dword ptr [ESI + 0x64],EBX
00aebf83  895e68  MOV dword ptr [ESI + 0x68],EBX
00aebf86  68f4a50601  PUSH 0x106a5f4
00aebf8b  8d4e70  LEA ECX,[ESI + 0x70]
00aebf8e  c7466cdca50601  MOV dword ptr [ESI + 0x6c],0x106a5dc
00aebf95  e876790700  CALL 0x00b63910
00aebf9a  a1a8441801  MOV EAX,[0x011844a8]
00aebf9f  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00aebfa5  8b0dac441801  MOV ECX,dword ptr [0x011844ac]
00aebfab  898eb8000000  MOV dword ptr [ESI + 0xb8],ECX
00aebfb1  8b15b0441801  MOV EDX,dword ptr [0x011844b0]
00aebfb7  8996bc000000  MOV dword ptr [ESI + 0xbc],EDX
00aebfbd  a1b4441801  MOV EAX,[0x011844b4]
00aebfc2  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00aebfc8  889ec4000000  MOV byte ptr [ESI + 0xc4],BL
00aebfce  899ec8000000  MOV dword ptr [ESI + 0xc8],EBX
00aebfd4  899ecc000000  MOV dword ptr [ESI + 0xcc],EBX
00aebfda  899ed0000000  MOV dword ptr [ESI + 0xd0],EBX
00aebfe0  8b0da8441801  MOV ECX,dword ptr [0x011844a8]
00aebfe6  898ed4000000  MOV dword ptr [ESI + 0xd4],ECX
00aebfec  8b15ac441801  MOV EDX,dword ptr [0x011844ac]
00aebff2  8996d8000000  MOV dword ptr [ESI + 0xd8],EDX
00aebff8  a1b0441801  MOV EAX,[0x011844b0]
00aebffd  8986dc000000  MOV dword ptr [ESI + 0xdc],EAX
00aec003  8b0db4441801  MOV ECX,dword ptr [0x011844b4]
00aec009  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00aec011  898ee0000000  MOV dword ptr [ESI + 0xe0],ECX
00aec017  899ee4000000  MOV dword ptr [ESI + 0xe4],EBX
00aec01d  c786e8000000ffffffff  MOV dword ptr [ESI + 0xe8],0xffffffff
00aec027  899ef0000000  MOV dword ptr [ESI + 0xf0],EBX
00aec02d  899ef4000000  MOV dword ptr [ESI + 0xf4],EBX
00aec033  899ef8000000  MOV dword ptr [ESI + 0xf8],EBX
00aec039  899efc000000  MOV dword ptr [ESI + 0xfc],EBX
00aec03f  899e00010000  MOV dword ptr [ESI + 0x100],EBX
00aec045  899e04010000  MOV dword ptr [ESI + 0x104],EBX
00aec04b  899e08010000  MOV dword ptr [ESI + 0x108],EBX
00aec051  c7860c010000b8a50601  MOV dword ptr [ESI + 0x10c],0x106a5b8
00aec05b  f30f118620010000  MOVSS dword ptr [ESI + 0x120],XMM0
00aec063  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00aec06b  f30f118624010000  MOVSS dword ptr [ESI + 0x124],XMM0
00aec073  c7862c0100008ca50601  MOV dword ptr [ESI + 0x12c],0x106a58c
00aec07d  c7861801000001000000  MOV dword ptr [ESI + 0x118],0x1
00aec087  c7861401000000d91401  MOV dword ptr [ESI + 0x114],0x114d900
00aec091  899e1c010000  MOV dword ptr [ESI + 0x11c],EBX
00aec097  899e28010000  MOV dword ptr [ESI + 0x128],EBX
00aec09d  899e30010000  MOV dword ptr [ESI + 0x130],EBX
00aec0a3  899e34010000  MOV dword ptr [ESI + 0x134],EBX
00aec0a9  899e38010000  MOV dword ptr [ESI + 0x138],EBX
00aec0af  c7863c01000060a50601  MOV dword ptr [ESI + 0x13c],0x106a560
00aec0b9  899e54010000  MOV dword ptr [ESI + 0x154],EBX
00aec0bf  899e58010000  MOV dword ptr [ESI + 0x158],EBX
00aec0c5  899e5c010000  MOV dword ptr [ESI + 0x15c],EBX
00aec0cb  c7866001000040a50601  MOV dword ptr [ESI + 0x160],0x106a540
00aec0d5  8bc6  MOV EAX,ESI
00aec0d7  5e  POP ESI
00aec0d8  5b  POP EBX
00aec0d9  c3  RET

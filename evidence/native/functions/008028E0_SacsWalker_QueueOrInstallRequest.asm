# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsWalker_QueueOrInstallRequest(void * this, uint param_1, uint param_2)
Owned ranges: [[008028e0, 0080294f]]

008028e0  56  PUSH ESI
008028e1  8bf1  MOV ESI,ECX
008028e3  837e2400  CMP dword ptr [ESI + 0x24],0x0
008028e7  7452  JZ 0x0080293b
008028e9  8b4644  MOV EAX,dword ptr [ESI + 0x44]
008028ec  8d4e2c  LEA ECX,[ESI + 0x2c]
008028ef  8d5008  LEA EDX,[EAX + 0x8]
008028f2  3b5120  CMP EDX,dword ptr [ECX + 0x20]
008028f5  7416  JZ 0x0080290d
008028f7  85c0  TEST EAX,EAX
008028f9  895118  MOV dword ptr [ECX + 0x18],EDX
008028fc  7419  JZ 0x00802917
008028fe  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00802902  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00802906  8908  MOV dword ptr [EAX],ECX
00802908  895004  MOV dword ptr [EAX + 0x4],EDX
0080290b  eb0a  JMP 0x00802917
0080290d  8d442408  LEA EAX,[ESP + 0x8]
00802911  50  PUSH EAX
00802912  e8b94df2ff  CALL 0x007276d0
00802917  b001  MOV AL,0x1
00802919  88460c  MOV byte ptr [ESI + 0xc],AL
0080291c  8b7604  MOV ESI,dword ptr [ESI + 0x4]
0080291f  888646010000  MOV byte ptr [ESI + 0x146],AL
00802925  8b0d409d1d01  MOV ECX,dword ptr [0x011d9d40]
0080292b  85c9  TEST ECX,ECX
0080292d  741d  JZ 0x0080294c
0080292f  6a00  PUSH 0x0
00802931  56  PUSH ESI
00802932  e849a6ffff  CALL 0x007fcf80
00802937  5e  POP ESI
00802938  c20800  RET 0x8
0080293b  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0080293f  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00802943  51  PUSH ECX
00802944  52  PUSH EDX
00802945  8bce  MOV ECX,ESI
00802947  e844fdffff  CALL 0x00802690
0080294c  5e  POP ESI
0080294d  c20800  RET 0x8

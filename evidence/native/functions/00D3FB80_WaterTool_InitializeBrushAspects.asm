# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void WaterTool_InitializeBrushAspects(void * this)
Owned ranges: [[00d3fb80, 00d3fc50]]

00d3fb80  56  PUSH ESI
00d3fb81  8bf1  MOV ESI,ECX
00d3fb83  8b8690010000  MOV EAX,dword ptr [ESI + 0x190]
00d3fb89  8d8890000000  LEA ECX,[EAX + 0x90]
00d3fb8f  898ed4000000  MOV dword ptr [ESI + 0xd4],ECX
00d3fb95  f30f10411c  MOVSS XMM0,dword ptr [ECX + 0x1c]
00d3fb9a  f30f5905002a1901  MULSS XMM0,dword ptr [0x01192a00]
00d3fba2  f30f1186c8000000  MOVSS dword ptr [ESI + 0xc8],XMM0
00d3fbaa  f30f100d142a1901  MOVSS XMM1,dword ptr [0x01192a14]
00d3fbb2  f30f1005d08a0801  MOVSS XMM0,dword ptr [0x01088ad0]
00d3fbba  0f2ec8  UCOMISS XMM1,XMM0
00d3fbbd  9f  LAHF
00d3fbbe  f6c444  TEST AH,0x44
00d3fbc1  7a0a  JP 0x00d3fbcd
00d3fbc3  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00d3fbcb  eb43  JMP 0x00d3fc10
00d3fbcd  0f2fc1  COMISS XMM0,XMM1
00d3fbd0  761e  JBE 0x00d3fbf0
00d3fbd2  f30f5cc1  SUBSS XMM0,XMM1
00d3fbd6  f30f590514b2fa00  MULSS XMM0,dword ptr [0x00fab214]
00d3fbde  f30f59059c2bfa00  MULSS XMM0,dword ptr [0x00fa2b9c]
00d3fbe6  f30f5805f898f900  ADDSS XMM0,dword ptr [0x00f998f8]
00d3fbee  eb20  JMP 0x00d3fc10
00d3fbf0  f30f5cc8  SUBSS XMM1,XMM0
00d3fbf4  f30f590d14b2fa00  MULSS XMM1,dword ptr [0x00fab214]
00d3fbfc  f30f590d64fd0301  MULSS XMM1,dword ptr [0x0103fd64]
00d3fc04  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00d3fc0c  f30f5cc1  SUBSS XMM0,XMM1
00d3fc10  6a01  PUSH 0x1
00d3fc12  8d86d0000000  LEA EAX,[ESI + 0xd0]
00d3fc18  50  PUSH EAX
00d3fc19  83c108  ADD ECX,0x8
00d3fc1c  6a01  PUSH 0x1
00d3fc1e  51  PUSH ECX
00d3fc1f  f30f1186d8000000  MOVSS dword ptr [ESI + 0xd8],XMM0
00d3fc27  e8c493f4ff  CALL 0x00c88ff0
00d3fc2c  83c410  ADD ESP,0x10
00d3fc2f  6a07  PUSH 0x7
00d3fc31  8bce  MOV ECX,ESI
00d3fc33  e83894fdff  CALL 0x00d19070
00d3fc38  8b8ed4000000  MOV ECX,dword ptr [ESI + 0xd4]
00d3fc3e  83c108  ADD ECX,0x8
00d3fc41  51  PUSH ECX
00d3fc42  8bce  MOV ECX,ESI
00d3fc44  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00d3fc4a  e89194fdff  CALL 0x00d190e0
00d3fc4f  5e  POP ESI
00d3fc50  c3  RET

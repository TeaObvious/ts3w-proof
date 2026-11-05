# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TilePart_GetLocalSamplePoint(char * cell, LotXZLevel * output)
Owned ranges: [[00af81a0, 00af8225]]

00af81a0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00af81a4  0fbe5002  MOVSX EDX,byte ptr [EAX + 0x2]
00af81a8  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00af81ac  f30f1005b4b5f900  MOVSS XMM0,dword ptr [0x00f9b5b4]
00af81b4  895108  MOV dword ptr [ECX + 0x8],EDX
00af81b7  0fbe10  MOVSX EDX,byte ptr [EAX]
00af81ba  f30f2aca  CVTSI2SS XMM1,EDX
00af81be  f30f58c8  ADDSS XMM1,XMM0
00af81c2  f30f1109  MOVSS dword ptr [ECX],XMM1
00af81c6  0fbe5001  MOVSX EDX,byte ptr [EAX + 0x1]
00af81ca  f30f2aca  CVTSI2SS XMM1,EDX
00af81ce  f30f58c8  ADDSS XMM1,XMM0
00af81d2  0f57c0  XORPS XMM0,XMM0
00af81d5  f30f114904  MOVSS dword ptr [ECX + 0x4],XMM1
00af81da  8a4003  MOV AL,byte ptr [EAX + 0x3]
00af81dd  a801  TEST AL,0x1
00af81df  0f28c8  MOVAPS XMM1,XMM0
00af81e2  7408  JZ 0x00af81ec
00af81e4  f30f100d64110601  MOVSS XMM1,dword ptr [0x01061164]
00af81ec  a802  TEST AL,0x2
00af81ee  f30f101554e5fa00  MOVSS XMM2,dword ptr [0x00fae554]
00af81f6  7403  JZ 0x00af81fb
00af81f8  0f28c2  MOVAPS XMM0,XMM2
00af81fb  a804  TEST AL,0x4
00af81fd  7404  JZ 0x00af8203
00af81ff  f30f58ca  ADDSS XMM1,XMM2
00af8203  a808  TEST AL,0x8
00af8205  7404  JZ 0x00af820b
00af8207  f30f5cc2  SUBSS XMM0,XMM2
00af820b  f30f1011  MOVSS XMM2,dword ptr [ECX]
00af820f  f30f58d0  ADDSS XMM2,XMM0
00af8213  f30f104104  MOVSS XMM0,dword ptr [ECX + 0x4]
00af8218  f30f58c1  ADDSS XMM0,XMM1
00af821c  f30f1111  MOVSS dword ptr [ECX],XMM2
00af8220  f30f114104  MOVSS dword ptr [ECX + 0x4],XMM0
00af8225  c3  RET

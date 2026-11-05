# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlCursor_AdvanceToken
Owned ranges: [[00471150, 004711ae]]
Signature: bool __thiscall XmlCursor_AdvanceToken(void)
Physical ABI: ECX cursor; no stack words; AL success only; plain RET.

00471150  56  PUSH ESI
00471151  8bf1  MOV ESI,ECX
00471153  8b4648  MOV EAX,dword ptr [ESI + 0x48] ; Advance the current linked token once when present.
00471156  85c0  TEST EAX,EAX
00471158  7405  JZ 0x0047115f
0047115a  8b00  MOV EAX,dword ptr [EAX]
0047115c  894648  MOV dword ptr [ESI + 0x48],EAX
0047115f  837e4800  CMP dword ptr [ESI + 0x48],0x0
00471163  7546  JNZ 0x004711ab
00471165  8b4650  MOV EAX,dword ptr [ESI + 0x50]
00471168  3b461c  CMP EAX,dword ptr [ESI + 0x1c]
0047116b  8d4e18  LEA ECX,[ESI + 0x18]
0047116e  760d  JBE 0x0047117d
00471170  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00471173  7308  JNC 0x0047117d
00471175  89410c  MOV dword ptr [ECX + 0xc],EAX
00471178  894110  MOV dword ptr [ECX + 0x10],EAX
0047117b  eb06  JMP 0x00471183
0047117d  50  PUSH EAX
0047117e  e89d7a0700  CALL 0x004e8c20
00471183  8bce  MOV ECX,ESI
00471185  c7464800000000  MOV dword ptr [ESI + 0x48],0x0 ; On exhausted queue reset token head/tail/current before pumping more input.
0047118c  c7464400000000  MOV dword ptr [ESI + 0x44],0x0
00471193  c7464000000000  MOV dword ptr [ESI + 0x40],0x0
0047119a  e821ffffff  CALL 0x004710c0
0047119f  84c0  TEST AL,AL
004711a1  7502  JNZ 0x004711a5
004711a3  5e  POP ESI
004711a4  c3  RET
004711a5  8b4e40  MOV ECX,dword ptr [ESI + 0x40] ; Adopt freshly produced head as current; AL1 is the only defined success result.
004711a8  894e48  MOV dword ptr [ESI + 0x48],ECX
004711ab  b001  MOV AL,0x1
004711ad  5e  POP ESI
004711ae  c3  RET

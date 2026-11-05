# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotTerrain_HasAnyPaintAtSample(void * this, uint x, uint z)
Owned ranges: [[00aea6f0, 00aea72e] [00aea730, 00aea79e]]

00aea6f0  83ec08  SUB ESP,0x8
00aea6f3  8b5134  MOV EDX,dword ptr [ECX + 0x34]
00aea6f6  2b5130  SUB EDX,dword ptr [ECX + 0x30]
00aea6f9  b8abaaaa2a  MOV EAX,0x2aaaaaab
00aea6fe  f7ea  IMUL EDX
00aea700  53  PUSH EBX
00aea701  55  PUSH EBP
00aea702  c1fa02  SAR EDX,0x2
00aea705  8bea  MOV EBP,EDX
00aea707  c1ed1f  SHR EBP,0x1f
00aea70a  03ea  ADD EBP,EDX
00aea70c  56  PUSH ESI
00aea70d  57  PUSH EDI
00aea70e  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00aea716  746f  JZ 0x00aea787
00aea718  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00aea71c  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00aea720  8b7960  MOV EDI,dword ptr [ECX + 0x60]
00aea723  c1fa02  SAR EDX,0x2
00aea726  c1fe02  SAR ESI,0x2
00aea729  89742414  MOV dword ptr [ESP + 0x14],ESI
00aea72d  eb05  JMP 0x00aea734
00aea72f  90  .byte 90 ; NONOWNED envelope gap bytes
00aea730  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00aea734  8b0f  MOV ECX,dword ptr [EDI]
00aea736  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00aea739  0fafc2  IMUL EAX,EDX
00aea73c  03c6  ADD EAX,ESI
00aea73e  8b7130  MOV ESI,dword ptr [ECX + 0x30]
00aea741  0fb73446  MOVZX ESI,word ptr [ESI + EAX*0x2]
00aea745  8bde  MOV EBX,ESI
00aea747  c1eb0f  SHR EBX,0xf
00aea74a  f6c301  TEST BL,0x1
00aea74d  7405  JZ 0x00aea754
00aea74f  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00aea752  eb1a  JMP 0x00aea76e
00aea754  8b4920  MOV ECX,dword ptr [ECX + 0x20]
00aea757  0fb7c6  MOVZX EAX,SI
00aea75a  8b742420  MOV ESI,dword ptr [ESP + 0x20]
00aea75e  83e603  AND ESI,0x3
00aea761  8d0486  LEA EAX,[ESI + EAX*0x4]
00aea764  8d0c81  LEA ECX,[ECX + EAX*0x4]
00aea767  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00aea76b  83e003  AND EAX,0x3
00aea76e  03c8  ADD ECX,EAX
00aea770  803900  CMP byte ptr [ECX],0x0
00aea773  771e  JA 0x00aea793
00aea775  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00aea779  83c001  ADD EAX,0x1
00aea77c  83c704  ADD EDI,0x4
00aea77f  3bc5  CMP EAX,EBP
00aea781  89442410  MOV dword ptr [ESP + 0x10],EAX
00aea785  72a9  JC 0x00aea730
00aea787  5f  POP EDI
00aea788  5e  POP ESI
00aea789  5d  POP EBP
00aea78a  32c0  XOR AL,AL
00aea78c  5b  POP EBX
00aea78d  83c408  ADD ESP,0x8
00aea790  c20800  RET 0x8
00aea793  5f  POP EDI
00aea794  5e  POP ESI
00aea795  5d  POP EBP
00aea796  b001  MOV AL,0x1
00aea798  5b  POP EBX
00aea799  83c408  ADD ESP,0x8
00aea79c  c20800  RET 0x8

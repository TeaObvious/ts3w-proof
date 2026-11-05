# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Vector16_ResizeCount(void * this, uint param_1)
Owned ranges: [[007b7d40, 007b7d8e]]

007b7d40  55  PUSH EBP
007b7d41  8bec  MOV EBP,ESP
007b7d43  83e4f0  AND ESP,0xfffffff0
007b7d46  8b11  MOV EDX,dword ptr [ECX]
007b7d48  8b4508  MOV EAX,dword ptr [EBP + 0x8]
007b7d4b  83ec18  SUB ESP,0x18
007b7d4e  56  PUSH ESI
007b7d4f  8b7104  MOV ESI,dword ptr [ECX + 0x4]
007b7d52  57  PUSH EDI
007b7d53  8bfe  MOV EDI,ESI
007b7d55  2bfa  SUB EDI,EDX
007b7d57  c1ff04  SAR EDI,0x4
007b7d5a  3bc7  CMP EAX,EDI
007b7d5c  761d  JBE 0x007b7d7b
007b7d5e  8d7c2410  LEA EDI,[ESP + 0x10]
007b7d62  57  PUSH EDI
007b7d63  8bfe  MOV EDI,ESI
007b7d65  2bfa  SUB EDI,EDX
007b7d67  c1ff04  SAR EDI,0x4
007b7d6a  2bc7  SUB EAX,EDI
007b7d6c  50  PUSH EAX
007b7d6d  56  PUSH ESI
007b7d6e  e87d7fe1ff  CALL 0x005cfcf0
007b7d73  5f  POP EDI
007b7d74  5e  POP ESI
007b7d75  8be5  MOV ESP,EBP
007b7d77  5d  POP EBP
007b7d78  c20400  RET 0x4
007b7d7b  c1e004  SHL EAX,0x4
007b7d7e  56  PUSH ESI
007b7d7f  03c2  ADD EAX,EDX
007b7d81  50  PUSH EAX
007b7d82  e8c969f8ff  CALL 0x0073e750
007b7d87  5f  POP EDI
007b7d88  5e  POP ESI
007b7d89  8be5  MOV ESP,EBP
007b7d8b  5d  POP EBP
007b7d8c  c20400  RET 0x4

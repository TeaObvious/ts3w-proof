# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00c59ab0, 00c59b05] [00c59b10, 00c59b86]]
Actual pseudocode: 00C59AB0_WallRender_AdvanceQueuedStateAndMaterialReadiness.c
; Actual plate: Analyst PC1.67 Physical ECX wall-render owner, no stack arguments, plain RET on owner+0C inactive exit; active path ends in actual TAIL JMP C51720 at C59B80 with unchanged ECX. It calls C597A0, conditionally C58300, then C580F0; drains owner+240..244 actual12-byte rows through C4EE70, passing row+0 DWORD, MOVZX unsigned16-bit row+4, literal0 and row+8 DWORD, then resets end to begin. Existing inferred short alias is not a sign-extension instruction: actual C59B1A is MOVZX. Selected +2C wall-mode, +8 child and +358 predicate/refresh operations precede the tail jump. Actual queued-row meaning, upstream edit/frame scheduling and deeper child geometry are separate boundaries. This body has no2/24ms budget, guaranteed3-frame completion or unconditional foreground priority contract.

00c59ab0  56  PUSH ESI
00c59ab1  8bf1  MOV ESI,ECX
00c59ab3  807e0c00  CMP byte ptr [ESI + 0xc],0x0
00c59ab7  0f84c8000000  JZ 0x00c59b85
00c59abd  e8defcffff  CALL 0x00c597a0
00c59ac2  807e2500  CMP byte ptr [ESI + 0x25],0x0
00c59ac6  7407  JZ 0x00c59acf
00c59ac8  8bce  MOV ECX,ESI
00c59aca  e831e8ffff  CALL 0x00c58300
00c59acf  8bce  MOV ECX,ESI
00c59ad1  e81ae6ffff  CALL 0x00c580f0
00c59ad6  8b8640020000  MOV EAX,dword ptr [ESI + 0x240]
00c59adc  3b8644020000  CMP EAX,dword ptr [ESI + 0x244]
00c59ae2  7461  JZ 0x00c59b45
00c59ae4  8b8e44020000  MOV ECX,dword ptr [ESI + 0x244]
00c59aea  2bc8  SUB ECX,EAX
00c59aec  b8abaaaa2a  MOV EAX,0x2aaaaaab
00c59af1  f7e9  IMUL ECX
00c59af3  d1fa  SAR EDX,0x1
00c59af5  8bc2  MOV EAX,EDX
00c59af7  c1e81f  SHR EAX,0x1f
00c59afa  03c2  ADD EAX,EDX
00c59afc  743b  JZ 0x00c59b39
00c59afe  53  PUSH EBX
00c59aff  57  PUSH EDI
00c59b00  33ff  XOR EDI,EDI
00c59b02  8bd8  MOV EBX,EAX
00c59b04  eb0a  JMP 0x00c59b10
00c59b06  8da424000000008d4900  GAP_BYTES (outside owned instruction ranges)
00c59b10  8b8640020000  MOV EAX,dword ptr [ESI + 0x240]
00c59b16  8b4c3808  MOV ECX,dword ptr [EAX + EDI*0x1 + 0x8]
00c59b1a  0fb7543804  MOVZX EDX,word ptr [EAX + EDI*0x1 + 0x4]
00c59b1f  03c7  ADD EAX,EDI
00c59b21  8b00  MOV EAX,dword ptr [EAX]
00c59b23  51  PUSH ECX
00c59b24  6a00  PUSH 0x0
00c59b26  52  PUSH EDX
00c59b27  50  PUSH EAX
00c59b28  8bce  MOV ECX,ESI
00c59b2a  e84153ffff  CALL 0x00c4ee70
00c59b2f  83c70c  ADD EDI,0xc
00c59b32  83eb01  SUB EBX,0x1
00c59b35  75d9  JNZ 0x00c59b10
00c59b37  5f  POP EDI
00c59b38  5b  POP EBX
00c59b39  8b8e40020000  MOV ECX,dword ptr [ESI + 0x240]
00c59b3f  898e44020000  MOV dword ptr [ESI + 0x244],ECX
00c59b45  807e2c00  CMP byte ptr [ESI + 0x2c],0x0
00c59b49  7407  JZ 0x00c59b52
00c59b4b  8bce  MOV ECX,ESI
00c59b4d  e85e39ffff  CALL 0x00c4d4b0
00c59b52  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c59b55  85c9  TEST ECX,ECX
00c59b57  7405  JZ 0x00c59b5e
00c59b59  e8b2b3fdff  CALL 0x00c34f10
00c59b5e  80be5803000000  CMP byte ptr [ESI + 0x358],0x0
00c59b65  7416  JZ 0x00c59b7d
00c59b67  8d8e54030000  LEA ECX,[ESI + 0x354]
00c59b6d  e81ebffdff  CALL 0x00c35a90
00c59b72  84c0  TEST AL,AL
00c59b74  7507  JNZ 0x00c59b7d
00c59b76  8bce  MOV ECX,ESI
00c59b78  e893e6ffff  CALL 0x00c58210
00c59b7d  8bce  MOV ECX,ESI
00c59b7f  5e  POP ESI
00c59b80  e99b7bffff  JMP 0x00c51720
00c59b85  5e  POP ESI
00c59b86  c3  RET

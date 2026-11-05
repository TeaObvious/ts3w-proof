# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ModularStairsRenderer_AddOneStepBlock
Paired actual annotated Ghidra pseudocode: 00B29930_ModularStairsRenderer_AddOneStepBlock.c
Owned ranges: [[00b29930, 00b299bf]]
Envelope bytes=144

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00b29930  55  PUSH EBP
00b29931  8bec  MOV EBP,ESP
00b29933  83e4f0  AND ESP,0xfffffff0
00b29936  8b5520  MOV EDX,dword ptr [EBP + 0x20]
00b29939  d90584c20601  FLD float ptr [0x0106c284]
00b2993f  83ec28  SUB ESP,0x28
00b29942  56  PUSH ESI
00b29943  57  PUSH EDI
00b29944  6a01  PUSH 0x1
00b29946  8bf1  MOV ESI,ECX
00b29948  8d442414  LEA EAX,[ESP + 0x14]
00b2994c  50  PUSH EAX
00b2994d  8b4518  MOV EAX,dword ptr [EBP + 0x18]
00b29950  8d4c2428  LEA ECX,[ESP + 0x28]
00b29954  51  PUSH ECX
00b29955  8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
00b29958  52  PUSH EDX
00b29959  50  PUSH EAX
00b2995a  83ec08  SUB ESP,0x8
00b2995d  d95c2404  FSTP float ptr [ESP + 0x4]
00b29961  d9058cc20601  FLD float ptr [0x0106c28c]
00b29967  d91c24  FSTP float ptr [ESP]
00b2996a  51  PUSH ECX
00b2996b  8bce  MOV ECX,ESI
00b2996d  e84e97ffff  CALL 0x00b230c0
00b29972  8b7d14  MOV EDI,dword ptr [EBP + 0x14]
00b29975  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b2997b  6a01  PUSH 0x1
00b2997d  57  PUSH EDI
00b2997e  e84d4e1600  CALL 0x00c8e7d0
00b29983  8b5528  MOV EDX,dword ptr [EBP + 0x28]
00b29986  8b4d24  MOV ECX,dword ptr [EBP + 0x24]
00b29989  6a01  PUSH 0x1
00b2998b  52  PUSH EDX
00b2998c  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00b2998f  51  PUSH ECX
00b29990  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00b29993  6a00  PUSH 0x0
00b29995  52  PUSH EDX
00b29996  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00b29999  51  PUSH ECX
00b2999a  52  PUSH EDX
00b2999b  8d4c242c  LEA ECX,[ESP + 0x2c]
00b2999f  51  PUSH ECX
00b299a0  8d542440  LEA EDX,[ESP + 0x40]
00b299a4  52  PUSH EDX
00b299a5  83c710  ADD EDI,0x10
00b299a8  57  PUSH EDI
00b299a9  8bc8  MOV ECX,EAX
00b299ab  e820c51600  CALL 0x00c95ed0
00b299b0  50  PUSH EAX
00b299b1  8bce  MOV ECX,ESI
00b299b3  e818f2ffff  CALL 0x00b28bd0
00b299b8  5f  POP EDI
00b299b9  5e  POP ESI
00b299ba  8be5  MOV ESP,EBP
00b299bc  5d  POP EBP
00b299bd  c22400  RET 0x24
Owned instructions=58 owned bytes=144 nonowned bytes=0

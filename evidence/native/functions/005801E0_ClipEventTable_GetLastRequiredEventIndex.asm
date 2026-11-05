# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int ClipEventTable_GetLastRequiredEventIndex(int * param_1)
Owned ranges: [[005801e0, 0058022f]]

005801e0  837910fe  CMP dword ptr [ECX + 0x10],-0x2
005801e4  7546  JNZ 0x0058022c
005801e6  8b5104  MOV EDX,dword ptr [ECX + 0x4]
005801e9  56  PUSH ESI
005801ea  8b31  MOV ESI,dword ptr [ECX]
005801ec  2bd6  SUB EDX,ESI
005801ee  33c0  XOR EAX,EAX
005801f0  c1fa02  SAR EDX,0x2
005801f3  c74110ffffffff  MOV dword ptr [ECX + 0x10],0xffffffff
005801fa  742b  JZ 0x00580227
005801fc  8d642400  LEA ESP,[ESP]
00580200  833e00  CMP dword ptr [ESI],0x0
00580203  7410  JZ 0x00580215
00580205  8b16  MOV EDX,dword ptr [ESI]
00580207  8b521c  MOV EDX,dword ptr [EDX + 0x1c]
0058020a  83e204  AND EDX,0x4
0058020d  80fa04  CMP DL,0x4
00580210  7503  JNZ 0x00580215
00580212  894110  MOV dword ptr [ECX + 0x10],EAX
00580215  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00580218  2b11  SUB EDX,dword ptr [ECX]
0058021a  83c001  ADD EAX,0x1
0058021d  c1fa02  SAR EDX,0x2
00580220  83c604  ADD ESI,0x4
00580223  3bc2  CMP EAX,EDX
00580225  72d9  JC 0x00580200
00580227  8b4110  MOV EAX,dword ptr [ECX + 0x10]
0058022a  5e  POP ESI
0058022b  c3  RET
0058022c  8b4110  MOV EAX,dword ptr [ECX + 0x10]
0058022f  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8E8F0_PatternCatalog_CollectWallPresetPairs.c
Owned ranges: [[00c8e8f0, 00c8e9a9]]

00c8e8f0  55  PUSH EBP
00c8e8f1  8bec  MOV EBP,ESP
00c8e8f3  83e4f8  AND ESP,0xfffffff8
00c8e8f6  83ec14  SUB ESP,0x14
00c8e8f9  53  PUSH EBX
00c8e8fa  8b5958  MOV EBX,dword ptr [ECX + 0x58]
00c8e8fd  8b495c  MOV ECX,dword ptr [ECX + 0x5c]
00c8e900  3bd9  CMP EBX,ECX
00c8e902  56  PUSH ESI
00c8e903  57  PUSH EDI
00c8e904  895c240c  MOV dword ptr [ESP + 0xc],EBX
00c8e908  894c2414  MOV dword ptr [ESP + 0x14],ECX
00c8e90c  0f848f000000  JZ 0x00c8e9a1
00c8e912  8b7310  MOV ESI,dword ptr [EBX + 0x10]
00c8e915  85f6  TEST ESI,ESI
00c8e917  7477  JZ 0x00c8e990
00c8e919  8bce  MOV ECX,ESI
00c8e91b  e890b70000  CALL 0x00c9a0b0
00c8e920  33ff  XOR EDI,EDI
00c8e922  85c0  TEST EAX,EAX
00c8e924  89442410  MOV dword ptr [ESP + 0x10],EAX
00c8e928  7666  JBE 0x00c8e990
00c8e92a  8d9b00000000  LEA EBX,[EBX]
00c8e930  57  PUSH EDI
00c8e931  8bce  MOV ECX,ESI
00c8e933  e898b20000  CALL 0x00c99bd0
00c8e938  85c0  TEST EAX,EAX
00c8e93a  7505  JNZ 0x00c8e941
00c8e93c  b802000000  MOV EAX,0x2
00c8e941  854508  TEST dword ptr [EBP + 0x8],EAX
00c8e944  743d  JZ 0x00c8e983
00c8e946  57  PUSH EDI
00c8e947  8bce  MOV ECX,ESI
00c8e949  8974241c  MOV dword ptr [ESP + 0x1c],ESI
00c8e94d  e83eb50000  CALL 0x00c99e90
00c8e952  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c8e956  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c8e959  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00c8e95c  3b4808  CMP ECX,dword ptr [EAX + 0x8]
00c8e95f  7315  JNC 0x00c8e976
00c8e961  85c9  TEST ECX,ECX
00c8e963  8d5108  LEA EDX,[ECX + 0x8]
00c8e966  895004  MOV dword ptr [EAX + 0x4],EDX
00c8e969  7418  JZ 0x00c8e983
00c8e96b  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c8e96f  8931  MOV dword ptr [ECX],ESI
00c8e971  894104  MOV dword ptr [ECX + 0x4],EAX
00c8e974  eb0d  JMP 0x00c8e983
00c8e976  8d542418  LEA EDX,[ESP + 0x18]
00c8e97a  52  PUSH EDX
00c8e97b  51  PUSH ECX
00c8e97c  8bc8  MOV ECX,EAX
00c8e97e  e8bddb77ff  CALL 0x0040c540
00c8e983  83c701  ADD EDI,0x1
00c8e986  3b7c2410  CMP EDI,dword ptr [ESP + 0x10]
00c8e98a  72a4  JC 0x00c8e930
00c8e98c  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00c8e990  83c318  ADD EBX,0x18
00c8e993  3b5c2414  CMP EBX,dword ptr [ESP + 0x14]
00c8e997  895c240c  MOV dword ptr [ESP + 0xc],EBX
00c8e99b  0f8571ffffff  JNZ 0x00c8e912
00c8e9a1  5f  POP EDI
00c8e9a2  5e  POP ESI
00c8e9a3  5b  POP EBX
00c8e9a4  8be5  MOV ESP,EBP
00c8e9a6  5d  POP EBP
00c8e9a7  c20800  RET 0x8

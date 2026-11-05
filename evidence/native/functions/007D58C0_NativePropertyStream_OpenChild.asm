# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_OpenChild
Paired actual annotated Ghidra pseudocode: 007D58C0_NativePropertyStream_OpenChild.c
Owned ranges: [[007d58c0, 007d59a5]]
Envelope bytes=230

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d58c0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d58c4  53  PUSH EBX
007d58c5  55  PUSH EBP
007d58c6  56  PUSH ESI
007d58c7  57  PUSH EDI
007d58c8  35955af7ff  XOR EAX,0xfff75a95
007d58cd  50  PUSH EAX
007d58ce  8be9  MOV EBP,ECX
007d58d0  e88bf8ffff  CALL 0x007d5160
007d58d5  84c0  TEST AL,AL
007d58d7  0f84c0000000  JZ 0x007d599d
007d58dd  33ff  XOR EDI,EDI
007d58df  57  PUSH EDI
007d58e0  57  PUSH EDI
007d58e1  57  PUSH EDI
007d58e2  57  PUSH EDI
007d58e3  6814b30101  PUSH 0x101b314
007d58e8  6a34  PUSH 0x34
007d58ea  e811ecd0ff  CALL 0x004e4500
007d58ef  8bf0  MOV ESI,EAX
007d58f1  83c418  ADD ESP,0x18
007d58f4  3bf7  CMP ESI,EDI
007d58f6  0f84a1000000  JZ 0x007d599d
007d58fc  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
007d5904  897e04  MOV dword ptr [ESI + 0x4],EDI
007d5907  c706e8b20101  MOV dword ptr [ESI],0x101b2e8
007d590d  897e08  MOV dword ptr [ESI + 0x8],EDI
007d5910  83c8ff  OR EAX,0xffffffff
007d5913  89460c  MOV dword ptr [ESI + 0xc],EAX
007d5916  894610  MOV dword ptr [ESI + 0x10],EAX
007d5919  f30f114624  MOVSS dword ptr [ESI + 0x24],XMM0
007d591e  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
007d5926  f30f114628  MOVSS dword ptr [ESI + 0x28],XMM0
007d592b  c74630ecb20101  MOV dword ptr [ESI + 0x30],0x101b2ec
007d5932  bb01000000  MOV EBX,0x1
007d5937  895e1c  MOV dword ptr [ESI + 0x1c],EBX
007d593a  c7461800d91401  MOV dword ptr [ESI + 0x18],0x114d900
007d5941  897e20  MOV dword ptr [ESI + 0x20],EDI
007d5944  897e2c  MOV dword ptr [ESI + 0x2c],EDI
007d5947  015e04  ADD dword ptr [ESI + 0x4],EBX
007d594a  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
007d594d  51  PUSH ECX
007d594e  8bce  MOV ECX,ESI
007d5950  e81bfeffff  CALL 0x007d5770
007d5955  84c0  TEST AL,AL
007d5957  742b  JZ 0x007d5984
007d5959  015e04  ADD dword ptr [ESI + 0x4],EBX
007d595c  8b542418  MOV EDX,dword ptr [ESP + 0x18]
007d5960  8932  MOV dword ptr [EDX],ESI
007d5962  8b4604  MOV EAX,dword ptr [ESI + 0x4]
007d5965  83c0ff  ADD EAX,-0x1
007d5968  3bc7  CMP EAX,EDI
007d596a  894604  MOV dword ptr [ESI + 0x4],EAX
007d596d  750c  JNZ 0x007d597b
007d596f  895e04  MOV dword ptr [ESI + 0x4],EBX
007d5972  8b06  MOV EAX,dword ptr [ESI]
007d5974  8b10  MOV EDX,dword ptr [EAX]
007d5976  53  PUSH EBX
007d5977  8bce  MOV ECX,ESI
007d5979  ffd2  CALL EDX
007d597b  5f  POP EDI
007d597c  5e  POP ESI
007d597d  5d  POP EBP
007d597e  8ac3  MOV AL,BL
007d5980  5b  POP EBX
007d5981  c20800  RET 0x8
007d5984  8b4604  MOV EAX,dword ptr [ESI + 0x4]
007d5987  83c0ff  ADD EAX,-0x1
007d598a  3bc7  CMP EAX,EDI
007d598c  894604  MOV dword ptr [ESI + 0x4],EAX
007d598f  750c  JNZ 0x007d599d
007d5991  895e04  MOV dword ptr [ESI + 0x4],EBX
007d5994  8b06  MOV EAX,dword ptr [ESI]
007d5996  8b10  MOV EDX,dword ptr [EAX]
007d5998  53  PUSH EBX
007d5999  8bce  MOV ECX,ESI
007d599b  ffd2  CALL EDX
007d599d  5f  POP EDI
007d599e  5e  POP ESI
007d599f  5d  POP EBP
007d59a0  32c0  XOR AL,AL
007d59a2  5b  POP EBX
007d59a3  c20800  RET 0x8
Owned instructions=83 owned bytes=230 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void FireplaceGroups_WriteDirectGroup(pointer group, pointer context)
Owned ranges: [[00a756f0, 00a75756]]

00a756f0  53  PUSH EBX
00a756f1  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00a756f5  8b03  MOV EAX,dword ptr [EBX]
00a756f7  56  PUSH ESI
00a756f8  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00a756fc  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a756ff  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a75702  57  PUSH EDI
00a75703  51  PUSH ECX
00a75704  50  PUSH EAX
00a75705  52  PUSH EDX
00a75706  e86588a6ff  CALL 0x004ddf70
00a7570b  83c40c  ADD ESP,0xc
00a7570e  8bce  MOV ECX,ESI
00a75710  50  PUSH EAX
00a75711  e8da22d6ff  CALL 0x007d79f0
00a75716  8b7b08  MOV EDI,dword ptr [EBX + 0x8]
00a75719  2b7b04  SUB EDI,dword ptr [EBX + 0x4]
00a7571c  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a7571f  c1ff03  SAR EDI,0x3
00a75722  57  PUSH EDI
00a75723  50  PUSH EAX
00a75724  e80787a6ff  CALL 0x004dde30
00a75729  83c408  ADD ESP,0x8
00a7572c  8bce  MOV ECX,ESI
00a7572e  50  PUSH EAX
00a7572f  e8bc22d6ff  CALL 0x007d79f0
00a75734  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a75737  8b5b04  MOV EBX,dword ptr [EBX + 0x4]
00a7573a  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a7573d  51  PUSH ECX
00a7573e  57  PUSH EDI
00a7573f  53  PUSH EBX
00a75740  52  PUSH EDX
00a75741  e8ba89a6ff  CALL 0x004de100
00a75746  83c410  ADD ESP,0x10
00a75749  8bce  MOV ECX,ESI
00a7574b  50  PUSH EAX
00a7574c  e89f22d6ff  CALL 0x007d79f0
00a75751  5f  POP EDI
00a75752  5e  POP ESI
00a75753  5b  POP EBX
00a75754  c20800  RET 0x8

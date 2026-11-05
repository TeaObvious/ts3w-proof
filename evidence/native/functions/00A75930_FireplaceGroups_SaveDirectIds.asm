# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FireplaceGroups_SaveDirectIds(void * this, pointer context, ulonglong lotId, uint group)
Owned ranges: [[00a75930, 00a759d7]]

00a75930  83ec1c  SUB ESP,0x1c
00a75933  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00a75937  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00a7593b  56  PUSH ESI
00a7593c  8b742424  MOV ESI,dword ptr [ESP + 0x24]
00a75940  57  PUSH EDI
00a75941  8bf9  MOV EDI,ECX
00a75943  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00a75947  89442414  MOV dword ptr [ESP + 0x14],EAX
00a7594b  6a01  PUSH 0x1
00a7594d  8d442418  LEA EAX,[ESP + 0x18]
00a75951  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00a75955  50  PUSH EAX
00a75956  8bce  MOV ECX,ESI
00a75958  c7442424cc6bf604  MOV dword ptr [ESP + 0x24],0x4f66bcc
00a75960  89542428  MOV dword ptr [ESP + 0x28],EDX
00a75964  e8572bd6ff  CALL 0x007d84c0
00a75969  84c0  TEST AL,AL
00a7596b  7460  JZ 0x00a759cd
00a7596d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a75970  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a75973  51  PUSH ECX
00a75974  6a01  PUSH 0x1
00a75976  52  PUSH EDX
00a75977  e8f485a6ff  CALL 0x004ddf70
00a7597c  83c40c  ADD ESP,0xc
00a7597f  8bce  MOV ECX,ESI
00a75981  50  PUSH EAX
00a75982  e86920d6ff  CALL 0x007d79f0
00a75987  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a7598a  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00a7598d  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a75990  51  PUSH ECX
00a75991  50  PUSH EAX
00a75992  52  PUSH EDX
00a75993  e8d885a6ff  CALL 0x004ddf70
00a75998  83c40c  ADD ESP,0xc
00a7599b  8bce  MOV ECX,ESI
00a7599d  50  PUSH EAX
00a7599e  e84d20d6ff  CALL 0x007d79f0
00a759a3  83ec0c  SUB ESP,0xc
00a759a6  8bc4  MOV EAX,ESP
00a759a8  8938  MOV dword ptr [EAX],EDI
00a759aa  b9f056a700  MOV ECX,0xa756f0
00a759af  894804  MOV dword ptr [EAX + 0x4],ECX
00a759b2  897008  MOV dword ptr [EAX + 0x8],ESI
00a759b5  83c704  ADD EDI,0x4
00a759b8  8d442414  LEA EAX,[ESP + 0x14]
00a759bc  57  PUSH EDI
00a759bd  50  PUSH EAX
00a759be  e85dfeffff  CALL 0x00a75820
00a759c3  83c414  ADD ESP,0x14
00a759c6  8bce  MOV ECX,ESI
00a759c8  e8a320d6ff  CALL 0x007d7a70
00a759cd  8a4614  MOV AL,byte ptr [ESI + 0x14]
00a759d0  5f  POP EDI
00a759d1  5e  POP ESI
00a759d2  83c41c  ADD ESP,0x1c
00a759d5  c21000  RET 0x10

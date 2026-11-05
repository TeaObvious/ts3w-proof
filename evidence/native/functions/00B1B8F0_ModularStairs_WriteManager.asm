# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ModularStairs_WriteManager
Paired actual annotated Ghidra pseudocode: 00B1B8F0_ModularStairs_WriteManager.c
Owned ranges: [[00b1b8f0, 00b1ba83]]
Envelope bytes=404

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b1b8f0  83ec10  SUB ESP,0x10
00b1b8f3  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00b1b8f7  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00b1b8fb  53  PUSH EBX
00b1b8fc  56  PUSH ESI
00b1b8fd  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00b1b901  8bd9  MOV EBX,ECX
00b1b903  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00b1b907  89442408  MOV dword ptr [ESP + 0x8],EAX
00b1b90b  6a01  PUSH 0x1
00b1b90d  8d44240c  LEA EAX,[ESP + 0xc]
00b1b911  894c2410  MOV dword ptr [ESP + 0x10],ECX
00b1b915  50  PUSH EAX
00b1b916  8bce  MOV ECX,ESI
00b1b918  c74424188392a004  MOV dword ptr [ESP + 0x18],0x4a09283
00b1b920  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00b1b924  e897cbcbff  CALL 0x007d84c0
00b1b929  84c0  TEST AL,AL
00b1b92b  0f8448010000  JZ 0x00b1ba79
00b1b931  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1b934  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1b937  55  PUSH EBP
00b1b938  57  PUSH EDI
00b1b939  51  PUSH ECX
00b1b93a  6a06  PUSH 0x6
00b1b93c  52  PUSH EDX
00b1b93d  e82e269cff  CALL 0x004ddf70
00b1b942  83c40c  ADD ESP,0xc
00b1b945  8bce  MOV ECX,ESI
00b1b947  50  PUSH EAX
00b1b948  e8a3c0cbff  CALL 0x007d79f0
00b1b94d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1b950  8b4328  MOV EAX,dword ptr [EBX + 0x28]
00b1b953  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1b956  51  PUSH ECX
00b1b957  50  PUSH EAX
00b1b958  52  PUSH EDX
00b1b959  e812269cff  CALL 0x004ddf70
00b1b95e  83c40c  ADD ESP,0xc
00b1b961  8bce  MOV ECX,ESI
00b1b963  50  PUSH EAX
00b1b964  e887c0cbff  CALL 0x007d79f0
00b1b969  8b4320  MOV EAX,dword ptr [EBX + 0x20]
00b1b96c  8b38  MOV EDI,dword ptr [EAX]
00b1b96e  85ff  TEST EDI,EDI
00b1b970  7518  JNZ 0x00b1b98a
00b1b972  83c004  ADD EAX,0x4
00b1b975  3938  CMP dword ptr [EAX],EDI
00b1b977  750f  JNZ 0x00b1b988
00b1b979  8da42400000000  LEA ESP,[ESP]
00b1b980  83c004  ADD EAX,0x4
00b1b983  833800  CMP dword ptr [EAX],0x0
00b1b986  74f8  JZ 0x00b1b980
00b1b988  8b38  MOV EDI,dword ptr [EAX]
00b1b98a  8b4b20  MOV ECX,dword ptr [EBX + 0x20]
00b1b98d  8be8  MOV EBP,EAX
00b1b98f  8b4324  MOV EAX,dword ptr [EBX + 0x24]
00b1b992  8b0481  MOV EAX,dword ptr [ECX + EAX*0x4]
00b1b995  3bf8  CMP EDI,EAX
00b1b997  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00b1b99b  742b  JZ 0x00b1b9c8
00b1b99d  8d4900  LEA ECX,[ECX]
00b1b9a0  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00b1b9a4  57  PUSH EDI
00b1b9a5  52  PUSH EDX
00b1b9a6  56  PUSH ESI
00b1b9a7  8bcb  MOV ECX,EBX
00b1b9a9  e8a2f1ffff  CALL 0x00b1ab50
00b1b9ae  8bbf80000000  MOV EDI,dword ptr [EDI + 0x80]
00b1b9b4  85ff  TEST EDI,EDI
00b1b9b6  750a  JNZ 0x00b1b9c2
00b1b9b8  8b7d04  MOV EDI,dword ptr [EBP + 0x4]
00b1b9bb  83c504  ADD EBP,0x4
00b1b9be  85ff  TEST EDI,EDI
00b1b9c0  74f6  JZ 0x00b1b9b8
00b1b9c2  3b7c242c  CMP EDI,dword ptr [ESP + 0x2c]
00b1b9c6  75d8  JNZ 0x00b1b9a0
00b1b9c8  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1b9cb  8b83c8000000  MOV EAX,dword ptr [EBX + 0xc8]
00b1b9d1  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1b9d4  51  PUSH ECX
00b1b9d5  50  PUSH EAX
00b1b9d6  52  PUSH EDX
00b1b9d7  e894259cff  CALL 0x004ddf70
00b1b9dc  83c40c  ADD ESP,0xc
00b1b9df  8bce  MOV ECX,ESI
00b1b9e1  50  PUSH EAX
00b1b9e2  e809c0cbff  CALL 0x007d79f0
00b1b9e7  8b83c0000000  MOV EAX,dword ptr [EBX + 0xc0]
00b1b9ed  8b38  MOV EDI,dword ptr [EAX]
00b1b9ef  85ff  TEST EDI,EDI
00b1b9f1  7517  JNZ 0x00b1ba0a
00b1b9f3  83c004  ADD EAX,0x4
00b1b9f6  3938  CMP dword ptr [EAX],EDI
00b1b9f8  750e  JNZ 0x00b1ba08
00b1b9fa  8d9b00000000  LEA EBX,[EBX]
00b1ba00  83c004  ADD EAX,0x4
00b1ba03  833800  CMP dword ptr [EAX],0x0
00b1ba06  74f8  JZ 0x00b1ba00
00b1ba08  8b38  MOV EDI,dword ptr [EAX]
00b1ba0a  8b8bc0000000  MOV ECX,dword ptr [EBX + 0xc0]
00b1ba10  8be8  MOV EBP,EAX
00b1ba12  8b83c4000000  MOV EAX,dword ptr [EBX + 0xc4]
00b1ba18  8b1c81  MOV EBX,dword ptr [ECX + EAX*0x4]
00b1ba1b  3bfb  CMP EDI,EBX
00b1ba1d  7451  JZ 0x00b1ba70
00b1ba1f  90  NOP
00b1ba20  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00b1ba23  8b07  MOV EAX,dword ptr [EDI]
00b1ba25  52  PUSH EDX
00b1ba26  50  PUSH EAX
00b1ba27  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b1ba2a  50  PUSH EAX
00b1ba2b  e840259cff  CALL 0x004ddf70
00b1ba30  83c40c  ADD ESP,0xc
00b1ba33  8bce  MOV ECX,ESI
00b1ba35  50  PUSH EAX
00b1ba36  e8b5bfcbff  CALL 0x007d79f0
00b1ba3b  8a4f04  MOV CL,byte ptr [EDI + 0x4]
00b1ba3e  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b1ba41  884c2434  MOV byte ptr [ESP + 0x34],CL
00b1ba45  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00b1ba49  52  PUSH EDX
00b1ba4a  50  PUSH EAX
00b1ba4b  e8b0239cff  CALL 0x004dde00
00b1ba50  83c408  ADD ESP,0x8
00b1ba53  8bce  MOV ECX,ESI
00b1ba55  50  PUSH EAX
00b1ba56  e895bfcbff  CALL 0x007d79f0
00b1ba5b  8b7f08  MOV EDI,dword ptr [EDI + 0x8]
00b1ba5e  85ff  TEST EDI,EDI
00b1ba60  750a  JNZ 0x00b1ba6c
00b1ba62  8b7d04  MOV EDI,dword ptr [EBP + 0x4]
00b1ba65  83c504  ADD EBP,0x4
00b1ba68  85ff  TEST EDI,EDI
00b1ba6a  74f6  JZ 0x00b1ba62
00b1ba6c  3bfb  CMP EDI,EBX
00b1ba6e  75b0  JNZ 0x00b1ba20
00b1ba70  8bce  MOV ECX,ESI
00b1ba72  e8f9bfcbff  CALL 0x007d7a70
00b1ba77  5f  POP EDI
00b1ba78  5d  POP EBP
00b1ba79  8a4614  MOV AL,byte ptr [ESI + 0x14]
00b1ba7c  5e  POP ESI
00b1ba7d  5b  POP EBX
00b1ba7e  83c410  ADD ESP,0x10
00b1ba81  c21400  RET 0x14
Owned instructions=147 owned bytes=404 gap/nonowned bytes=0

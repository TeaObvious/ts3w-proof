# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ResourceReferences_WriteRegisteredContextKey
Paired actual annotated Ghidra pseudocode: 007D74F0_ResourceReferences_WriteRegisteredContextKey.c
Owned ranges: [[007d74f0, 007d75f3]]
Envelope bytes=260

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d74f0  83ec24  SUB ESP,0x24
007d74f3  55  PUSH EBP
007d74f4  56  PUSH ESI
007d74f5  57  PUSH EDI
007d74f6  8b7c2438  MOV EDI,dword ptr [ESP + 0x38]
007d74fa  8d44240c  LEA EAX,[ESP + 0xc]
007d74fe  57  PUSH EDI
007d74ff  50  PUSH EAX
007d7500  8bf1  MOV ESI,ECX
007d7502  e8d964e1ff  CALL 0x005ed9e0
007d7507  80be8200000000  CMP byte ptr [ESI + 0x82],0x0
007d750e  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d7511  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007d7514  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007d7518  746d  JZ 0x007d7587
007d751a  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
007d751d  7405  JZ 0x007d7524
007d751f  8b6810  MOV EBP,dword ptr [EAX + 0x10]
007d7522  eb3d  JMP 0x007d7561
007d7524  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
007d7527  8b07  MOV EAX,dword ptr [EDI]
007d7529  8b5708  MOV EDX,dword ptr [EDI + 0x8]
007d752c  8b6e0c  MOV EBP,dword ptr [ESI + 0xc]
007d752f  894c241c  MOV dword ptr [ESP + 0x1c],ECX
007d7533  89442418  MOV dword ptr [ESP + 0x18],EAX
007d7537  8b470c  MOV EAX,dword ptr [EDI + 0xc]
007d753a  c644243800  MOV byte ptr [ESP + 0x38],0x0
007d753f  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
007d7543  51  PUSH ECX
007d7544  89542424  MOV dword ptr [ESP + 0x24],EDX
007d7548  8d54241c  LEA EDX,[ESP + 0x1c]
007d754c  89442428  MOV dword ptr [ESP + 0x28],EAX
007d7550  52  PUSH EDX
007d7551  8d442414  LEA EAX,[ESP + 0x14]
007d7555  50  PUSH EAX
007d7556  8bce  MOV ECX,ESI
007d7558  896c2434  MOV dword ptr [ESP + 0x34],EBP
007d755c  e82f93f2ff  CALL 0x00700890
007d7561  8b742434  MOV ESI,dword ptr [ESP + 0x34]
007d7565  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d7568  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d756b  51  PUSH ECX
007d756c  55  PUSH EBP
007d756d  52  PUSH EDX
007d756e  e8fd69d0ff  CALL 0x004ddf70
007d7573  83c40c  ADD ESP,0xc
007d7576  8bce  MOV ECX,ESI
007d7578  50  PUSH EAX
007d7579  e872040000  CALL 0x007d79f0
007d757e  5f  POP EDI
007d757f  5e  POP ESI
007d7580  5d  POP EBP
007d7581  83c424  ADD ESP,0x24
007d7584  c20800  RET 0x8
007d7587  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
007d758a  7405  JZ 0x007d7591
007d758c  8b6810  MOV EBP,dword ptr [EAX + 0x10]
007d758f  eb3d  JMP 0x007d75ce
007d7591  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
007d7594  8b07  MOV EAX,dword ptr [EDI]
007d7596  8b5708  MOV EDX,dword ptr [EDI + 0x8]
007d7599  8b6e0c  MOV EBP,dword ptr [ESI + 0xc]
007d759c  894c241c  MOV dword ptr [ESP + 0x1c],ECX
007d75a0  89442418  MOV dword ptr [ESP + 0x18],EAX
007d75a4  8b470c  MOV EAX,dword ptr [EDI + 0xc]
007d75a7  c644243800  MOV byte ptr [ESP + 0x38],0x0
007d75ac  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
007d75b0  51  PUSH ECX
007d75b1  89542424  MOV dword ptr [ESP + 0x24],EDX
007d75b5  8d54241c  LEA EDX,[ESP + 0x1c]
007d75b9  89442428  MOV dword ptr [ESP + 0x28],EAX
007d75bd  52  PUSH EDX
007d75be  8d442414  LEA EAX,[ESP + 0x14]
007d75c2  50  PUSH EAX
007d75c3  8bce  MOV ECX,ESI
007d75c5  896c2434  MOV dword ptr [ESP + 0x34],EBP
007d75c9  e8c292f2ff  CALL 0x00700890
007d75ce  8b742434  MOV ESI,dword ptr [ESP + 0x34]
007d75d2  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d75d5  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d75d8  51  PUSH ECX
007d75d9  55  PUSH EBP
007d75da  52  PUSH EDX
007d75db  e89068d0ff  CALL 0x004dde70
007d75e0  83c40c  ADD ESP,0xc
007d75e3  8bce  MOV ECX,ESI
007d75e5  50  PUSH EAX
007d75e6  e805040000  CALL 0x007d79f0
007d75eb  5f  POP EDI
007d75ec  5e  POP ESI
007d75ed  5d  POP EBP
007d75ee  83c424  ADD ESP,0x24
007d75f1  c20800  RET 0x8
Owned instructions=93 owned bytes=260 gap/nonowned bytes=0

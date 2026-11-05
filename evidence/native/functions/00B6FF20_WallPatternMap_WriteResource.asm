# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallPatternMap_WriteResource
Paired actual annotated Ghidra pseudocode: 00B6FF20_WallPatternMap_WriteResource.c
Owned ranges: [[00b6ff20, 00b70079]]
Envelope bytes=346

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b6ff20  83ec10  SUB ESP,0x10
00b6ff23  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00b6ff27  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00b6ff2b  55  PUSH EBP
00b6ff2c  56  PUSH ESI
00b6ff2d  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00b6ff31  8be9  MOV EBP,ECX
00b6ff33  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00b6ff37  89442408  MOV dword ptr [ESP + 0x8],EAX
00b6ff3b  6a01  PUSH 0x1
00b6ff3d  8d44240c  LEA EAX,[ESP + 0xc]
00b6ff41  894c2410  MOV dword ptr [ESP + 0x10],ECX
00b6ff45  50  PUSH EAX
00b6ff46  8bce  MOV ECX,ESI
00b6ff48  c7442418125e2ef1  MOV dword ptr [ESP + 0x18],0xf12e5e12
00b6ff50  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00b6ff54  e86785c6ff  CALL 0x007d84c0
00b6ff59  84c0  TEST AL,AL
00b6ff5b  0f840f010000  JZ 0x00b70070
00b6ff61  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b6ff64  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b6ff67  53  PUSH EBX
00b6ff68  57  PUSH EDI
00b6ff69  51  PUSH ECX
00b6ff6a  6a02  PUSH 0x2
00b6ff6c  52  PUSH EDX
00b6ff6d  e8fedf96ff  CALL 0x004ddf70
00b6ff72  83c40c  ADD ESP,0xc
00b6ff75  8bce  MOV ECX,ESI
00b6ff77  50  PUSH EAX
00b6ff78  e8737ac6ff  CALL 0x007d79f0
00b6ff7d  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00b6ff80  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b6ff83  50  PUSH EAX
00b6ff84  8d4d40  LEA ECX,[EBP + 0x40]
00b6ff87  51  PUSH ECX
00b6ff88  52  PUSH EDX
00b6ff89  e88277c6ff  CALL 0x007d7710
00b6ff8e  83c40c  ADD ESP,0xc
00b6ff91  8bce  MOV ECX,ESI
00b6ff93  50  PUSH EAX
00b6ff94  e8577ac6ff  CALL 0x007d79f0
00b6ff99  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b6ff9c  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00b6ff9f  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b6ffa2  51  PUSH ECX
00b6ffa3  50  PUSH EAX
00b6ffa4  52  PUSH EDX
00b6ffa5  e8c6df96ff  CALL 0x004ddf70
00b6ffaa  83c40c  ADD ESP,0xc
00b6ffad  8bce  MOV ECX,ESI
00b6ffaf  50  PUSH EAX
00b6ffb0  e83b7ac6ff  CALL 0x007d79f0
00b6ffb5  8b4504  MOV EAX,dword ptr [EBP + 0x4]
00b6ffb8  8b38  MOV EDI,dword ptr [EAX]
00b6ffba  85ff  TEST EDI,EDI
00b6ffbc  8bd8  MOV EBX,EAX
00b6ffbe  7512  JNZ 0x00b6ffd2
00b6ffc0  397804  CMP dword ptr [EAX + 0x4],EDI
00b6ffc3  8d5804  LEA EBX,[EAX + 0x4]
00b6ffc6  7508  JNZ 0x00b6ffd0
00b6ffc8  83c304  ADD EBX,0x4
00b6ffcb  833b00  CMP dword ptr [EBX],0x0
00b6ffce  74f8  JZ 0x00b6ffc8
00b6ffd0  8b3b  MOV EDI,dword ptr [EBX]
00b6ffd2  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00b6ffd5  3b3c88  CMP EDI,dword ptr [EAX + ECX*0x4]
00b6ffd8  0f847e000000  JZ 0x00b7005c
00b6ffde  8bff  MOV EDI,EDI
00b6ffe0  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00b6ffe4  6a00  PUSH 0x0
00b6ffe6  57  PUSH EDI
00b6ffe7  e87474c6ff  CALL 0x007d7460
00b6ffec  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00b6ffef  0fb7c0  MOVZX EAX,AX
00b6fff2  52  PUSH EDX
00b6fff3  50  PUSH EAX
00b6fff4  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b6fff7  50  PUSH EAX
00b6fff8  e873de96ff  CALL 0x004dde70
00b6fffd  83c40c  ADD ESP,0xc
00b70000  8bce  MOV ECX,ESI
00b70002  50  PUSH EAX
00b70003  e8e879c6ff  CALL 0x007d79f0
00b70008  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b7000b  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00b7000e  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b70011  51  PUSH ECX
00b70012  50  PUSH EAX
00b70013  52  PUSH EDX
00b70014  e857df96ff  CALL 0x004ddf70
00b70019  83c40c  ADD ESP,0xc
00b7001c  8bce  MOV ECX,ESI
00b7001e  50  PUSH EAX
00b7001f  e8cc79c6ff  CALL 0x007d79f0
00b70024  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b70027  8b4714  MOV EAX,dword ptr [EDI + 0x14]
00b7002a  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b7002d  51  PUSH ECX
00b7002e  50  PUSH EAX
00b7002f  52  PUSH EDX
00b70030  e83bdf96ff  CALL 0x004ddf70
00b70035  83c40c  ADD ESP,0xc
00b70038  8bce  MOV ECX,ESI
00b7003a  50  PUSH EAX
00b7003b  e8b079c6ff  CALL 0x007d79f0
00b70040  8b7f18  MOV EDI,dword ptr [EDI + 0x18]
00b70043  85ff  TEST EDI,EDI
00b70045  750a  JNZ 0x00b70051
00b70047  8b7b04  MOV EDI,dword ptr [EBX + 0x4]
00b7004a  83c304  ADD EBX,0x4
00b7004d  85ff  TEST EDI,EDI
00b7004f  74f6  JZ 0x00b70047
00b70051  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00b70054  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00b70057  3b3c81  CMP EDI,dword ptr [ECX + EAX*0x4]
00b7005a  7584  JNZ 0x00b6ffe0
00b7005c  8bce  MOV ECX,ESI
00b7005e  e80d7ac6ff  CALL 0x007d7a70
00b70063  8a4614  MOV AL,byte ptr [ESI + 0x14]
00b70066  5f  POP EDI
00b70067  5b  POP EBX
00b70068  5e  POP ESI
00b70069  5d  POP EBP
00b7006a  83c410  ADD ESP,0x10
00b7006d  c21400  RET 0x14
00b70070  5e  POP ESI
00b70071  32c0  XOR AL,AL
00b70073  5d  POP EBP
00b70074  83c410  ADD ESP,0x10
00b70077  c21400  RET 0x14
Owned instructions=131 owned bytes=346 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00d0eee0 RoofPitch_Release
# Body [[00d0eee0, 00d0efd9]]; owned bytes=250
00d0eee0  56  PUSH ESI
00d0eee1  8bf1  MOV ESI,ECX
00d0eee3  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00d0eee6  57  PUSH EDI
00d0eee7  e824ba0000  CALL 0x00d1a910
00d0eeec  84c0  TEST AL,AL
00d0eeee  0f8495000000  JZ 0x00d0ef89
00d0eef4  8b4634  MOV EAX,dword ptr [ESI + 0x34]
00d0eef7  6a00  PUSH 0x0
00d0eef9  50  PUSH EAX
00d0eefa  8bce  MOV ECX,ESI
00d0eefc  e81f4bfcff  CALL 0x00cd3a20
00d0ef01  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00d0ef04  85c9  TEST ECX,ECX
00d0ef06  bf01000000  MOV EDI,0x1
00d0ef0b  741c  JZ 0x00d0ef29
00d0ef0d  c7463400000000  MOV dword ptr [ESI + 0x34],0x0
00d0ef14  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d0ef17  83c0ff  ADD EAX,-0x1
00d0ef1a  894104  MOV dword ptr [ECX + 0x4],EAX
00d0ef1d  750a  JNZ 0x00d0ef29
00d0ef1f  897904  MOV dword ptr [ECX + 0x4],EDI
00d0ef22  8b11  MOV EDX,dword ptr [ECX]
00d0ef24  8b02  MOV EAX,dword ptr [EDX]
00d0ef26  57  PUSH EDI
00d0ef27  ffd0  CALL EAX
00d0ef29  6a00  PUSH 0x0
00d0ef2b  6a00  PUSH 0x0
00d0ef2d  6a00  PUSH 0x0
00d0ef2f  6a00  PUSH 0x0
00d0ef31  688c4c0801  PUSH 0x1084c8c
00d0ef36  6a74  PUSH 0x74
00d0ef38  e8c3557dff  CALL 0x004e4500
00d0ef3d  83c418  ADD ESP,0x18
00d0ef40  85c0  TEST EAX,EAX
00d0ef42  740d  JZ 0x00d0ef51
00d0ef44  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00d0ef47  51  PUSH ECX
00d0ef48  8bc8  MOV ECX,EAX
00d0ef4a  e8a1bd0100  CALL 0x00d2acf0
00d0ef4f  eb02  JMP 0x00d0ef53
00d0ef51  33c0  XOR EAX,EAX
00d0ef53  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00d0ef56  3bc1  CMP EAX,ECX
00d0ef58  7423  JZ 0x00d0ef7d
00d0ef5a  85c0  TEST EAX,EAX
00d0ef5c  7403  JZ 0x00d0ef61
00d0ef5e  017804  ADD dword ptr [EAX + 0x4],EDI
00d0ef61  85c9  TEST ECX,ECX
00d0ef63  894634  MOV dword ptr [ESI + 0x34],EAX
00d0ef66  7415  JZ 0x00d0ef7d
00d0ef68  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d0ef6b  83c0ff  ADD EAX,-0x1
00d0ef6e  894104  MOV dword ptr [ECX + 0x4],EAX
00d0ef71  750a  JNZ 0x00d0ef7d
00d0ef73  897904  MOV dword ptr [ECX + 0x4],EDI
00d0ef76  8b11  MOV EDX,dword ptr [ECX]
00d0ef78  8b02  MOV EAX,dword ptr [EDX]
00d0ef7a  57  PUSH EDI
00d0ef7b  ffd0  CALL EAX
00d0ef7d  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00d0ef80  8b11  MOV EDX,dword ptr [ECX]
00d0ef82  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00d0ef85  ffd0  CALL EAX
00d0ef87  eb28  JMP 0x00d0efb1
00d0ef89  807e5900  CMP byte ptr [ESI + 0x59],0x0
00d0ef8d  7522  JNZ 0x00d0efb1
00d0ef8f  6a00  PUSH 0x0
00d0ef91  8bce  MOV ECX,ESI
00d0ef93  e8a8fbffff  CALL 0x00d0eb40
00d0ef98  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00d0ef9b  8b563c  MOV EDX,dword ptr [ESI + 0x3c]
00d0ef9e  8d7e38  LEA EDI,[ESI + 0x38]
00d0efa1  51  PUSH ECX
00d0efa2  52  PUSH EDX
00d0efa3  8bcf  MOV ECX,EDI
00d0efa5  e86614ddff  CALL 0x00ae0410
00d0efaa  c7470c00000000  MOV dword ptr [EDI + 0xc],0x0
00d0efb1  680dd1ae05  PUSH 0x5aed10d
00d0efb6  8bce  MOV ECX,ESI
00d0efb8  e853fafbff  CALL 0x00ccea10
00d0efbd  8bce  MOV ECX,ESI
00d0efbf  e89cfafbff  CALL 0x00ccea60
00d0efc4  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00d0efc8  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00d0efcc  50  PUSH EAX
00d0efcd  51  PUSH ECX
00d0efce  8bce  MOV ECX,ESI
00d0efd0  e82bf8fbff  CALL 0x00cce800
00d0efd5  5f  POP EDI
00d0efd6  5e  POP ESI
00d0efd7  c20800  RET 0x8

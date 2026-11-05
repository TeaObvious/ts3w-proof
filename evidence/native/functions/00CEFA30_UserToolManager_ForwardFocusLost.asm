# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cefa30 UserToolManager_ForwardFocusLost
# Body [[00cefa30, 00cefa7a]]; owned bytes=75
# ECX manager/plainRET. Under existing owner guard invokes current tool virtual18. Object primary table01084370+18 is existing shared007893B0 XORAL,AL/RET; it does not clear pressed rotation here. Host gesture cancellation on focus is a separate existing extension.
00cefa30  57  PUSH EDI
00cefa31  8bf9  MOV EDI,ECX
00cefa33  8b472c  MOV EAX,dword ptr [EDI + 0x2c]
00cefa36  85c0  TEST EAX,EAX
00cefa38  743f  JZ 0x00cefa79
00cefa3a  56  PUSH ESI
00cefa3b  8b700c  MOV ESI,dword ptr [EAX + 0xc]
00cefa3e  85f6  TEST ESI,ESI
00cefa40  740d  JZ 0x00cefa4f
00cefa42  8d86d0000000  LEA EAX,[ESI + 0xd0]
00cefa48  50  PUSH EAX
00cefa49  ff152c61f900  CALL dword ptr [0x00f9612c]
00cefa4f  8b4f2c  MOV ECX,dword ptr [EDI + 0x2c]
00cefa52  8b11  MOV EDX,dword ptr [ECX]
00cefa54  8b422c  MOV EAX,dword ptr [EDX + 0x2c]
00cefa57  ffd0  CALL EAX
00cefa59  84c0  TEST AL,AL
00cefa5b  750a  JNZ 0x00cefa67
00cefa5d  8b4f2c  MOV ECX,dword ptr [EDI + 0x2c]
00cefa60  8b11  MOV EDX,dword ptr [ECX]
00cefa62  8b4218  MOV EAX,dword ptr [EDX + 0x18]
00cefa65  ffd0  CALL EAX
00cefa67  85f6  TEST ESI,ESI
00cefa69  740d  JZ 0x00cefa78
00cefa6b  81c6d0000000  ADD ESI,0xd0
00cefa71  56  PUSH ESI
00cefa72  ff153061f900  CALL dword ptr [0x00f96130]
00cefa78  5e  POP ESI
00cefa79  5f  POP EDI
00cefa7a  c3  RET

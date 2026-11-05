# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cfc850 ObjectTool_UpdateHeldCursor
# Body [[00cfc850, 00cfc904]]; owned bytes=181
# ECX tool/plainRET. Held admission precedes current rotation1CC→05AED103, wall-height1CD→storedF8 or ordinary05AED102. Other empty-tool and cursor-side UI flag80 branches remain distinct. This reads current1CC, not stickyB0.
00cfc850  53  PUSH EBX
00cfc851  56  PUSH ESI
00cfc852  8bf1  MOV ESI,ECX
00cfc854  57  PUSH EDI
00cfc855  8bbed4010000  MOV EDI,dword ptr [ESI + 0x1d4]
00cfc85b  e8c022fdff  CALL 0x00cceb20
00cfc860  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00cfc867  8bd8  MOV EBX,EAX
00cfc869  7405  JZ 0x00cfc870
00cfc86b  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00cfc86e  eb03  JMP 0x00cfc873
00cfc870  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00cfc873  85c9  TEST ECX,ECX
00cfc875  7431  JZ 0x00cfc8a8
00cfc877  e864950200  CALL 0x00d25de0
00cfc87c  84c0  TEST AL,AL
00cfc87e  7428  JZ 0x00cfc8a8
00cfc880  80becc01000000  CMP byte ptr [ESI + 0x1cc],0x0
00cfc887  7407  JZ 0x00cfc890
00cfc889  bf03d1ae05  MOV EDI,0x5aed103
00cfc88e  eb36  JMP 0x00cfc8c6
00cfc890  80becd01000000  CMP byte ptr [ESI + 0x1cd],0x0
00cfc897  7408  JZ 0x00cfc8a1
00cfc899  8bbef8000000  MOV EDI,dword ptr [ESI + 0xf8]
00cfc89f  eb25  JMP 0x00cfc8c6
00cfc8a1  bf02d1ae05  MOV EDI,0x5aed102
00cfc8a6  eb1e  JMP 0x00cfc8c6
00cfc8a8  80be8a00000000  CMP byte ptr [ESI + 0x8a],0x0
00cfc8af  7415  JZ 0x00cfc8c6
00cfc8b1  6a00  PUSH 0x0
00cfc8b3  6a00  PUSH 0x0
00cfc8b5  e83646a9ff  CALL 0x00790ef0
00cfc8ba  83c408  ADD ESP,0x8
00cfc8bd  84c0  TEST AL,AL
00cfc8bf  7405  JZ 0x00cfc8c6
00cfc8c1  bf00e15306  MOV EDI,0x653e100
00cfc8c6  85db  TEST EBX,EBX
00cfc8c8  742f  JZ 0x00cfc8f9
00cfc8ca  81ff03d1ae05  CMP EDI,0x5aed103
00cfc8d0  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00cfc8d3  8b5074  MOV EDX,dword ptr [EAX + 0x74]
00cfc8d6  8d4b04  LEA ECX,[EBX + 0x4]
00cfc8d9  7515  JNZ 0x00cfc8f0
00cfc8db  6a01  PUSH 0x1
00cfc8dd  6880000000  PUSH 0x80
00cfc8e2  ffd2  CALL EDX
00cfc8e4  57  PUSH EDI
00cfc8e5  8bce  MOV ECX,ESI
00cfc8e7  e82421fdff  CALL 0x00ccea10
00cfc8ec  5f  POP EDI
00cfc8ed  5e  POP ESI
00cfc8ee  5b  POP EBX
00cfc8ef  c3  RET
00cfc8f0  6a00  PUSH 0x0
00cfc8f2  6880000000  PUSH 0x80
00cfc8f7  ffd2  CALL EDX
00cfc8f9  57  PUSH EDI
00cfc8fa  8bce  MOV ECX,ESI
00cfc8fc  e80f21fdff  CALL 0x00ccea10
00cfc901  5f  POP EDI
00cfc902  5e  POP ESI
00cfc903  5b  POP EBX
00cfc904  c3  RET

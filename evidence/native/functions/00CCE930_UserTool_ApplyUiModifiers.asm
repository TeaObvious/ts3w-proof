# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cce930 UserTool_ApplyUiModifiers
# Body [[00cce930, 00cce967]]; owned bytes=56
# ECX tool, modifiers one word, RET4. UIControl2 maps tool1, Shift1 maps tool2, Alt4 retained. Only changed mode invokes virtual44(mode,0), then stores tool+10.
00cce930  8a442404  MOV AL,byte ptr [ESP + 0x4]
00cce934  56  PUSH ESI
00cce935  33f6  XOR ESI,ESI
00cce937  a802  TEST AL,0x2
00cce939  57  PUSH EDI
00cce93a  8bf9  MOV EDI,ECX
00cce93c  7405  JZ 0x00cce943
00cce93e  be01000000  MOV ESI,0x1
00cce943  a801  TEST AL,0x1
00cce945  7403  JZ 0x00cce94a
00cce947  83ce02  OR ESI,0x2
00cce94a  a804  TEST AL,0x4
00cce94c  7403  JZ 0x00cce951
00cce94e  83ce04  OR ESI,0x4
00cce951  3b7710  CMP ESI,dword ptr [EDI + 0x10]
00cce954  740d  JZ 0x00cce963
00cce956  8b07  MOV EAX,dword ptr [EDI]
00cce958  8b5044  MOV EDX,dword ptr [EAX + 0x44]
00cce95b  6a00  PUSH 0x0
00cce95d  56  PUSH ESI
00cce95e  ffd2  CALL EDX
00cce960  897710  MOV dword ptr [EDI + 0x10],ESI
00cce963  5f  POP EDI
00cce964  5e  POP ESI
00cce965  c20400  RET 0x4

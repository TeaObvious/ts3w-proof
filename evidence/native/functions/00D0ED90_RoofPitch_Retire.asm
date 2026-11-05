# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00d0ed90 RoofPitch_Retire
# Body [[00d0ed90, 00d0edc2]]; owned bytes=51
00d0ed90  56  PUSH ESI
00d0ed91  8bf1  MOV ESI,ECX
00d0ed93  e8c8fcfbff  CALL 0x00ccea60
00d0ed98  6800d1ae05  PUSH 0x5aed100
00d0ed9d  8bce  MOV ECX,ESI
00d0ed9f  e86cfcfbff  CALL 0x00ccea10
00d0eda4  8b4e34  MOV ECX,dword ptr [ESI + 0x34]
00d0eda7  85c9  TEST ECX,ECX
00d0eda9  7407  JZ 0x00d0edb2
00d0edab  8b01  MOV EAX,dword ptr [ECX]
00d0edad  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00d0edb0  ffd2  CALL EDX
00d0edb2  6a00  PUSH 0x0
00d0edb4  8bce  MOV ECX,ESI
00d0edb6  e885fdffff  CALL 0x00d0eb40
00d0edbb  8bce  MOV ECX,ESI
00d0edbd  5e  POP ESI
00d0edbe  e94d47fcff  JMP 0x00cd3510

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00cedf20 UserTool_StartKeyedSound
# Body [[00cedf20, 00cedf4f]]; owned bytes=48
00cedf20  56  PUSH ESI
00cedf21  e8da1ebcff  CALL 0x008afe00
00cedf26  85c0  TEST EAX,EAX
00cedf28  740d  JZ 0x00cedf37
00cedf2a  8b10  MOV EDX,dword ptr [EAX]
00cedf2c  8bc8  MOV ECX,EAX
00cedf2e  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00cedf31  ffd0  CALL EAX
00cedf33  8bf0  MOV ESI,EAX
00cedf35  eb02  JMP 0x00cedf39
00cedf37  33f6  XOR ESI,ESI
00cedf39  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00cedf3d  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00cedf41  56  PUSH ESI
00cedf42  51  PUSH ECX
00cedf43  52  PUSH EDX
00cedf44  e83729b7ff  CALL 0x00860880
00cedf49  83c40c  ADD ESP,0xc
00cedf4c  8bc6  MOV EAX,ESI
00cedf4e  5e  POP ESI
00cedf4f  c3  RET

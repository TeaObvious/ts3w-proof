# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00cd04a0 BuildBuy_PlayKeyedSound
# Body [[00cd04a0, 00cd04db]]; owned bytes=60
00cd04a0  e85bf9bdff  CALL 0x008afe00
00cd04a5  85c0  TEST EAX,EAX
00cd04a7  741d  JZ 0x00cd04c6
00cd04a9  8b10  MOV EDX,dword ptr [EAX]
00cd04ab  8bc8  MOV ECX,EAX
00cd04ad  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00cd04b0  ffd0  CALL EAX
00cd04b2  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00cd04b6  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00cd04ba  50  PUSH EAX
00cd04bb  51  PUSH ECX
00cd04bc  52  PUSH EDX
00cd04bd  e8be03b9ff  CALL 0x00860880
00cd04c2  83c40c  ADD ESP,0xc
00cd04c5  c3  RET
00cd04c6  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00cd04ca  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00cd04ce  33c0  XOR EAX,EAX
00cd04d0  50  PUSH EAX
00cd04d1  51  PUSH ECX
00cd04d2  52  PUSH EDX
00cd04d3  e8a803b9ff  CALL 0x00860880
00cd04d8  83c40c  ADD ESP,0xc
00cd04db  c3  RET

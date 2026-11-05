# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 RugManager_WriteSavedResource(void * this, void * param_1, undefined4 param_2, undefined4 param_3, undefined4 param_4)
Owned ranges: [[00c08cf0, 00c08da4]]

00c08cf0  83ec1c  SUB ESP,0x1c
00c08cf3  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00c08cf7  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00c08cfb  53  PUSH EBX
00c08cfc  56  PUSH ESI
00c08cfd  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00c08d01  57  PUSH EDI
00c08d02  8bd9  MOV EBX,ECX
00c08d04  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c08d08  89442418  MOV dword ptr [ESP + 0x18],EAX
00c08d0c  6a01  PUSH 0x1
00c08d0e  8d44241c  LEA EAX,[ESP + 0x1c]
00c08d12  894c2420  MOV dword ptr [ESP + 0x20],ECX
00c08d16  50  PUSH EAX
00c08d17  8bce  MOV ECX,ESI
00c08d19  c74424285d3f3906  MOV dword ptr [ESP + 0x28],0x6393f5d
00c08d21  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00c08d25  e896f7bcff  CALL 0x007d84c0
00c08d2a  84c0  TEST AL,AL
00c08d2c  746b  JZ 0x00c08d99
00c08d2e  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c08d31  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c08d34  51  PUSH ECX
00c08d35  6a01  PUSH 0x1
00c08d37  52  PUSH EDX
00c08d38  e833528dff  CALL 0x004ddf70
00c08d3d  83c40c  ADD ESP,0xc
00c08d40  8bce  MOV ECX,ESI
00c08d42  50  PUSH EAX
00c08d43  e8a8ecbcff  CALL 0x007d79f0
00c08d48  8d7b04  LEA EDI,[EBX + 0x4]
00c08d4b  8bc7  MOV EAX,EDI
00c08d4d  83c9ff  OR ECX,0xffffffff
00c08d50  8b00  MOV EAX,dword ptr [EAX]
00c08d52  83c101  ADD ECX,0x1
00c08d55  3bc7  CMP EAX,EDI
00c08d57  75f7  JNZ 0x00c08d50
00c08d59  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c08d5c  50  PUSH EAX
00c08d5d  51  PUSH ECX
00c08d5e  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c08d61  51  PUSH ECX
00c08d62  e809528dff  CALL 0x004ddf70
00c08d67  83c40c  ADD ESP,0xc
00c08d6a  8bce  MOV ECX,ESI
00c08d6c  50  PUSH EAX
00c08d6d  e87eecbcff  CALL 0x007d79f0
00c08d72  83ec0c  SUB ESP,0xc
00c08d75  8bc4  MOV EAX,ESP
00c08d77  b9908bc000  MOV ECX,0xc08b90
00c08d7c  8918  MOV dword ptr [EAX],EBX
00c08d7e  8d542418  LEA EDX,[ESP + 0x18]
00c08d82  57  PUSH EDI
00c08d83  894804  MOV dword ptr [EAX + 0x4],ECX
00c08d86  52  PUSH EDX
00c08d87  897008  MOV dword ptr [EAX + 0x8],ESI
00c08d8a  e811fdffff  CALL 0x00c08aa0
00c08d8f  83c414  ADD ESP,0x14
00c08d92  8bce  MOV ECX,ESI
00c08d94  e8d7ecbcff  CALL 0x007d7a70
00c08d99  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c08d9c  5f  POP EDI
00c08d9d  5e  POP ESI
00c08d9e  5b  POP EBX
00c08d9f  83c41c  ADD ESP,0x1c
00c08da2  c21000  RET 0x10

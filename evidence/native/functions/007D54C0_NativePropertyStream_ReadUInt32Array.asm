# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[007d54c0, 007d553a]]
signature=undefined1 __thiscall NativePropertyStream_ReadUInt32Array(void * this, undefined4 param_1, uint * param_2, uint * param_3)
PLATE
Analyst note (PC1.67 SACS migration contract): ECX reader,three stack words RET0C: property name,destination,capacity/count pointer. XOR A4744BF2; save caller capacity before reading stored UInt32 count. Null destination returnsAL1 on that branch after count read; otherwise clamp count to min(capacity,stored), read raw32-bit array via byte-order helper and return accumulated status. Current allocating full-array API does not reproduce this capacity/query protocol.

007d54c0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d54c4  56  PUSH ESI
007d54c5  35f24b74a4  XOR EAX,0xa4744bf2
007d54ca  50  PUSH EAX
007d54cb  8bf1  MOV ESI,ECX
007d54cd  e88efcffff  CALL 0x007d5160
007d54d2  84c0  TEST AL,AL
007d54d4  745f  JZ 0x007d5535
007d54d6  8b7608  MOV ESI,dword ptr [ESI + 0x8]
007d54d9  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d54dc  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d54df  53  PUSH EBX
007d54e0  57  PUSH EDI
007d54e1  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
007d54e5  8b1f  MOV EBX,dword ptr [EDI]
007d54e7  51  PUSH ECX
007d54e8  57  PUSH EDI
007d54e9  52  PUSH EDX
007d54ea  e89184d0ff  CALL 0x004dd980
007d54ef  83c40c  ADD ESP,0xc
007d54f2  8bce  MOV ECX,ESI
007d54f4  50  PUSH EAX
007d54f5  e8f6240000  CALL 0x007d79f0
007d54fa  8b442414  MOV EAX,dword ptr [ESP + 0x14]
007d54fe  85c0  TEST EAX,EAX
007d5500  7508  JNZ 0x007d550a
007d5502  5f  POP EDI
007d5503  5b  POP EBX
007d5504  b001  MOV AL,0x1
007d5506  5e  POP ESI
007d5507  c20c00  RET 0xc
007d550a  391f  CMP dword ptr [EDI],EBX
007d550c  7602  JBE 0x007d5510
007d550e  891f  MOV dword ptr [EDI],EBX
007d5510  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d5513  8b3f  MOV EDI,dword ptr [EDI]
007d5515  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d5518  51  PUSH ECX
007d5519  57  PUSH EDI
007d551a  50  PUSH EAX
007d551b  52  PUSH EDX
007d551c  e8af84d0ff  CALL 0x004dd9d0
007d5521  83c410  ADD ESP,0x10
007d5524  8bce  MOV ECX,ESI
007d5526  50  PUSH EAX
007d5527  e8c4240000  CALL 0x007d79f0
007d552c  8a4614  MOV AL,byte ptr [ESI + 0x14]
007d552f  5f  POP EDI
007d5530  5b  POP EBX
007d5531  5e  POP ESI
007d5532  c20c00  RET 0xc
007d5535  32c0  XOR AL,AL
007d5537  5e  POP ESI
007d5538  c20c00  RET 0xc

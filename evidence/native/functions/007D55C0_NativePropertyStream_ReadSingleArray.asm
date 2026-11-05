# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[007d55c0, 007d563a]]
signature=undefined1 __thiscall NativePropertyStream_ReadSingleArray(void * this, undefined4 param_1, uint * param_2, uint * param_3)
PLATE
Analyst note (PC1.67 SACS migration contract): ECX reader,three words RET0C. XOR1B801A5D; same count/query/capacity protocol and raw32-bit array helper, interpreted by typed floating consumer. Decompiled uint pointers must not imply UInt32-to-float numerical conversion. Current float[] allocation/bounds remain project API.

007d55c0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d55c4  56  PUSH ESI
007d55c5  355d1a801b  XOR EAX,0x1b801a5d
007d55ca  50  PUSH EAX
007d55cb  8bf1  MOV ESI,ECX
007d55cd  e88efbffff  CALL 0x007d5160
007d55d2  84c0  TEST AL,AL
007d55d4  745f  JZ 0x007d5635
007d55d6  8b7608  MOV ESI,dword ptr [ESI + 0x8]
007d55d9  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d55dc  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d55df  53  PUSH EBX
007d55e0  57  PUSH EDI
007d55e1  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
007d55e5  8b1f  MOV EBX,dword ptr [EDI]
007d55e7  51  PUSH ECX
007d55e8  57  PUSH EDI
007d55e9  52  PUSH EDX
007d55ea  e89183d0ff  CALL 0x004dd980
007d55ef  83c40c  ADD ESP,0xc
007d55f2  8bce  MOV ECX,ESI
007d55f4  50  PUSH EAX
007d55f5  e8f6230000  CALL 0x007d79f0
007d55fa  8b442414  MOV EAX,dword ptr [ESP + 0x14]
007d55fe  85c0  TEST EAX,EAX
007d5600  7508  JNZ 0x007d560a
007d5602  5f  POP EDI
007d5603  5b  POP EBX
007d5604  b001  MOV AL,0x1
007d5606  5e  POP ESI
007d5607  c20c00  RET 0xc
007d560a  391f  CMP dword ptr [EDI],EBX
007d560c  7602  JBE 0x007d5610
007d560e  891f  MOV dword ptr [EDI],EBX
007d5610  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d5613  8b3f  MOV EDI,dword ptr [EDI]
007d5615  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d5618  51  PUSH ECX
007d5619  57  PUSH EDI
007d561a  50  PUSH EAX
007d561b  52  PUSH EDX
007d561c  e81f84d0ff  CALL 0x004dda40
007d5621  83c410  ADD ESP,0x10
007d5624  8bce  MOV ECX,ESI
007d5626  50  PUSH EAX
007d5627  e8c4230000  CALL 0x007d79f0
007d562c  8a4614  MOV AL,byte ptr [ESI + 0x14]
007d562f  5f  POP EDI
007d5630  5b  POP EBX
007d5631  5e  POP ESI
007d5632  c20c00  RET 0xc
007d5635  32c0  XOR AL,AL
007d5637  5e  POP ESI
007d5638  c20c00  RET 0xc

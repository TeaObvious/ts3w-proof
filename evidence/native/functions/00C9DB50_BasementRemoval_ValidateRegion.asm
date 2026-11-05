# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementRemoval_ValidateRegion(void * param_1, undefined4 param_2, char * param_3, char * param_4, void * param_5)
Owned ranges: [[00c9db50, 00c9dc13]]

00c9db50  55  PUSH EBP
00c9db51  8bec  MOV EBP,ESP
00c9db53  83e4f0  AND ESP,0xfffffff0
00c9db56  83ec54  SUB ESP,0x54
00c9db59  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c9db5c  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00c9db5f  53  PUSH EBX
00c9db60  8b5d18  MOV EBX,dword ptr [EBP + 0x18]
00c9db63  56  PUSH ESI
00c9db64  8b7510  MOV ESI,dword ptr [EBP + 0x10]
00c9db67  57  PUSH EDI
00c9db68  8b7d14  MOV EDI,dword ptr [EBP + 0x14]
00c9db6b  53  PUSH EBX
00c9db6c  57  PUSH EDI
00c9db6d  56  PUSH ESI
00c9db6e  50  PUSH EAX
00c9db6f  51  PUSH ECX
00c9db70  c644242b01  MOV byte ptr [ESP + 0x2b],0x1
00c9db75  e816ebffff  CALL 0x00c9c690
00c9db7a  83c414  ADD ESP,0x14
00c9db7d  84c0  TEST AL,AL
00c9db7f  7435  JZ 0x00c9dbb6
00c9db81  85db  TEST EBX,EBX
00c9db83  7428  JZ 0x00c9dbad
00c9db85  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00c9db88  56  PUSH ESI
00c9db89  52  PUSH EDX
00c9db8a  68eb000000  PUSH 0xeb
00c9db8f  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9db93  e8288fe3ff  CALL 0x00ad6ac0
00c9db98  8d442420  LEA EAX,[ESP + 0x20]
00c9db9c  50  PUSH EAX
00c9db9d  8bcb  MOV ECX,EBX
00c9db9f  e8cca9e3ff  CALL 0x00ad8570
00c9dba4  8d4c2420  LEA ECX,[ESP + 0x20]
00c9dba8  e82395e3ff  CALL 0x00ad70d0
00c9dbad  32c0  XOR AL,AL
00c9dbaf  5f  POP EDI
00c9dbb0  5e  POP ESI
00c9dbb1  5b  POP EBX
00c9dbb2  8be5  MOV ESP,EBP
00c9dbb4  5d  POP EBP
00c9dbb5  c3  RET
00c9dbb6  0fb60e  MOVZX ECX,byte ptr [ESI]
00c9dbb9  0fb65601  MOVZX EDX,byte ptr [ESI + 0x1]
00c9dbbd  0fb64602  MOVZX EAX,byte ptr [ESI + 0x2]
00c9dbc1  884c241c  MOV byte ptr [ESP + 0x1c],CL
00c9dbc5  0fb60f  MOVZX ECX,byte ptr [EDI]
00c9dbc8  2c01  SUB AL,0x1
00c9dbca  8854241d  MOV byte ptr [ESP + 0x1d],DL
00c9dbce  0fb65701  MOVZX EDX,byte ptr [EDI + 0x1]
00c9dbd2  8844241e  MOV byte ptr [ESP + 0x1e],AL
00c9dbd6  0fb64702  MOVZX EAX,byte ptr [EDI + 0x2]
00c9dbda  53  PUSH EBX
00c9dbdb  884c241c  MOV byte ptr [ESP + 0x1c],CL
00c9dbdf  8d4c241c  LEA ECX,[ESP + 0x1c]
00c9dbe3  51  PUSH ECX
00c9dbe4  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00c9dbe7  88542421  MOV byte ptr [ESP + 0x21],DL
00c9dbeb  2c01  SUB AL,0x1
00c9dbed  8d542424  LEA EDX,[ESP + 0x24]
00c9dbf1  52  PUSH EDX
00c9dbf2  88442426  MOV byte ptr [ESP + 0x26],AL
00c9dbf6  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c9dbf9  6a00  PUSH 0x0
00c9dbfb  50  PUSH EAX
00c9dbfc  51  PUSH ECX
00c9dbfd  e81efaffff  CALL 0x00c9d620
00c9dc02  83c418  ADD ESP,0x18
00c9dc05  84c0  TEST AL,AL
00c9dc07  74a4  JZ 0x00c9dbad
00c9dc09  8a442417  MOV AL,byte ptr [ESP + 0x17]
00c9dc0d  5f  POP EDI
00c9dc0e  5e  POP ESI
00c9dc0f  5b  POP EBX
00c9dc10  8be5  MOV ESP,EBP
00c9dc12  5d  POP EBP
00c9dc13  c3  RET

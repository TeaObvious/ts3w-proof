# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00c07ac0, 00c07c8a]]
signature=undefined1 __thiscall RoomManager_ReadSavedGridResource(void * this, void * param_1, uint param_2, uint param_3, undefined4 param_4, ushort param_5)
PLATE
PC1.67 Room wire gate: complete459byte/140instruction body C07AC0..C07C8A. Existing thiscall metadata retains auto ECX this plus five stack inputs at entryESP04/08/0C/10/14; RET14. Fifth lowWORD is enclosingLOT source version supplied by B52050, not B125533A word0 or partition index version. CMP WORD[ESP+450],12 at C07B2C; unsigned JNC C07B35 chooses modern branch. Below12hex, C07BA2 calls4DDA40->4DD9D0 with stream,output,UInt32 depth*4,endian, caller ADD ESP10; C07BC0..E0 reads DWORD lowWORDs at0/4/8/C into logical WORDs0/2/4/6. Layer->X rows contain depth cells. Modern C07C3B calls4DD970->4DD920 for cellCount*4 UInt16s with the same physical four-word cdecl inputs. C07C53 imports logical8byte cells viaAA3770, closes context, C07C5F checks sticky status and C07C67 rebuilds room locations only on success. No selected EOF equality; unread trailing bytes do not choose another layout. Failed native import may have touched private storage before false; managed decoder publishes no partial grid. Original body/prototype/storage unchanged.

00c07ac0  81ec34040000  SUB ESP,0x434
00c07ac6  8b842444040000  MOV EAX,dword ptr [ESP + 0x444]
00c07acd  8b94243c040000  MOV EDX,dword ptr [ESP + 0x43c]
00c07ad4  53  PUSH EBX
00c07ad5  57  PUSH EDI
00c07ad6  8bbc2440040000  MOV EDI,dword ptr [ESP + 0x440]
00c07add  8bd9  MOV EBX,ECX
00c07adf  8b8c2448040000  MOV ECX,dword ptr [ESP + 0x448]
00c07ae6  50  PUSH EAX
00c07ae7  51  PUSH ECX
00c07ae8  8b4b14  MOV ECX,dword ptr [EBX + 0x14]
00c07aeb  52  PUSH EDX
00c07aec  57  PUSH EDI
00c07aed  895c2434  MOV dword ptr [ESP + 0x34],EBX
00c07af1  e80aeeffff  CALL 0x00c06900
00c07af6  84c0  TEST AL,AL
00c07af8  0f847f010000  JZ 0x00c07c7d
00c07afe  33c0  XOR EAX,EAX
00c07b00  89442414  MOV dword ptr [ESP + 0x14],EAX
00c07b04  89442418  MOV dword ptr [ESP + 0x18],EAX
00c07b08  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00c07b0c  8b4314  MOV EAX,dword ptr [EBX + 0x14]
00c07b0f  8b480c  MOV ECX,dword ptr [EAX + 0xc]
00c07b12  0faf4808  IMUL ECX,dword ptr [EAX + 0x8]
00c07b16  0faf4804  IMUL ECX,dword ptr [EAX + 0x4]
00c07b1a  51  PUSH ECX
00c07b1b  8d4c2418  LEA ECX,[ESP + 0x18]
00c07b1f  c7442424fc480701  MOV dword ptr [ESP + 0x24],0x10748fc
00c07b27  e8e423efff  CALL 0x00af9f10
00c07b2c  6683bc245004000012  CMP word ptr [ESP + 0x450],0x12
00c07b35  0f83e5000000  JNC 0x00c07c20
00c07b3b  8d54243c  LEA EDX,[ESP + 0x3c]
00c07b3f  8d8c243c040000  LEA ECX,[ESP + 0x43c]
00c07b46  894c2430  MOV dword ptr [ESP + 0x30],ECX
00c07b4a  8b4b14  MOV ECX,dword ptr [EBX + 0x14]
00c07b4d  8bc2  MOV EAX,EDX
00c07b4f  55  PUSH EBP
00c07b50  8954243c  MOV dword ptr [ESP + 0x3c],EDX
00c07b54  c7442438c8aaf900  MOV dword ptr [ESP + 0x38],0xf9aac8
00c07b5c  89442430  MOV dword ptr [ESP + 0x30],EAX
00c07b60  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00c07b64  8b510c  MOV EDX,dword ptr [ECX + 0xc]
00c07b67  85d2  TEST EDX,EDX
00c07b69  8b6908  MOV EBP,dword ptr [ECX + 0x8]
00c07b6c  56  PUSH ESI
00c07b6d  8b7104  MOV ESI,dword ptr [ECX + 0x4]
00c07b70  89742414  MOV dword ptr [ESP + 0x14],ESI
00c07b74  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00c07b78  0f868b000000  JBE 0x00c07c09
00c07b7e  89542410  MOV dword ptr [ESP + 0x10],EDX
00c07b82  837c241400  CMP dword ptr [ESP + 0x14],0x0
00c07b87  7675  JBE 0x00c07bfe
00c07b89  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c07b8d  8d1cad00000000  LEA EBX,[EBP*0x4 + 0x0]
00c07b94  89542418  MOV dword ptr [ESP + 0x18],EDX
00c07b98  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00c07b9b  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00c07b9e  51  PUSH ECX
00c07b9f  53  PUSH EBX
00c07ba0  50  PUSH EAX
00c07ba1  52  PUSH EDX
00c07ba2  e8995e8dff  CALL 0x004dda40
00c07ba7  83c410  ADD ESP,0x10
00c07baa  8bcf  MOV ECX,EDI
00c07bac  50  PUSH EAX
00c07bad  e83efebcff  CALL 0x007d79f0
00c07bb2  85ed  TEST EBP,EBP
00c07bb4  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00c07bb8  7639  JBE 0x00c07bf3
00c07bba  8bcd  MOV ECX,EBP
00c07bbc  8d642400  LEA ESP,[ESP]
00c07bc0  0fb710  MOVZX EDX,word ptr [EAX]
00c07bc3  83c004  ADD EAX,0x4
00c07bc6  668916  MOV word ptr [ESI],DX
00c07bc9  0fb710  MOVZX EDX,word ptr [EAX]
00c07bcc  83c004  ADD EAX,0x4
00c07bcf  66895602  MOV word ptr [ESI + 0x2],DX
00c07bd3  0fb710  MOVZX EDX,word ptr [EAX]
00c07bd6  83c004  ADD EAX,0x4
00c07bd9  66895604  MOV word ptr [ESI + 0x4],DX
00c07bdd  0fb710  MOVZX EDX,word ptr [EAX]
00c07be0  66895606  MOV word ptr [ESI + 0x6],DX
00c07be4  83c004  ADD EAX,0x4
00c07be7  83c608  ADD ESI,0x8
00c07bea  83e901  SUB ECX,0x1
00c07bed  75d1  JNZ 0x00c07bc0
00c07bef  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00c07bf3  836c241801  SUB dword ptr [ESP + 0x18],0x1
00c07bf8  759e  JNZ 0x00c07b98
00c07bfa  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00c07bfe  836c241001  SUB dword ptr [ESP + 0x10],0x1
00c07c03  0f8579ffffff  JNZ 0x00c07b82
00c07c09  85c0  TEST EAX,EAX
00c07c0b  5e  POP ESI
00c07c0c  5d  POP EBP
00c07c0d  743c  JZ 0x00c07c4b
00c07c0f  3b442438  CMP EAX,dword ptr [ESP + 0x38]
00c07c13  7436  JZ 0x00c07c4b
00c07c15  50  PUSH EAX
00c07c16  e8c5c88dff  CALL 0x004e44e0
00c07c1b  83c404  ADD ESP,0x4
00c07c1e  eb2b  JMP 0x00c07c4b
00c07c20  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00c07c23  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00c07c27  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00c07c2a  50  PUSH EAX
00c07c2b  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00c07c2f  2bc8  SUB ECX,EAX
00c07c31  c1f903  SAR ECX,0x3
00c07c34  03c9  ADD ECX,ECX
00c07c36  03c9  ADD ECX,ECX
00c07c38  51  PUSH ECX
00c07c39  50  PUSH EAX
00c07c3a  52  PUSH EDX
00c07c3b  e8305d8dff  CALL 0x004dd970
00c07c40  83c410  ADD ESP,0x10
00c07c43  8bcf  MOV ECX,EDI
00c07c45  50  PUSH EAX
00c07c46  e8a5fdbcff  CALL 0x007d79f0
00c07c4b  8b4b14  MOV ECX,dword ptr [EBX + 0x14]
00c07c4e  8d442414  LEA EAX,[ESP + 0x14]
00c07c52  50  PUSH EAX
00c07c53  e818bbe9ff  CALL 0x00aa3770
00c07c58  8bcf  MOV ECX,EDI
00c07c5a  e811febcff  CALL 0x007d7a70
00c07c5f  807f1400  CMP byte ptr [EDI + 0x14],0x0
00c07c63  7407  JZ 0x00c07c6c
00c07c65  8bcb  MOV ECX,EBX
00c07c67  e874fcffff  CALL 0x00c078e0
00c07c6c  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00c07c70  85c0  TEST EAX,EAX
00c07c72  7409  JZ 0x00c07c7d
00c07c74  50  PUSH EAX
00c07c75  e866c88dff  CALL 0x004e44e0
00c07c7a  83c404  ADD ESP,0x4
00c07c7d  8a4714  MOV AL,byte ptr [EDI + 0x14]
00c07c80  5f  POP EDI
00c07c81  5b  POP EBX
00c07c82  81c434040000  ADD ESP,0x434
00c07c88  c21400  RET 0x14

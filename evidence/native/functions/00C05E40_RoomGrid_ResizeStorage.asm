# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00c05e40, 00c05e98] [00c05ea0, 00c05ebb]]
signature=undefined __thiscall RoomGrid_ResizeStorage(void * this, int param_1, int param_2, int param_3)
PLATE
PC1.67 Room wire gate: complete117owned bytes/47instructions across C05E40..C05E98 and C05EA0..C05EBB, preserving7unowned alignment bytes. ECX grid receiver with three stackDWORDs/RET0C; width,depth,layers retained at+4/+8/+C. Internal block dimensions derive ceil-div4 arithmetic and default references initialize8000. This is compressed4x4 logical8byte-cell storage, not a second serialized RoomManager grammar. No selected4096/64, LDES equality or nonzero dimension admission; native raw32 allocation arithmetic is not host-safe representation policy. Existing inferred signed types retained; no prototype/body/padding change.

00c05e40  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c05e44  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c05e48  53  PUSH EBX
00c05e49  55  PUSH EBP
00c05e4a  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00c05e4e  56  PUSH ESI
00c05e4f  8bf1  MOV ESI,ECX
00c05e51  894604  MOV dword ptr [ESI + 0x4],EAX
00c05e54  8d4803  LEA ECX,[EAX + 0x3]
00c05e57  8d4203  LEA EAX,[EDX + 0x3]
00c05e5a  c1f802  SAR EAX,0x2
00c05e5d  c1f902  SAR ECX,0x2
00c05e60  894624  MOV dword ptr [ESI + 0x24],EAX
00c05e63  0fafc1  IMUL EAX,ECX
00c05e66  0fafc5  IMUL EAX,EBP
00c05e69  57  PUSH EDI
00c05e6a  896e0c  MOV dword ptr [ESI + 0xc],EBP
00c05e6d  894e20  MOV dword ptr [ESI + 0x20],ECX
00c05e70  8d5e48  LEA EBX,[ESI + 0x48]
00c05e73  895608  MOV dword ptr [ESI + 0x8],EDX
00c05e76  8b7b04  MOV EDI,dword ptr [EBX + 0x4]
00c05e79  2b3b  SUB EDI,dword ptr [EBX]
00c05e7b  8be8  MOV EBP,EAX
00c05e7d  55  PUSH EBP
00c05e7e  8bcb  MOV ECX,EBX
00c05e80  d1ff  SAR EDI,0x1
00c05e82  e85997a7ff  CALL 0x0067f5e0
00c05e87  3bef  CMP EBP,EDI
00c05e89  7e21  JLE 0x00c05eac
00c05e8b  8b03  MOV EAX,dword ptr [EBX]
00c05e8d  8b4e4c  MOV ECX,dword ptr [ESI + 0x4c]
00c05e90  8d0478  LEA EAX,[EAX + EDI*0x2]
00c05e93  3bc1  CMP EAX,ECX
00c05e95  7415  JZ 0x00c05eac
00c05e97  eb07  JMP 0x00c05ea0
00c05e99  8da42400000000  .byte unowned alignment
00c05ea0  66c7000080  MOV word ptr [EAX],0x8000
00c05ea5  83c002  ADD EAX,0x2
00c05ea8  3bc1  CMP EAX,ECX
00c05eaa  75f4  JNZ 0x00c05ea0
00c05eac  55  PUSH EBP
00c05ead  8d4e38  LEA ECX,[ESI + 0x38]
00c05eb0  e85b40efff  CALL 0x00af9f10
00c05eb5  5f  POP EDI
00c05eb6  5e  POP ESI
00c05eb7  5d  POP EBP
00c05eb8  5b  POP EBX
00c05eb9  c20c00  RET 0xc

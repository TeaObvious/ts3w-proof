# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00c06900, 00c069e8]]
signature=undefined4 __thiscall RoomGrid_ReadHeaderResource(void * this, void * param_1, uint param_2, uint param_3, undefined4 param_4)
PLATE
PC1.67 Room wire gate: complete233byte/82instruction body C06900..C069E8. ECX grid receiver, four stackDWORDs, RET10; AL is sticky read status, upper return bits not Boolean authority. Resource type B125533A; four UInt32 reads at C06954/71/8E/AB consume header word0,width,depth,layers, each accumulated through7D79F0. No word0==1 comparison exists. C069CC passes header dimensions toC05E40; no4096/64, LOT dimension equality or zero-product format rejection in this body. Header failure closes context; successful body reading remains C07AC0. Native allocation/wrap behavior is not a managed safe-input rule.

00c06900  83ec14  SUB ESP,0x14
00c06903  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00c06907  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00c0690b  56  PUSH ESI
00c0690c  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00c06910  837e0400  CMP dword ptr [ESI + 0x4],0x0
00c06914  57  PUSH EDI
00c06915  8bf9  MOV EDI,ECX
00c06917  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00c0691b  8944240c  MOV dword ptr [ESP + 0xc],EAX
00c0691f  894c2410  MOV dword ptr [ESP + 0x10],ECX
00c06923  c74424143a5325b1  MOV dword ptr [ESP + 0x14],0xb125533a
00c0692b  89542418  MOV dword ptr [ESP + 0x18],EDX
00c0692f  7516  JNZ 0x00c06947
00c06931  6a00  PUSH 0x0
00c06933  8d442410  LEA EAX,[ESP + 0x10]
00c06937  50  PUSH EAX
00c06938  8bce  MOV ECX,ESI
00c0693a  e8811bbdff  CALL 0x007d84c0
00c0693f  84c0  TEST AL,AL
00c06941  0f8497000000  JZ 0x00c069de
00c06947  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c0694a  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c0694d  51  PUSH ECX
00c0694e  8d54240c  LEA EDX,[ESP + 0xc]
00c06952  52  PUSH EDX
00c06953  50  PUSH EAX
00c06954  e827708dff  CALL 0x004dd980
00c06959  83c40c  ADD ESP,0xc
00c0695c  8bce  MOV ECX,ESI
00c0695e  50  PUSH EAX
00c0695f  e88c10bdff  CALL 0x007d79f0
00c06964  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c06967  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c0696a  51  PUSH ECX
00c0696b  8d54242c  LEA EDX,[ESP + 0x2c]
00c0696f  52  PUSH EDX
00c06970  50  PUSH EAX
00c06971  e80a708dff  CALL 0x004dd980
00c06976  83c40c  ADD ESP,0xc
00c06979  8bce  MOV ECX,ESI
00c0697b  50  PUSH EAX
00c0697c  e86f10bdff  CALL 0x007d79f0
00c06981  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c06984  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c06987  51  PUSH ECX
00c06988  8d542424  LEA EDX,[ESP + 0x24]
00c0698c  52  PUSH EDX
00c0698d  50  PUSH EAX
00c0698e  e8ed6f8dff  CALL 0x004dd980
00c06993  83c40c  ADD ESP,0xc
00c06996  8bce  MOV ECX,ESI
00c06998  50  PUSH EAX
00c06999  e85210bdff  CALL 0x007d79f0
00c0699e  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c069a1  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c069a4  51  PUSH ECX
00c069a5  8d542428  LEA EDX,[ESP + 0x28]
00c069a9  52  PUSH EDX
00c069aa  50  PUSH EAX
00c069ab  e8d06f8dff  CALL 0x004dd980
00c069b0  83c40c  ADD ESP,0xc
00c069b3  8bce  MOV ECX,ESI
00c069b5  50  PUSH EAX
00c069b6  e83510bdff  CALL 0x007d79f0
00c069bb  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00c069bf  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00c069c3  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00c069c7  51  PUSH ECX
00c069c8  52  PUSH EDX
00c069c9  50  PUSH EAX
00c069ca  8bcf  MOV ECX,EDI
00c069cc  e86ff4ffff  CALL 0x00c05e40
00c069d1  807e1400  CMP byte ptr [ESI + 0x14],0x0
00c069d5  7507  JNZ 0x00c069de
00c069d7  8bce  MOV ECX,ESI
00c069d9  e89210bdff  CALL 0x007d7a70
00c069de  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c069e1  5f  POP EDI
00c069e2  5e  POP ESI
00c069e3  83c414  ADD ESP,0x14
00c069e6  c21000  RET 0x10

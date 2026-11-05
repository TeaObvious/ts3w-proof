# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 SacsManager_RegisterSettingsAndDriverType(int param_1)
Owned ranges: [[007fccd0, 007fce5e]]

007fccd0  56  PUSH ESI
007fccd1  57  PUSH EDI
007fccd2  8bf1  MOV ESI,ECX
007fccd4  e8f73bdaff  CALL 0x005a08d0
007fccd9  85c0  TEST EAX,EAX
007fccdb  7413  JZ 0x007fccf0
007fccdd  8b10  MOV EDX,dword ptr [EAX]
007fccdf  6834080000  PUSH 0x834
007fcce4  8bc8  MOV ECX,EAX
007fcce6  8b4218  MOV EAX,dword ptr [EDX + 0x18]
007fcce9  68b03cfc00  PUSH 0xfc3cb0
007fccee  ffd0  CALL EAX
007fccf0  e8db3bdaff  CALL 0x005a08d0
007fccf5  85c0  TEST EAX,EAX
007fccf7  7412  JZ 0x007fcd0b
007fccf9  8b10  MOV EDX,dword ptr [EAX]
007fccfb  8b5228  MOV EDX,dword ptr [EDX + 0x28]
007fccfe  68bc020201  PUSH 0x10202bc
007fcd03  8d4e48  LEA ECX,[ESI + 0x48]
007fcd06  51  PUSH ECX
007fcd07  8bc8  MOV ECX,EAX
007fcd09  ffd2  CALL EDX
007fcd0b  e8c03bdaff  CALL 0x005a08d0
007fcd10  85c0  TEST EAX,EAX
007fcd12  741b  JZ 0x007fcd2f
007fcd14  8b10  MOV EDX,dword ptr [EAX]
007fcd16  8b5238  MOV EDX,dword ptr [EDX + 0x38]
007fcd19  6a01  PUSH 0x1
007fcd1b  6868010000  PUSH 0x168
007fcd20  6a01  PUSH 0x1
007fcd22  6898020201  PUSH 0x1020298
007fcd27  8d4e3c  LEA ECX,[ESI + 0x3c]
007fcd2a  51  PUSH ECX
007fcd2b  8bc8  MOV ECX,EAX
007fcd2d  ffd2  CALL EDX
007fcd2f  e89c3bdaff  CALL 0x005a08d0
007fcd34  85c0  TEST EAX,EAX
007fcd36  7418  JZ 0x007fcd50
007fcd38  8b10  MOV EDX,dword ptr [EAX]
007fcd3a  8b5238  MOV EDX,dword ptr [EDX + 0x38]
007fcd3d  6a01  PUSH 0x1
007fcd3f  6a3c  PUSH 0x3c
007fcd41  6a01  PUSH 0x1
007fcd43  6870020201  PUSH 0x1020270
007fcd48  8d4e40  LEA ECX,[ESI + 0x40]
007fcd4b  51  PUSH ECX
007fcd4c  8bc8  MOV ECX,EAX
007fcd4e  ffd2  CALL EDX
007fcd50  e87b3bdaff  CALL 0x005a08d0
007fcd55  85c0  TEST EAX,EAX
007fcd57  7418  JZ 0x007fcd71
007fcd59  8b10  MOV EDX,dword ptr [EAX]
007fcd5b  8b5238  MOV EDX,dword ptr [EDX + 0x38]
007fcd5e  6a01  PUSH 0x1
007fcd60  6a3c  PUSH 0x3c
007fcd62  6a01  PUSH 0x1
007fcd64  6850020201  PUSH 0x1020250
007fcd69  8d4e44  LEA ECX,[ESI + 0x44]
007fcd6c  51  PUSH ECX
007fcd6d  8bc8  MOV ECX,EAX
007fcd6f  ffd2  CALL EDX
007fcd71  e85a3bdaff  CALL 0x005a08d0
007fcd76  8bf8  MOV EDI,EAX
007fcd78  85ff  TEST EDI,EDI
007fcd7a  743c  JZ 0x007fcdb8
007fcd7c  6a00  PUSH 0x0
007fcd7e  6a00  PUSH 0x0
007fcd80  6a00  PUSH 0x0
007fcd82  6a00  PUSH 0x0
007fcd84  681cd4fc00  PUSH 0xfcd41c
007fcd89  6a08  PUSH 0x8
007fcd8b  e87077ceff  CALL 0x004e4500
007fcd90  83c418  ADD ESP,0x18
007fcd93  85c0  TEST EAX,EAX
007fcd95  740f  JZ 0x007fcda6
007fcd97  c70004eeff00  MOV dword ptr [EAX],0xffee04
007fcd9d  c74004c0404b00  MOV dword ptr [EAX + 0x4],0x4b40c0
007fcda4  eb02  JMP 0x007fcda8
007fcda6  33c0  XOR EAX,EAX
007fcda8  8b17  MOV EDX,dword ptr [EDI]
007fcdaa  50  PUSH EAX
007fcdab  8b4258  MOV EAX,dword ptr [EDX + 0x58]
007fcdae  56  PUSH ESI
007fcdaf  68e8020201  PUSH 0x10202e8
007fcdb4  8bcf  MOV ECX,EDI
007fcdb6  ffd0  CALL EAX
007fcdb8  e8133bdaff  CALL 0x005a08d0
007fcdbd  85c0  TEST EAX,EAX
007fcdbf  7410  JZ 0x007fcdd1
007fcdc1  8b10  MOV EDX,dword ptr [EAX]
007fcdc3  68ffffff7f  PUSH 0x7fffffff
007fcdc8  8bc8  MOV ECX,EAX
007fcdca  8b4218  MOV EAX,dword ptr [EDX + 0x18]
007fcdcd  6a00  PUSH 0x0
007fcdcf  ffd0  CALL EAX
007fcdd1  e85a6bd9ff  CALL 0x00593930
007fcdd6  8bf0  MOV ESI,EAX
007fcdd8  a1489d1d01  MOV EAX,[0x011d9d48]
007fcddd  85c0  TEST EAX,EAX
007fcddf  741c  JZ 0x007fcdfd
007fcde1  8b16  MOV EDX,dword ptr [ESI]
007fcde3  50  PUSH EAX
007fcde4  8b4214  MOV EAX,dword ptr [EDX + 0x14]
007fcde7  8bce  MOV ECX,ESI
007fcde9  ffd0  CALL EAX
007fcdeb  8b0d489d1d01  MOV ECX,dword ptr [0x011d9d48]
007fcdf1  85c9  TEST ECX,ECX
007fcdf3  7408  JZ 0x007fcdfd
007fcdf5  8b11  MOV EDX,dword ptr [ECX]
007fcdf7  8b02  MOV EAX,dword ptr [EDX]
007fcdf9  6a01  PUSH 0x1
007fcdfb  ffd0  CALL EAX
007fcdfd  6a00  PUSH 0x0
007fcdff  6a00  PUSH 0x0
007fce01  6a00  PUSH 0x0
007fce03  6a00  PUSH 0x0
007fce05  680c040201  PUSH 0x102040c
007fce0a  6a18  PUSH 0x18
007fce0c  e8ef76ceff  CALL 0x004e4500
007fce11  8bf8  MOV EDI,EAX
007fce13  83c418  ADD ESP,0x18
007fce16  85ff  TEST EDI,EDI
007fce18  742c  JZ 0x007fce46
007fce1a  68d5b66028  PUSH 0x2860b6d5
007fce1f  68f4030201  PUSH 0x10203f4
007fce24  68d4030201  PUSH 0x10203d4
007fce29  8bcf  MOV ECX,EDI
007fce2b  e8d071fdff  CALL 0x007d4000
007fce30  c707c4030201  MOV dword ptr [EDI],0x10203c4
007fce36  c7470430540001  MOV dword ptr [EDI + 0x4],0x1005430
007fce3d  c74708a4030201  MOV dword ptr [EDI + 0x8],0x10203a4
007fce44  eb02  JMP 0x007fce48
007fce46  33ff  XOR EDI,EDI
007fce48  893d489d1d01  MOV dword ptr [0x011d9d48],EDI
007fce4e  8b16  MOV EDX,dword ptr [ESI]
007fce50  8b4210  MOV EAX,dword ptr [EDX + 0x10]
007fce53  6a00  PUSH 0x0
007fce55  57  PUSH EDI
007fce56  8bce  MOV ECX,ESI
007fce58  ffd0  CALL EAX
007fce5a  5f  POP EDI
007fce5b  b001  MOV AL,0x1
007fce5d  5e  POP ESI
007fce5e  c3  RET

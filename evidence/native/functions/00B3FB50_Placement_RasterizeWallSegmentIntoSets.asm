# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Placement_RasterizeWallSegmentIntoSets(undefined4 param_1, char param_2, char param_3, undefined4 param_4, float * param_5, float * param_6, void * param_7, void * param_8)
Owned ranges: [[00b3fb50, 00b3fba4] [00b3fbb0, 00b3fd45]]

00b3fb50  55  PUSH EBP
00b3fb51  8bec  MOV EBP,ESP
00b3fb53  83e4f8  AND ESP,0xfffffff8
00b3fb56  8b4514  MOV EAX,dword ptr [EBP + 0x14]
00b3fb59  8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
00b3fb5c  8b5518  MOV EDX,dword ptr [EBP + 0x18]
00b3fb5f  81ecdc000000  SUB ESP,0xdc
00b3fb65  53  PUSH EBX
00b3fb66  56  PUSH ESI
00b3fb67  57  PUSH EDI
00b3fb68  50  PUSH EAX
00b3fb69  51  PUSH ECX
00b3fb6a  52  PUSH EDX
00b3fb6b  8d4c247c  LEA ECX,[ESP + 0x7c]
00b3fb6f  e87cccffff  CALL 0x00b3c7f0
00b3fb74  80bc249400000000  CMP byte ptr [ESP + 0x94],0x0
00b3fb7c  0f84bd010000  JZ 0x00b3fd3f
00b3fb82  8b8c24b0000000  MOV ECX,dword ptr [ESP + 0xb0]
00b3fb89  8b8424ac000000  MOV EAX,dword ptr [ESP + 0xac]
00b3fb90  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00b3fb94  8b8c24b4000000  MOV ECX,dword ptr [ESP + 0xb4]
00b3fb9b  89442418  MOV dword ptr [ESP + 0x18],EAX
00b3fb9f  894c2420  MOV dword ptr [ESP + 0x20],ECX
00b3fba3  eb0b  JMP 0x00b3fbb0
00b3fba5  8da424000000008d642400  .byte 8da424000000008d642400 ; NONOWNED envelope gap bytes
00b3fbb0  80bc249400000000  CMP byte ptr [ESP + 0x94],0x0
00b3fbb8  0f8481010000  JZ 0x00b3fd3f
00b3fbbe  80bc24d100000000  CMP byte ptr [ESP + 0xd1],0x0
00b3fbc6  0f8573010000  JNZ 0x00b3fd3f
00b3fbcc  8b9c24c0000000  MOV EBX,dword ptr [ESP + 0xc0]
00b3fbd3  3bd9  CMP EBX,ECX
00b3fbd5  8bb424b8000000  MOV ESI,dword ptr [ESP + 0xb8]
00b3fbdc  8bbc24bc000000  MOV EDI,dword ptr [ESP + 0xbc]
00b3fbe3  89742458  MOV dword ptr [ESP + 0x58],ESI
00b3fbe7  897c245c  MOV dword ptr [ESP + 0x5c],EDI
00b3fbeb  895c2460  MOV dword ptr [ESP + 0x60],EBX
00b3fbef  7534  JNZ 0x00b3fc25
00b3fbf1  d98424b8000000  FLD float ptr [ESP + 0xb8]
00b3fbf8  d8642418  FSUB float ptr [ESP + 0x18]
00b3fbfc  d9e1  FABS
00b3fbfe  d90584d70601  FLD float ptr [0x0106d784]
00b3fc04  d9c9  FXCH
00b3fc06  dff1  FCOMIP ST0,ST1
00b3fc08  7719  JA 0x00b3fc23
00b3fc0a  d98424bc000000  FLD float ptr [ESP + 0xbc]
00b3fc11  d864241c  FSUB float ptr [ESP + 0x1c]
00b3fc15  d9e1  FABS
00b3fc17  dff1  FCOMIP ST0,ST1
00b3fc19  ddd8  FSTP ST0
00b3fc1b  0f860c010000  JBE 0x00b3fd2d
00b3fc21  eb02  JMP 0x00b3fc25
00b3fc23  ddd8  FSTP ST0
00b3fc25  d9442458  FLD float ptr [ESP + 0x58]
00b3fc29  db5c2428  FISTP dword ptr [ESP + 0x28]
00b3fc2d  0fb6542428  MOVZX EDX,byte ptr [ESP + 0x28]
00b3fc32  f30f108424bc000000  MOVSS XMM0,dword ptr [ESP + 0xbc]
00b3fc3b  88542410  MOV byte ptr [ESP + 0x10],DL
00b3fc3f  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
00b3fc45  d944243c  FLD float ptr [ESP + 0x3c]
00b3fc49  db5c2430  FISTP dword ptr [ESP + 0x30]
00b3fc4d  0fb6442430  MOVZX EAX,byte ptr [ESP + 0x30]
00b3fc52  88442411  MOV byte ptr [ESP + 0x11],AL
00b3fc56  885c2412  MOV byte ptr [ESP + 0x12],BL
00b3fc5a  d9442418  FLD float ptr [ESP + 0x18]
00b3fc5e  db5c2424  FISTP dword ptr [ESP + 0x24]
00b3fc62  0fb6542424  MOVZX EDX,byte ptr [ESP + 0x24]
00b3fc67  f30f1044241c  MOVSS XMM0,dword ptr [ESP + 0x1c]
00b3fc6d  88542413  MOV byte ptr [ESP + 0x13],DL
00b3fc71  f30f11442440  MOVSS dword ptr [ESP + 0x40],XMM0
00b3fc77  d9442440  FLD float ptr [ESP + 0x40]
00b3fc7b  db5c242c  FISTP dword ptr [ESP + 0x2c]
00b3fc7f  807d0c00  CMP byte ptr [EBP + 0xc],0x0
00b3fc83  0fb644242c  MOVZX EAX,byte ptr [ESP + 0x2c]
00b3fc88  f30f1084249c000000  MOVSS XMM0,dword ptr [ESP + 0x9c]
00b3fc91  884c2415  MOV byte ptr [ESP + 0x15],CL
00b3fc95  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00b3fc99  88442414  MOV byte ptr [ESP + 0x14],AL
00b3fc9d  668b542414  MOV DX,word ptr [ESP + 0x14]
00b3fca2  f30f11442464  MOVSS dword ptr [ESP + 0x64],XMM0
00b3fca8  f30f108424a0000000  MOVSS XMM0,dword ptr [ESP + 0xa0]
00b3fcb1  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00b3fcb5  f30f11442468  MOVSS dword ptr [ESP + 0x68],XMM0
00b3fcbb  894c2444  MOV dword ptr [ESP + 0x44],ECX
00b3fcbf  8b4c2468  MOV ECX,dword ptr [ESP + 0x68]
00b3fcc3  6689542448  MOV word ptr [ESP + 0x48],DX
00b3fcc8  8b9424b4000000  MOV EDX,dword ptr [ESP + 0xb4]
00b3fccf  8944244c  MOV dword ptr [ESP + 0x4c],EAX
00b3fcd3  894c2450  MOV dword ptr [ESP + 0x50],ECX
00b3fcd7  89542454  MOV dword ptr [ESP + 0x54],EDX
00b3fcdb  741f  JZ 0x00b3fcfc
00b3fcdd  c644243800  MOV byte ptr [ESP + 0x38],0x0
00b3fce2  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00b3fce6  50  PUSH EAX
00b3fce7  8d4c2448  LEA ECX,[ESP + 0x48]
00b3fceb  51  PUSH ECX
00b3fcec  8b4d20  MOV ECX,dword ptr [EBP + 0x20]
00b3fcef  8d9424e8000000  LEA EDX,[ESP + 0xe8]
00b3fcf6  52  PUSH EDX
00b3fcf7  e844faffff  CALL 0x00b3f740
00b3fcfc  807d1000  CMP byte ptr [EBP + 0x10],0x0
00b3fd00  741f  JZ 0x00b3fd21
00b3fd02  c644243400  MOV byte ptr [ESP + 0x34],0x0
00b3fd07  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00b3fd0b  50  PUSH EAX
00b3fd0c  8d4c2448  LEA ECX,[ESP + 0x48]
00b3fd10  51  PUSH ECX
00b3fd11  8b4d24  MOV ECX,dword ptr [EBP + 0x24]
00b3fd14  8d9424e0000000  LEA EDX,[ESP + 0xe0]
00b3fd1b  52  PUSH EDX
00b3fd1c  e81ffaffff  CALL 0x00b3f740
00b3fd21  89742418  MOV dword ptr [ESP + 0x18],ESI
00b3fd25  897c241c  MOV dword ptr [ESP + 0x1c],EDI
00b3fd29  895c2420  MOV dword ptr [ESP + 0x20],EBX
00b3fd2d  8d4c2470  LEA ECX,[ESP + 0x70]
00b3fd31  e80ae3ffff  CALL 0x00b3e040
00b3fd36  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00b3fd3a  e971feffff  JMP 0x00b3fbb0
00b3fd3f  5f  POP EDI
00b3fd40  5e  POP ESI
00b3fd41  5b  POP EBX
00b3fd42  8be5  MOV ESP,EBP
00b3fd44  5d  POP EBP
00b3fd45  c3  RET

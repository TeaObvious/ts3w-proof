# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cfeab0 ObjectTool_SetMode
# Body [[00cfeab0, 00cfec70]]; owned bytes=449
# ECX tool, mode DWORD and byte control in two words, RET8. With control0 and modeControl1, clears held pressed/current rotation/height/disposition state. Alt4 disables snap89 except B009F0 spiral staircase. Other shift/wall/copy flags and cursor updates remain native branches.
00cfeab0  53  PUSH EBX
00cfeab1  56  PUSH ESI
00cfeab2  8bf1  MOV ESI,ECX
00cfeab4  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cfeaba  8d8618010000  LEA EAX,[ESI + 0x118]
00cfeac0  50  PUSH EAX
00cfeac1  e8ea00f9ff  CALL 0x00c8ebb0
00cfeac6  33db  XOR EBX,EBX
00cfeac8  3bc3  CMP EAX,EBX
00cfeaca  7407  JZ 0x00cfead3
00cfeacc  8bc8  MOV ECX,EAX
00cfeace  e85d8cf9ff  CALL 0x00c97730
00cfead3  e8280affff  CALL 0x00cef500
00cfead8  3bc3  CMP EAX,EBX
00cfeada  7407  JZ 0x00cfeae3
00cfeadc  8bc8  MOV ECX,EAX
00cfeade  e86d5281ff  CALL 0x00513d50
00cfeae3  385c2410  CMP byte ptr [ESP + 0x10],BL
00cfeae7  754e  JNZ 0x00cfeb37
00cfeae9  f644240c01  TEST byte ptr [ESP + 0xc],0x1
00cfeaee  7447  JZ 0x00cfeb37
00cfeaf0  389ef7020000  CMP byte ptr [ESI + 0x2f7],BL
00cfeaf6  7405  JZ 0x00cfeafd
00cfeaf8  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00cfeafb  eb03  JMP 0x00cfeb00
00cfeafd  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00cfeb00  3bcb  CMP ECX,EBX
00cfeb02  7433  JZ 0x00cfeb37
00cfeb04  e8d7720200  CALL 0x00d25de0
00cfeb09  84c0  TEST AL,AL
00cfeb0b  742a  JZ 0x00cfeb37
00cfeb0d  389e8b000000  CMP byte ptr [ESI + 0x8b],BL
00cfeb13  7422  JZ 0x00cfeb37
00cfeb15  889e8b000000  MOV byte ptr [ESI + 0x8b],BL
00cfeb1b  889ecc010000  MOV byte ptr [ESI + 0x1cc],BL
00cfeb21  889ecd010000  MOV byte ptr [ESI + 0x1cd],BL
00cfeb27  889ece010000  MOV byte ptr [ESI + 0x1ce],BL
00cfeb2d  c786c8010000ffffffff  MOV dword ptr [ESI + 0x1c8],0xffffffff
00cfeb37  389ef7020000  CMP byte ptr [ESI + 0x2f7],BL
00cfeb3d  889eda010000  MOV byte ptr [ESI + 0x1da],BL
00cfeb43  889edf010000  MOV byte ptr [ESI + 0x1df],BL
00cfeb49  7405  JZ 0x00cfeb50
00cfeb4b  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cfeb4e  eb03  JMP 0x00cfeb53
00cfeb50  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cfeb53  3bc3  CMP EAX,EBX
00cfeb55  7405  JZ 0x00cfeb5c
00cfeb57  8b4058  MOV EAX,dword ptr [EAX + 0x58]
00cfeb5a  eb02  JMP 0x00cfeb5e
00cfeb5c  33c0  XOR EAX,EAX
00cfeb5e  50  PUSH EAX
00cfeb5f  e8fc19e0ff  CALL 0x00b00560
00cfeb64  83c404  ADD ESP,0x4
00cfeb67  8bce  MOV ECX,ESI
00cfeb69  50  PUSH EAX
00cfeb6a  e861ebfeff  CALL 0x00ced6d0
00cfeb6f  f644240c02  TEST byte ptr [ESP + 0xc],0x2
00cfeb74  7474  JZ 0x00cfebea
00cfeb76  389ef7020000  CMP byte ptr [ESI + 0x2f7],BL
00cfeb7c  7405  JZ 0x00cfeb83
00cfeb7e  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cfeb81  eb03  JMP 0x00cfeb86
00cfeb83  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cfeb86  3bc3  CMP EAX,EBX
00cfeb88  7405  JZ 0x00cfeb8f
00cfeb8a  8b4058  MOV EAX,dword ptr [EAX + 0x58]
00cfeb8d  eb02  JMP 0x00cfeb91
00cfeb8f  33c0  XOR EAX,EAX
00cfeb91  50  PUSH EAX
00cfeb92  e8e91ce0ff  CALL 0x00b00880
00cfeb97  83c404  ADD ESP,0x4
00cfeb9a  84c0  TEST AL,AL
00cfeb9c  753c  JNZ 0x00cfebda
00cfeb9e  389ef7020000  CMP byte ptr [ESI + 0x2f7],BL
00cfeba4  7405  JZ 0x00cfebab
00cfeba6  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cfeba9  eb03  JMP 0x00cfebae
00cfebab  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cfebae  3bc3  CMP EAX,EBX
00cfebb0  7405  JZ 0x00cfebb7
00cfebb2  8b4058  MOV EAX,dword ptr [EAX + 0x58]
00cfebb5  eb02  JMP 0x00cfebb9
00cfebb7  33c0  XOR EAX,EAX
00cfebb9  50  PUSH EAX
00cfebba  e8311ee0ff  CALL 0x00b009f0
00cfebbf  83c404  ADD ESP,0x4
00cfebc2  84c0  TEST AL,AL
00cfebc4  7514  JNZ 0x00cfebda
00cfebc6  8b16  MOV EDX,dword ptr [ESI]
00cfebc8  8b8290000000  MOV EAX,dword ptr [EDX + 0x90]
00cfebce  8bce  MOV ECX,ESI
00cfebd0  ffd0  CALL EAX
00cfebd2  8886da010000  MOV byte ptr [ESI + 0x1da],AL
00cfebd8  eb10  JMP 0x00cfebea
00cfebda  6a01  PUSH 0x1
00cfebdc  8bce  MOV ECX,ESI
00cfebde  e8edeafeff  CALL 0x00ced6d0
00cfebe3  c686df01000001  MOV byte ptr [ESI + 0x1df],0x1
00cfebea  f644240c04  TEST byte ptr [ESP + 0xc],0x4
00cfebef  7430  JZ 0x00cfec21
00cfebf1  389ef7020000  CMP byte ptr [ESI + 0x2f7],BL
00cfebf7  7405  JZ 0x00cfebfe
00cfebf9  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cfebfc  eb03  JMP 0x00cfec01
00cfebfe  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00cfec01  3bc3  CMP EAX,EBX
00cfec03  7405  JZ 0x00cfec0a
00cfec05  8b4058  MOV EAX,dword ptr [EAX + 0x58]
00cfec08  eb02  JMP 0x00cfec0c
00cfec0a  33c0  XOR EAX,EAX
00cfec0c  50  PUSH EAX
00cfec0d  e8de1de0ff  CALL 0x00b009f0
00cfec12  83c404  ADD ESP,0x4
00cfec15  84c0  TEST AL,AL
00cfec17  7508  JNZ 0x00cfec21
00cfec19  889e89000000  MOV byte ptr [ESI + 0x89],BL
00cfec1f  eb07  JMP 0x00cfec28
00cfec21  c6868900000001  MOV byte ptr [ESI + 0x89],0x1
00cfec28  837c240c03  CMP dword ptr [ESP + 0xc],0x3
00cfec2d  7530  JNZ 0x00cfec5f
00cfec2f  389ef7020000  CMP byte ptr [ESI + 0x2f7],BL
00cfec35  7405  JZ 0x00cfec3c
00cfec37  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00cfec3a  eb03  JMP 0x00cfec3f
00cfec3c  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00cfec3f  3bcb  CMP ECX,EBX
00cfec41  7409  JZ 0x00cfec4c
00cfec43  e898710200  CALL 0x00d25de0
00cfec48  84c0  TEST AL,AL
00cfec4a  7519  JNZ 0x00cfec65
00cfec4c  8bce  MOV ECX,ESI
00cfec4e  c6868a00000001  MOV byte ptr [ESI + 0x8a],0x1
00cfec55  e8f6dbffff  CALL 0x00cfc850
00cfec5a  5e  POP ESI
00cfec5b  5b  POP EBX
00cfec5c  c20800  RET 0x8
00cfec5f  889e8a000000  MOV byte ptr [ESI + 0x8a],BL
00cfec65  8bce  MOV ECX,ESI
00cfec67  e8e4dbffff  CALL 0x00cfc850
00cfec6c  5e  POP ESI
00cfec6d  5b  POP EBX
00cfec6e  c20800  RET 0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name LayoutXml_ReadObject
Owned ranges: [[0054bd80, 0054bee5]]
Signature: void * __thiscall LayoutXml_ReadObject(uint * outObjectId)
Physical ABI: ECX reader; stack+4 uint32 object-ID output pointer; EAX created object/null; RET4 on every return. Existing fastcall metadata omits stack output.

0054bd80  83ec10  SUB ESP,0x10
0054bd83  55  PUSH EBP
0054bd84  56  PUSH ESI
0054bd85  8bf1  MOV ESI,ECX
0054bd87  57  PUSH EDI
0054bd88  8dbe98000000  LEA EDI,[ESI + 0x98]
0054bd8e  68cc20fc00  PUSH 0xfc20cc
0054bd93  8bcf  MOV ECX,EDI
0054bd95  e8c651f2ff  CALL 0x00470f60
0054bd9a  68c020fc00  PUSH 0xfc20c0
0054bd9f  8bcf  MOV ECX,EDI
0054bda1  8be8  MOV EBP,EAX
0054bda3  e8b851f2ff  CALL 0x00470f60 ; Required clsid attribute is independent of optional id; absence reports2FC50002.
0054bda8  85c0  TEST EAX,EAX
0054bdaa  753f  JNZ 0x0054bdeb
0054bdac  394650  CMP dword ptr [ESI + 0x50],EAX
0054bdaf  c7465c0200c52f  MOV dword ptr [ESI + 0x5c],0x2fc50002
0054bdb6  7428  JZ 0x0054bde0
0054bdb8  8b4654  MOV EAX,dword ptr [ESI + 0x54]
0054bdbb  50  PUSH EAX
0054bdbc  8bcf  MOV ECX,EDI
0054bdbe  e82d51f2ff  CALL 0x00470ef0
0054bdc3  50  PUSH EAX
0054bdc4  8bcf  MOV ECX,EDI
0054bdc6  e80551f2ff  CALL 0x00470ed0
0054bdcb  50  PUSH EAX
0054bdcc  8bcf  MOV ECX,EDI
0054bdce  e82d47ecff  CALL 0x00410500
0054bdd3  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
0054bdd6  8b5650  MOV EDX,dword ptr [ESI + 0x50]
0054bdd9  50  PUSH EAX
0054bdda  51  PUSH ECX
0054bddb  ffd2  CALL EDX
0054bddd  83c414  ADD ESP,0x14
0054bde0  5f  POP EDI
0054bde1  5e  POP ESI
0054bde2  33c0  XOR EAX,EAX
0054bde4  5d  POP EBP
0054bde5  83c410  ADD ESP,0x10
0054bde8  c20400  RET 0x4
0054bdeb  53  PUSH EBX
0054bdec  8b1d5867f900  MOV EBX,dword ptr [0x00f96758]
0054bdf2  6a00  PUSH 0x0
0054bdf4  6a00  PUSH 0x0
0054bdf6  50  PUSH EAX
0054bdf7  ffd3  CALL EBX ; Convert clsid using imported wide unsigned radix0 conversion, null end-output; factory/query semantics remain separate.
0054bdf9  83c40c  ADD ESP,0xc
0054bdfc  8bf8  MOV EDI,EAX
0054bdfe  e8add0f8ff  CALL 0x004d8eb0
0054be03  8b10  MOV EDX,dword ptr [EAX]
0054be05  6a00  PUSH 0x0
0054be07  6a00  PUSH 0x0
0054be09  686e513fee  PUSH 0xee3f516e
0054be0e  8bc8  MOV ECX,EAX
0054be10  8b4220  MOV EAX,dword ptr [EDX + 0x20]
0054be13  57  PUSH EDI
0054be14  ffd0  CALL EAX
0054be16  8bf8  MOV EDI,EAX
0054be18  85ff  TEST EDI,EDI
0054be1a  7518  JNZ 0x0054be34
0054be1c  680200c52f  PUSH 0x2fc50002
0054be21  8bce  MOV ECX,ESI
0054be23  e808ecffff  CALL 0x0054aa30
0054be28  5b  POP EBX
0054be29  5f  POP EDI
0054be2a  5e  POP ESI
0054be2b  33c0  XOR EAX,EAX
0054be2d  5d  POP EBP
0054be2e  83c410  ADD ESP,0x10
0054be31  c20400  RET 0x4
0054be34  85ed  TEST EBP,EBP
0054be36  7445  JZ 0x0054be7d
0054be38  6a00  PUSH 0x0
0054be3a  6a00  PUSH 0x0
0054be3c  55  PUSH EBP
0054be3d  ffd3  CALL EBX
0054be3f  8b5c2430  MOV EBX,dword ptr [ESP + 0x30] ; The physical stack input is a writable object-ID output pointer, not an uninitialized local in actual C.
0054be43  83c40c  ADD ESP,0xc
0054be46  85c0  TEST EAX,EAX
0054be48  8903  MOV dword ptr [EBX],EAX ; Write supplied radix0 ID before conditional export registration; authored0 has its own path.
0054be4a  744e  JZ 0x0054be9a
0054be4c  0500000100  ADD EAX,0x10000
0054be51  3dff7f0000  CMP EAX,0x7fff
0054be56  7632  JBE 0x0054be8a
0054be58  8b8e88000000  MOV ECX,dword ptr [ESI + 0x88]
0054be5e  6a02  PUSH 0x2
0054be60  e87bdeffff  CALL 0x00549ce0
0054be65  84c0  TEST AL,AL
0054be67  7421  JZ 0x0054be8a
0054be69  8b0b  MOV ECX,dword ptr [EBX]
0054be6b  57  PUSH EDI
0054be6c  51  PUSH ECX
0054be6d  8b8e88000000  MOV ECX,dword ptr [ESI + 0x88]
0054be73  83c144  ADD ECX,0x44
0054be76  e8d5fbffff  CALL 0x0054ba50
0054be7b  eb0d  JMP 0x0054be8a
0054be7d  8b5658  MOV EDX,dword ptr [ESI + 0x58]
0054be80  8b5c2424  MOV EBX,dword ptr [ESP + 0x24] ; Absent ID writes current generated counter then increments it; do not reinterpret the counter as live object identity.
0054be84  8913  MOV dword ptr [EBX],EDX
0054be86  83465801  ADD dword ptr [ESI + 0x58],0x1
0054be8a  833b00  CMP dword ptr [EBX],0x0
0054be8d  740b  JZ 0x0054be9a
0054be8f  53  PUSH EBX
0054be90  8d4e68  LEA ECX,[ESI + 0x68]
0054be93  e878891000  CALL 0x00654810
0054be98  8938  MOV dword ptr [EAX],EDI
0054be9a  8b07  MOV EAX,dword ptr [EDI]
0054be9c  8b10  MOV EDX,dword ptr [EAX]
0054be9e  8bcf  MOV ECX,EDI
0054bea0  ffd2  CALL EDX
0054bea2  8b07  MOV EAX,dword ptr [EDI]
0054bea4  8b500c  MOV EDX,dword ptr [EAX + 0xc]
0054bea7  688283c5ee  PUSH 0xeec58382
0054beac  8bcf  MOV ECX,EDI
0054beae  ffd2  CALL EDX
0054beb0  85c0  TEST EAX,EAX
0054beb2  7426  JZ 0x0054beda
0054beb4  8b10  MOV EDX,dword ptr [EAX]
0054beb6  8b5210  MOV EDX,dword ptr [EDX + 0x10]
0054beb9  8d4c2410  LEA ECX,[ESP + 0x10]
0054bebd  51  PUSH ECX
0054bebe  8bc8  MOV ECX,EAX
0054bec0  ffd2  CALL EDX
0054bec2  8d4660  LEA EAX,[ESI + 0x60]
0054bec5  50  PUSH EAX
0054bec6  8d4c2414  LEA ECX,[ESP + 0x14]
0054beca  51  PUSH ECX
0054becb  8bce  MOV ECX,ESI
0054becd  e82efdffff  CALL 0x0054bc00 ; Read properties on created object context; AL failure returns null after possible partial writes.
0054bed2  84c0  TEST AL,AL
0054bed4  0f844effffff  JZ 0x0054be28
0054beda  5b  POP EBX
0054bedb  8bc7  MOV EAX,EDI
0054bedd  5f  POP EDI
0054bede  5e  POP ESI
0054bedf  5d  POP EBP
0054bee0  83c410  ADD ESP,0x10
0054bee3  c20400  RET 0x4 ; RET4 proves the omitted stack output argument; successful return is EAX object pointer.

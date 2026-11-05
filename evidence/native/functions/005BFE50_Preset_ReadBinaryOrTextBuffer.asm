# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Preset_ReadBinaryOrTextBuffer
Paired actual annotated Ghidra pseudocode: 005BFE50_Preset_ReadBinaryOrTextBuffer.c
Owned ranges: [[005bfe50, 005bff67]]
Envelope bytes=280

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005bfe50  83ec48  SUB ESP,0x48
005bfe53  53  PUSH EBX
005bfe54  56  PUSH ESI
005bfe55  57  PUSH EDI
005bfe56  8bf1  MOV ESI,ECX
005bfe58  e8e3fcffff  CALL 0x005bfb40
005bfe5d  8b44245c  MOV EAX,dword ptr [ESP + 0x5c]
005bfe61  8b7c2458  MOV EDI,dword ptr [ESP + 0x58]
005bfe65  bb01000000  MOV EBX,0x1
005bfe6a  3bc3  CMP EAX,EBX
005bfe6c  885c240f  MOV byte ptr [ESP + 0xf],BL
005bfe70  765c  JBE 0x005bfece
005bfe72  803f42  CMP byte ptr [EDI],0x42
005bfe75  7557  JNZ 0x005bfece
005bfe77  6a00  PUSH 0x0
005bfe79  6a00  PUSH 0x0
005bfe7b  6a00  PUSH 0x0
005bfe7d  53  PUSH EBX
005bfe7e  50  PUSH EAX
005bfe7f  57  PUSH EDI
005bfe80  8d4c2440  LEA ECX,[ESP + 0x40]
005bfe84  e837f6f1ff  CALL 0x004df4c0
005bfe89  015c2434  ADD dword ptr [ESP + 0x34],EBX
005bfe8d  53  PUSH EBX
005bfe8e  8d44242c  LEA EAX,[ESP + 0x2c]
005bfe92  50  PUSH EAX
005bfe93  8d4c2418  LEA ECX,[ESP + 0x18]
005bfe97  e844952100  CALL 0x007d93e0
005bfe9c  6a00  PUSH 0x0
005bfe9e  8d4c2414  LEA ECX,[ESP + 0x14]
005bfea2  51  PUSH ECX
005bfea3  8bce  MOV ECX,ESI
005bfea5  e816f8ffff  CALL 0x005bf6c0
005bfeaa  8d4c2410  LEA ECX,[ESP + 0x10]
005bfeae  8844240f  MOV byte ptr [ESP + 0xf],AL
005bfeb2  e8d97a2100  CALL 0x007d7990
005bfeb7  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
005bfebb  85c9  TEST ECX,ECX
005bfebd  c7442428006cfb00  MOV dword ptr [ESP + 0x28],0xfb6c00
005bfec5  7466  JZ 0x005bff2d
005bfec7  e834eff1ff  CALL 0x004dee00
005bfecc  eb5f  JMP 0x005bff2d
005bfece  8b5c2460  MOV EBX,dword ptr [ESP + 0x60]
005bfed2  53  PUSH EBX
005bfed3  50  PUSH EAX
005bfed4  57  PUSH EDI
005bfed5  8bce  MOV ECX,ESI
005bfed7  e864f2ffff  CALL 0x005bf140
005bfedc  84c0  TEST AL,AL
005bfede  754d  JNZ 0x005bff2d
005bfee0  84db  TEST BL,BL
005bfee2  7415  JZ 0x005bfef9
005bfee4  8b54245c  MOV EDX,dword ptr [ESP + 0x5c]
005bfee8  d1ea  SHR EDX,0x1
005bfeea  8d0457  LEA EAX,[EDI + EDX*0x2]
005bfeed  50  PUSH EAX
005bfeee  57  PUSH EDI
005bfeef  8d4e2c  LEA ECX,[ESI + 0x2c]
005bfef2  e8698ee4ff  CALL 0x00408d60
005bfef7  eb34  JMP 0x005bff2d
005bfef9  8b4c245c  MOV ECX,dword ptr [ESP + 0x5c]
005bfefd  55  PUSH EBP
005bfefe  8d6e2c  LEA EBP,[ESI + 0x2c]
005bff01  51  PUSH ECX
005bff02  8bcd  MOV ECX,EBP
005bff04  e837c7e4ff  CALL 0x0040c640
005bff09  8b4500  MOV EAX,dword ptr [EBP]
005bff0c  6a10  PUSH 0x10
005bff0e  8d542464  LEA EDX,[ESP + 0x64]
005bff12  52  PUSH EDX
005bff13  50  PUSH EAX
005bff14  8b44246c  MOV EAX,dword ptr [ESP + 0x6c]
005bff18  6a08  PUSH 0x8
005bff1a  50  PUSH EAX
005bff1b  57  PUSH EDI
005bff1c  e8cf41f3ff  CALL 0x004f40f0
005bff21  83c418  ADD ESP,0x18
005bff24  50  PUSH EAX
005bff25  8bcd  MOV ECX,EBP
005bff27  e814c7e4ff  CALL 0x0040c640
005bff2c  5d  POP EBP
005bff2d  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
005bff30  3b4e30  CMP ECX,dword ptr [ESI + 0x30]
005bff33  bf60000000  MOV EDI,0x60
005bff38  740b  JZ 0x005bff45
005bff3a  8b7e30  MOV EDI,dword ptr [ESI + 0x30]
005bff3d  2bf9  SUB EDI,ECX
005bff3f  d1ff  SAR EDI,0x1
005bff41  8d7c3f62  LEA EDI,[EDI + EDI*0x1 + 0x62]
005bff45  8b4e28  MOV ECX,dword ptr [ESI + 0x28]
005bff48  85c9  TEST ECX,ECX
005bff4a  7407  JZ 0x005bff53
005bff4c  e88f0a0000  CALL 0x005c09e0
005bff51  03f8  ADD EDI,EAX
005bff53  57  PUSH EDI
005bff54  8bce  MOV ECX,ESI
005bff56  e8851c1700  CALL 0x00731be0
005bff5b  8a44240f  MOV AL,byte ptr [ESP + 0xf]
005bff5f  5f  POP EDI
005bff60  5e  POP ESI
005bff61  5b  POP EBX
005bff62  83c448  ADD ESP,0x48
005bff65  c20c00  RET 0xc
Owned instructions=103 owned bytes=280 gap/nonowned bytes=0

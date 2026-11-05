# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ThumbnailSizes_ReadIniSection
Paired actual annotated Ghidra pseudocode: 00D53D90_ThumbnailSizes_ReadIniSection.c
Owned ranges: [[00d53d90, 00d53eec]]
Envelope bytes=349

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00d53d90  83ec18  SUB ESP,0x18
00d53d93  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00d53d97  53  PUSH EBX
00d53d98  8b5804  MOV EBX,dword ptr [EAX + 0x4]
00d53d9b  56  PUSH ESI
00d53d9c  8b30  MOV ESI,dword ptr [EAX]
00d53d9e  57  PUSH EDI
00d53d9f  8b7c2428  MOV EDI,dword ptr [ESP + 0x28]
00d53da3  57  PUSH EDI
00d53da4  e877c2a7ff  CALL 0x007d0020
00d53da9  89442414  MOV dword ptr [ESP + 0x14],EAX
00d53dad  8d4c2410  LEA ECX,[ESP + 0x10]
00d53db1  51  PUSH ECX
00d53db2  8d542438  LEA EDX,[ESP + 0x38]
00d53db6  52  PUSH EDX
00d53db7  b880000000  MOV EAX,0x80
00d53dbc  6689442422  MOV word ptr [ESP + 0x22],AX
00d53dc1  6689442428  MOV word ptr [ESP + 0x28],AX
00d53dc6  68249f0801  PUSH 0x1089f24
00d53dcb  b800020000  MOV EAX,0x200
00d53dd0  6689442432  MOV word ptr [ESP + 0x32],AX
00d53dd5  6689442430  MOV word ptr [ESP + 0x30],AX
00d53dda  8b06  MOV EAX,dword ptr [ESI]
00d53ddc  8b4034  MOV EAX,dword ptr [EAX + 0x34]
00d53ddf  6818420501  PUSH 0x1054218
00d53de4  57  PUSH EDI
00d53de5  56  PUSH ESI
00d53de6  66c74424302000  MOV word ptr [ESP + 0x30],0x20
00d53ded  66c74424344000  MOV word ptr [ESP + 0x34],0x40
00d53df4  ffd0  CALL EAX
00d53df6  83c41c  ADD ESP,0x1c
00d53df9  83f802  CMP EAX,0x2
00d53dfc  7514  JNZ 0x00d53e12
00d53dfe  668b4c2430  MOV CX,word ptr [ESP + 0x30]
00d53e03  668b54240c  MOV DX,word ptr [ESP + 0xc]
00d53e08  66894c2414  MOV word ptr [ESP + 0x14],CX
00d53e0d  6689542416  MOV word ptr [ESP + 0x16],DX
00d53e12  8b06  MOV EAX,dword ptr [ESI]
00d53e14  8b4034  MOV EAX,dword ptr [EAX + 0x34]
00d53e17  8d4c240c  LEA ECX,[ESP + 0xc]
00d53e1b  51  PUSH ECX
00d53e1c  8d542434  LEA EDX,[ESP + 0x34]
00d53e20  52  PUSH EDX
00d53e21  68249f0801  PUSH 0x1089f24
00d53e26  6808420501  PUSH 0x1054208
00d53e2b  57  PUSH EDI
00d53e2c  56  PUSH ESI
00d53e2d  ffd0  CALL EAX
00d53e2f  83c418  ADD ESP,0x18
00d53e32  83f802  CMP EAX,0x2
00d53e35  7514  JNZ 0x00d53e4b
00d53e37  668b4c2430  MOV CX,word ptr [ESP + 0x30]
00d53e3c  668b54240c  MOV DX,word ptr [ESP + 0xc]
00d53e41  66894c2418  MOV word ptr [ESP + 0x18],CX
00d53e46  668954241a  MOV word ptr [ESP + 0x1a],DX
00d53e4b  8b06  MOV EAX,dword ptr [ESI]
00d53e4d  8b4034  MOV EAX,dword ptr [EAX + 0x34]
00d53e50  8d4c240c  LEA ECX,[ESP + 0xc]
00d53e54  51  PUSH ECX
00d53e55  8d542434  LEA EDX,[ESP + 0x34]
00d53e59  52  PUSH EDX
00d53e5a  68249f0801  PUSH 0x1089f24
00d53e5f  68fc410501  PUSH 0x10541fc
00d53e64  57  PUSH EDI
00d53e65  56  PUSH ESI
00d53e66  ffd0  CALL EAX
00d53e68  83c418  ADD ESP,0x18
00d53e6b  83f802  CMP EAX,0x2
00d53e6e  7514  JNZ 0x00d53e84
00d53e70  668b4c2430  MOV CX,word ptr [ESP + 0x30]
00d53e75  668b54240c  MOV DX,word ptr [ESP + 0xc]
00d53e7a  66894c241c  MOV word ptr [ESP + 0x1c],CX
00d53e7f  668954241e  MOV word ptr [ESP + 0x1e],DX
00d53e84  8b06  MOV EAX,dword ptr [ESI]
00d53e86  8b4034  MOV EAX,dword ptr [EAX + 0x34]
00d53e89  8d4c240c  LEA ECX,[ESP + 0xc]
00d53e8d  51  PUSH ECX
00d53e8e  8d542434  LEA EDX,[ESP + 0x34]
00d53e92  52  PUSH EDX
00d53e93  68249f0801  PUSH 0x1089f24
00d53e98  68149f0801  PUSH 0x1089f14
00d53e9d  57  PUSH EDI
00d53e9e  56  PUSH ESI
00d53e9f  ffd0  CALL EAX
00d53ea1  83c418  ADD ESP,0x18
00d53ea4  83f802  CMP EAX,0x2
00d53ea7  7514  JNZ 0x00d53ebd
00d53ea9  668b4c2430  MOV CX,word ptr [ESP + 0x30]
00d53eae  668b54240c  MOV DX,word ptr [ESP + 0xc]
00d53eb3  66894c2420  MOV word ptr [ESP + 0x20],CX
00d53eb8  6689542422  MOV word ptr [ESP + 0x22],DX
00d53ebd  8d442410  LEA EAX,[ESP + 0x10]
00d53ec1  50  PUSH EAX
00d53ec2  8bcb  MOV ECX,EBX
00d53ec4  e8d7deffff  CALL 0x00d51da0
00d53ec9  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d53ecd  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00d53ed1  8908  MOV dword ptr [EAX],ECX
00d53ed3  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00d53ed7  895004  MOV dword ptr [EAX + 0x4],EDX
00d53eda  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00d53ede  5f  POP EDI
00d53edf  894808  MOV dword ptr [EAX + 0x8],ECX
00d53ee2  5e  POP ESI
00d53ee3  89500c  MOV dword ptr [EAX + 0xc],EDX
00d53ee6  b001  MOV AL,0x1
00d53ee8  5b  POP EBX
00d53ee9  83c418  ADD ESP,0x18
00d53eec  c3  RET
Owned instructions=109 owned bytes=349 gap/nonowned bytes=0

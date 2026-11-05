# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int Utf16Scan_DispatchArgumentList(ushort * inputUtf16, ushort * formatUtf16, pointer argumentPointers)
Owned ranges: [[004fdb00, 004fdb79] [004fdb80, 004fdd8d]]

004fdb00  83ec50  SUB ESP,0x50
004fdb03  53  PUSH EBX
004fdb04  8b1d30f31401  MOV EBX,dword ptr [0x0114f330]
004fdb0a  56  PUSH ESI
004fdb0b  57  PUSH EDI
004fdb0c  8b7c2464  MOV EDI,dword ptr [ESP + 0x64]
004fdb10  6a25  PUSH 0x25
004fdb12  57  PUSH EDI
004fdb13  33f6  XOR ESI,ESI
004fdb15  ffd3  CALL EBX
004fdb17  83c408  ADD ESP,0x8
004fdb1a  85c0  TEST EAX,EAX
004fdb1c  744d  JZ 0x004fdb6b
004fdb1e  8bff  MOV EDI,EDI
004fdb20  66833825  CMP word ptr [EAX],0x25
004fdb24  7545  JNZ 0x004fdb6b
004fdb26  83fe14  CMP ESI,0x14
004fdb29  7d40  JGE 0x004fdb6b
004fdb2b  0fb74802  MOVZX ECX,word ptr [EAX + 0x2]
004fdb2f  83c1e0  ADD ECX,-0x20
004fdb32  83f90d  CMP ECX,0xd
004fdb35  7722  JA 0x004fdb59
004fdb37  0fb689a0dd4f00  MOVZX ECX,byte ptr [ECX + 0x4fdda0]
004fdb3e  ff248d90dd4f00  JMP dword ptr [ECX*0x4 + 0x4fdd90]
004fdb45  83c002  ADD EAX,0x2
004fdb48  eb12  JMP 0x004fdb5c
004fdb4a  0fb74804  MOVZX ECX,word ptr [EAX + 0x4]
004fdb4e  6685c9  TEST CX,CX
004fdb51  7406  JZ 0x004fdb59
004fdb53  6683f92a  CMP CX,0x2a
004fdb57  7403  JZ 0x004fdb5c
004fdb59  83c601  ADD ESI,0x1
004fdb5c  83c002  ADD EAX,0x2
004fdb5f  6a25  PUSH 0x25
004fdb61  50  PUSH EAX
004fdb62  ffd3  CALL EBX
004fdb64  83c408  ADD ESP,0x8
004fdb67  85c0  TEST EAX,EAX
004fdb69  75b5  JNZ 0x004fdb20
004fdb6b  33c0  XOR EAX,EAX
004fdb6d  85f6  TEST ESI,ESI
004fdb6f  7e20  JLE 0x004fdb91
004fdb71  8b4c2468  MOV ECX,dword ptr [ESP + 0x68]
004fdb75  83c1fc  ADD ECX,-0x4
004fdb78  eb06  JMP 0x004fdb80
004fdb7a  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
004fdb80  8b5104  MOV EDX,dword ptr [ECX + 0x4]
004fdb83  83c104  ADD ECX,0x4
004fdb86  8954840c  MOV dword ptr [ESP + EAX*0x4 + 0xc],EDX
004fdb8a  83c001  ADD EAX,0x1
004fdb8d  3bc6  CMP EAX,ESI
004fdb8f  7cef  JL 0x004fdb80
004fdb91  83fe0a  CMP ESI,0xa
004fdb94  a134f31401  MOV EAX,[0x0114f334]
004fdb99  0f87e6010000  JA 0x004fdd85
004fdb9f  ff24b5b0dd4f00  JMP dword ptr [ESI*0x4 + 0x4fddb0]
004fdba6  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
004fdbaa  57  PUSH EDI
004fdbab  51  PUSH ECX
004fdbac  ffd0  CALL EAX
004fdbae  83c408  ADD ESP,0x8
004fdbb1  5f  POP EDI
004fdbb2  5e  POP ESI
004fdbb3  5b  POP EBX
004fdbb4  83c450  ADD ESP,0x50
004fdbb7  c3  RET
004fdbb8  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
004fdbbc  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
004fdbc0  52  PUSH EDX
004fdbc1  57  PUSH EDI
004fdbc2  51  PUSH ECX
004fdbc3  ffd0  CALL EAX
004fdbc5  83c40c  ADD ESP,0xc
004fdbc8  5f  POP EDI
004fdbc9  5e  POP ESI
004fdbca  5b  POP EBX
004fdbcb  83c450  ADD ESP,0x50
004fdbce  c3  RET
004fdbcf  8b542410  MOV EDX,dword ptr [ESP + 0x10]
004fdbd3  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
004fdbd7  52  PUSH EDX
004fdbd8  8b542464  MOV EDX,dword ptr [ESP + 0x64]
004fdbdc  51  PUSH ECX
004fdbdd  57  PUSH EDI
004fdbde  52  PUSH EDX
004fdbdf  ffd0  CALL EAX
004fdbe1  83c410  ADD ESP,0x10
004fdbe4  5f  POP EDI
004fdbe5  5e  POP ESI
004fdbe6  5b  POP EBX
004fdbe7  83c450  ADD ESP,0x50
004fdbea  c3  RET
004fdbeb  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
004fdbef  8b542410  MOV EDX,dword ptr [ESP + 0x10]
004fdbf3  51  PUSH ECX
004fdbf4  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
004fdbf8  52  PUSH EDX
004fdbf9  8b542468  MOV EDX,dword ptr [ESP + 0x68]
004fdbfd  51  PUSH ECX
004fdbfe  57  PUSH EDI
004fdbff  52  PUSH EDX
004fdc00  ffd0  CALL EAX
004fdc02  83c414  ADD ESP,0x14
004fdc05  5f  POP EDI
004fdc06  5e  POP ESI
004fdc07  5b  POP EBX
004fdc08  83c450  ADD ESP,0x50
004fdc0b  c3  RET
004fdc0c  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004fdc10  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004fdc14  51  PUSH ECX
004fdc15  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
004fdc19  52  PUSH EDX
004fdc1a  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004fdc1e  51  PUSH ECX
004fdc1f  8b4c246c  MOV ECX,dword ptr [ESP + 0x6c]
004fdc23  52  PUSH EDX
004fdc24  57  PUSH EDI
004fdc25  51  PUSH ECX
004fdc26  ffd0  CALL EAX
004fdc28  83c418  ADD ESP,0x18
004fdc2b  5f  POP EDI
004fdc2c  5e  POP ESI
004fdc2d  5b  POP EBX
004fdc2e  83c450  ADD ESP,0x50
004fdc31  c3  RET
004fdc32  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
004fdc36  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004fdc3a  52  PUSH EDX
004fdc3b  8b542418  MOV EDX,dword ptr [ESP + 0x18]
004fdc3f  51  PUSH ECX
004fdc40  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004fdc44  52  PUSH EDX
004fdc45  8b542418  MOV EDX,dword ptr [ESP + 0x18]
004fdc49  51  PUSH ECX
004fdc4a  8b4c2470  MOV ECX,dword ptr [ESP + 0x70]
004fdc4e  52  PUSH EDX
004fdc4f  57  PUSH EDI
004fdc50  51  PUSH ECX
004fdc51  ffd0  CALL EAX
004fdc53  83c41c  ADD ESP,0x1c
004fdc56  5f  POP EDI
004fdc57  5e  POP ESI
004fdc58  5b  POP EBX
004fdc59  83c450  ADD ESP,0x50
004fdc5c  c3  RET
004fdc5d  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004fdc61  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
004fdc65  52  PUSH EDX
004fdc66  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
004fdc6a  51  PUSH ECX
004fdc6b  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
004fdc6f  52  PUSH EDX
004fdc70  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
004fdc74  51  PUSH ECX
004fdc75  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
004fdc79  52  PUSH EDX
004fdc7a  8b542474  MOV EDX,dword ptr [ESP + 0x74]
004fdc7e  51  PUSH ECX
004fdc7f  57  PUSH EDI
004fdc80  52  PUSH EDX
004fdc81  ffd0  CALL EAX
004fdc83  83c420  ADD ESP,0x20
004fdc86  5f  POP EDI
004fdc87  5e  POP ESI
004fdc88  5b  POP EBX
004fdc89  83c450  ADD ESP,0x50
004fdc8c  c3  RET
004fdc8d  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
004fdc91  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004fdc95  51  PUSH ECX
004fdc96  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
004fdc9a  52  PUSH EDX
004fdc9b  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004fdc9f  51  PUSH ECX
004fdca0  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
004fdca4  52  PUSH EDX
004fdca5  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004fdca9  51  PUSH ECX
004fdcaa  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
004fdcae  52  PUSH EDX
004fdcaf  8b542478  MOV EDX,dword ptr [ESP + 0x78]
004fdcb3  51  PUSH ECX
004fdcb4  57  PUSH EDI
004fdcb5  52  PUSH EDX
004fdcb6  ffd0  CALL EAX
004fdcb8  83c424  ADD ESP,0x24
004fdcbb  5f  POP EDI
004fdcbc  5e  POP ESI
004fdcbd  5b  POP EBX
004fdcbe  83c450  ADD ESP,0x50
004fdcc1  c3  RET
004fdcc2  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
004fdcc6  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004fdcca  51  PUSH ECX
004fdccb  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
004fdccf  52  PUSH EDX
004fdcd0  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004fdcd4  51  PUSH ECX
004fdcd5  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
004fdcd9  52  PUSH EDX
004fdcda  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004fdcde  51  PUSH ECX
004fdcdf  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
004fdce3  52  PUSH EDX
004fdce4  8b542424  MOV EDX,dword ptr [ESP + 0x24]
004fdce8  51  PUSH ECX
004fdce9  8b4c247c  MOV ECX,dword ptr [ESP + 0x7c]
004fdced  52  PUSH EDX
004fdcee  57  PUSH EDI
004fdcef  51  PUSH ECX
004fdcf0  ffd0  CALL EAX
004fdcf2  83c428  ADD ESP,0x28
004fdcf5  5f  POP EDI
004fdcf6  5e  POP ESI
004fdcf7  5b  POP EBX
004fdcf8  83c450  ADD ESP,0x50
004fdcfb  c3  RET
004fdcfc  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
004fdd00  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
004fdd04  52  PUSH EDX
004fdd05  8b542428  MOV EDX,dword ptr [ESP + 0x28]
004fdd09  51  PUSH ECX
004fdd0a  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
004fdd0e  52  PUSH EDX
004fdd0f  8b542428  MOV EDX,dword ptr [ESP + 0x28]
004fdd13  51  PUSH ECX
004fdd14  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
004fdd18  52  PUSH EDX
004fdd19  8b542428  MOV EDX,dword ptr [ESP + 0x28]
004fdd1d  51  PUSH ECX
004fdd1e  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
004fdd22  52  PUSH EDX
004fdd23  8b542428  MOV EDX,dword ptr [ESP + 0x28]
004fdd27  51  PUSH ECX
004fdd28  8b8c2480000000  MOV ECX,dword ptr [ESP + 0x80]
004fdd2f  52  PUSH EDX
004fdd30  57  PUSH EDI
004fdd31  51  PUSH ECX
004fdd32  ffd0  CALL EAX
004fdd34  83c42c  ADD ESP,0x2c
004fdd37  5f  POP EDI
004fdd38  5e  POP ESI
004fdd39  5b  POP EBX
004fdd3a  83c450  ADD ESP,0x50
004fdd3d  c3  RET
004fdd3e  8b542430  MOV EDX,dword ptr [ESP + 0x30]
004fdd42  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004fdd46  52  PUSH EDX
004fdd47  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
004fdd4b  51  PUSH ECX
004fdd4c  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004fdd50  52  PUSH EDX
004fdd51  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
004fdd55  51  PUSH ECX
004fdd56  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004fdd5a  52  PUSH EDX
004fdd5b  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
004fdd5f  51  PUSH ECX
004fdd60  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004fdd64  52  PUSH EDX
004fdd65  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
004fdd69  51  PUSH ECX
004fdd6a  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004fdd6e  52  PUSH EDX
004fdd6f  8b942484000000  MOV EDX,dword ptr [ESP + 0x84]
004fdd76  51  PUSH ECX
004fdd77  57  PUSH EDI
004fdd78  52  PUSH EDX
004fdd79  ffd0  CALL EAX
004fdd7b  83c430  ADD ESP,0x30
004fdd7e  5f  POP EDI
004fdd7f  5e  POP ESI
004fdd80  5b  POP EBX
004fdd81  83c450  ADD ESP,0x50
004fdd84  c3  RET
004fdd85  5f  POP EDI
004fdd86  5e  POP ESI
004fdd87  33c0  XOR EAX,EAX
004fdd89  5b  POP EBX
004fdd8a  83c450  ADD ESP,0x50
004fdd8d  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallPatternSide_UpdateResourcesAtPoint
Paired actual annotated Ghidra pseudocode: 00B4BC60_WallPatternSide_UpdateResourcesAtPoint.c
Owned ranges: [[00b4bc60, 00b4c14e]]
Envelope bytes=1263

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b4bc60  83ec34  SUB ESP,0x34
00b4bc63  0cff  OR AL,0xff
00b4bc65  55  PUSH EBP
00b4bc66  88442418  MOV byte ptr [ESP + 0x18],AL
00b4bc6a  88442419  MOV byte ptr [ESP + 0x19],AL
00b4bc6e  8844241b  MOV byte ptr [ESP + 0x1b],AL
00b4bc72  8844241c  MOV byte ptr [ESP + 0x1c],AL
00b4bc76  8be9  MOV EBP,ECX
00b4bc78  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00b4bc7c  8d442418  LEA EAX,[ESP + 0x18]
00b4bc80  50  PUSH EAX
00b4bc81  51  PUSH ECX
00b4bc82  8bcd  MOV ECX,EBP
00b4bc84  c644242200  MOV byte ptr [ESP + 0x22],0x0
00b4bc89  c644242500  MOV byte ptr [ESP + 0x25],0x0
00b4bc8e  e8adc0ffff  CALL 0x00b47d40
00b4bc93  8b4d64  MOV ECX,dword ptr [EBP + 0x64]
00b4bc96  8d542418  LEA EDX,[ESP + 0x18]
00b4bc9a  52  PUSH EDX
00b4bc9b  e8305c0f00  CALL 0x00c418d0
00b4bca0  85c0  TEST EAX,EAX
00b4bca2  89442414  MOV dword ptr [ESP + 0x14],EAX
00b4bca6  0f849a040000  JZ 0x00b4c146
00b4bcac  8b00  MOV EAX,dword ptr [EAX]
00b4bcae  53  PUSH EBX
00b4bcaf  56  PUSH ESI
00b4bcb0  57  PUSH EDI
00b4bcb1  8d4c2424  LEA ECX,[ESP + 0x24]
00b4bcb5  51  PUSH ECX
00b4bcb6  8bcd  MOV ECX,EBP
00b4bcb8  89442418  MOV dword ptr [ESP + 0x18],EAX
00b4bcbc  e88fedffff  CALL 0x00b4aa50
00b4bcc1  8d542424  LEA EDX,[ESP + 0x24]
00b4bcc5  52  PUSH EDX
00b4bcc6  8bcd  MOV ECX,EBP
00b4bcc8  8bf8  MOV EDI,EAX
00b4bcca  e841eeffff  CALL 0x00b4ab10
00b4bccf  8bd8  MOV EBX,EAX
00b4bcd1  8d442424  LEA EAX,[ESP + 0x24]
00b4bcd5  50  PUSH EAX
00b4bcd6  8bcd  MOV ECX,EBP
00b4bcd8  e8f3eeffff  CALL 0x00b4abd0
00b4bcdd  8d4c2424  LEA ECX,[ESP + 0x24]
00b4bce1  51  PUSH ECX
00b4bce2  8b4d64  MOV ECX,dword ptr [EBP + 0x64]
00b4bce5  89442420  MOV dword ptr [ESP + 0x20],EAX
00b4bce9  e8e25b0f00  CALL 0x00c418d0
00b4bcee  85c0  TEST EAX,EAX
00b4bcf0  7411  JZ 0x00b4bd03
00b4bcf2  8b00  MOV EAX,dword ptr [EAX]
00b4bcf4  8b4d6c  MOV ECX,dword ptr [EBP + 0x6c]
00b4bcf7  50  PUSH EAX
00b4bcf8  e8f3920f00  CALL 0x00c44ff0
00b4bcfd  89442410  MOV dword ptr [ESP + 0x10],EAX
00b4bd01  eb08  JMP 0x00b4bd0b
00b4bd03  c7442410c0c81e01  MOV dword ptr [ESP + 0x10],0x11ec8c0
00b4bd0b  8b07  MOV EAX,dword ptr [EDI]
00b4bd0d  8b742448  MOV ESI,dword ptr [ESP + 0x48]
00b4bd11  3b06  CMP EAX,dword ptr [ESI]
00b4bd13  751c  JNZ 0x00b4bd31
00b4bd15  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00b4bd18  3b5608  CMP EDX,dword ptr [ESI + 0x8]
00b4bd1b  7514  JNZ 0x00b4bd31
00b4bd1d  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00b4bd20  3b4e0c  CMP ECX,dword ptr [ESI + 0xc]
00b4bd23  750c  JNZ 0x00b4bd31
00b4bd25  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00b4bd28  3b5604  CMP EDX,dword ptr [ESI + 0x4]
00b4bd2b  0f84ac000000  JZ 0x00b4bddd
00b4bd31  3b05d0c81e01  CMP EAX,dword ptr [0x011ec8d0]
00b4bd37  7521  JNZ 0x00b4bd5a
00b4bd39  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00b4bd3c  3b05d8c81e01  CMP EAX,dword ptr [0x011ec8d8]
00b4bd42  7516  JNZ 0x00b4bd5a
00b4bd44  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00b4bd47  3b0ddcc81e01  CMP ECX,dword ptr [0x011ec8dc]
00b4bd4d  750b  JNZ 0x00b4bd5a
00b4bd4f  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00b4bd52  3b15d4c81e01  CMP EDX,dword ptr [0x011ec8d4]
00b4bd58  7409  JZ 0x00b4bd63
00b4bd5a  8b4d78  MOV ECX,dword ptr [EBP + 0x78]
00b4bd5d  57  PUSH EDI
00b4bd5e  e86ddeffff  CALL 0x00b49bd0
00b4bd63  a1d0c81e01  MOV EAX,[0x011ec8d0]
00b4bd68  3906  CMP dword ptr [ESI],EAX
00b4bd6a  7520  JNZ 0x00b4bd8c
00b4bd6c  8b0dd8c81e01  MOV ECX,dword ptr [0x011ec8d8]
00b4bd72  394e08  CMP dword ptr [ESI + 0x8],ECX
00b4bd75  7515  JNZ 0x00b4bd8c
00b4bd77  8b15dcc81e01  MOV EDX,dword ptr [0x011ec8dc]
00b4bd7d  39560c  CMP dword ptr [ESI + 0xc],EDX
00b4bd80  750a  JNZ 0x00b4bd8c
00b4bd82  a1d4c81e01  MOV EAX,[0x011ec8d4]
00b4bd87  394604  CMP dword ptr [ESI + 0x4],EAX
00b4bd8a  7412  JZ 0x00b4bd9e
00b4bd8c  8b4d78  MOV ECX,dword ptr [EBP + 0x78]
00b4bd8f  56  PUSH ESI
00b4bd90  e8abfcffff  CALL 0x00b4ba40
00b4bd95  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00b4bd98  56  PUSH ESI
00b4bd99  e8224cf6ff  CALL 0x00ab09c0
00b4bd9e  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00b4bda2  8b4d74  MOV ECX,dword ptr [EBP + 0x74]
00b4bda5  57  PUSH EDI
00b4bda6  e815920f00  CALL 0x00c44fc0
00b4bdab  84c0  TEST AL,AL
00b4bdad  750e  JNZ 0x00b4bdbd
00b4bdaf  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00b4bdb3  51  PUSH ECX
00b4bdb4  8b4d74  MOV ECX,dword ptr [EBP + 0x74]
00b4bdb7  57  PUSH EDI
00b4bdb8  e813950f00  CALL 0x00c452d0
00b4bdbd  8b4d78  MOV ECX,dword ptr [EBP + 0x78]
00b4bdc0  56  PUSH ESI
00b4bdc1  e89adeffff  CALL 0x00b49c60
00b4bdc6  8b4d74  MOV ECX,dword ptr [EBP + 0x74]
00b4bdc9  0fb7d0  MOVZX EDX,AX
00b4bdcc  8d442418  LEA EAX,[ESP + 0x18]
00b4bdd0  50  PUSH EAX
00b4bdd1  6a00  PUSH 0x0
00b4bdd3  57  PUSH EDI
00b4bdd4  89542424  MOV dword ptr [ESP + 0x24],EDX
00b4bdd8  e883910f00  CALL 0x00c44f60
00b4bddd  8b03  MOV EAX,dword ptr [EBX]
00b4bddf  3b4610  CMP EAX,dword ptr [ESI + 0x10]
00b4bde2  8d7e10  LEA EDI,[ESI + 0x10]
00b4bde5  751c  JNZ 0x00b4be03
00b4bde7  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00b4bdea  3b4f08  CMP ECX,dword ptr [EDI + 0x8]
00b4bded  7514  JNZ 0x00b4be03
00b4bdef  8b530c  MOV EDX,dword ptr [EBX + 0xc]
00b4bdf2  3b570c  CMP EDX,dword ptr [EDI + 0xc]
00b4bdf5  750c  JNZ 0x00b4be03
00b4bdf7  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00b4bdfa  3b4f04  CMP ECX,dword ptr [EDI + 0x4]
00b4bdfd  0f84c1000000  JZ 0x00b4bec4
00b4be03  3b05d0c81e01  CMP EAX,dword ptr [0x011ec8d0]
00b4be09  7521  JNZ 0x00b4be2c
00b4be0b  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00b4be0e  3b15d8c81e01  CMP EDX,dword ptr [0x011ec8d8]
00b4be14  7516  JNZ 0x00b4be2c
00b4be16  8b430c  MOV EAX,dword ptr [EBX + 0xc]
00b4be19  3b05dcc81e01  CMP EAX,dword ptr [0x011ec8dc]
00b4be1f  750b  JNZ 0x00b4be2c
00b4be21  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00b4be24  3b0dd4c81e01  CMP ECX,dword ptr [0x011ec8d4]
00b4be2a  740c  JZ 0x00b4be38
00b4be2c  8b8d88000000  MOV ECX,dword ptr [EBP + 0x88]
00b4be32  53  PUSH EBX
00b4be33  e898ddffff  CALL 0x00b49bd0
00b4be38  8b15d0c81e01  MOV EDX,dword ptr [0x011ec8d0]
00b4be3e  3917  CMP dword ptr [EDI],EDX
00b4be40  7520  JNZ 0x00b4be62
00b4be42  a1d8c81e01  MOV EAX,[0x011ec8d8]
00b4be47  394708  CMP dword ptr [EDI + 0x8],EAX
00b4be4a  7516  JNZ 0x00b4be62
00b4be4c  8b0ddcc81e01  MOV ECX,dword ptr [0x011ec8dc]
00b4be52  394f0c  CMP dword ptr [EDI + 0xc],ECX
00b4be55  750b  JNZ 0x00b4be62
00b4be57  8b15d4c81e01  MOV EDX,dword ptr [0x011ec8d4]
00b4be5d  395704  CMP dword ptr [EDI + 0x4],EDX
00b4be60  7415  JZ 0x00b4be77
00b4be62  8b8d88000000  MOV ECX,dword ptr [EBP + 0x88]
00b4be68  57  PUSH EDI
00b4be69  e8d2fbffff  CALL 0x00b4ba40
00b4be6e  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00b4be71  57  PUSH EDI
00b4be72  e8494bf6ff  CALL 0x00ab09c0
00b4be77  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00b4be7b  8b8d84000000  MOV ECX,dword ptr [EBP + 0x84]
00b4be81  53  PUSH EBX
00b4be82  e839910f00  CALL 0x00c44fc0
00b4be87  84c0  TEST AL,AL
00b4be89  7511  JNZ 0x00b4be9c
00b4be8b  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00b4be8f  8b8d84000000  MOV ECX,dword ptr [EBP + 0x84]
00b4be95  50  PUSH EAX
00b4be96  53  PUSH EBX
00b4be97  e834940f00  CALL 0x00c452d0
00b4be9c  8b8d88000000  MOV ECX,dword ptr [EBP + 0x88]
00b4bea2  57  PUSH EDI
00b4bea3  e8b8ddffff  CALL 0x00b49c60
00b4bea8  0fb7c8  MOVZX ECX,AX
00b4beab  8d542418  LEA EDX,[ESP + 0x18]
00b4beaf  52  PUSH EDX
00b4beb0  6a00  PUSH 0x0
00b4beb2  894c2420  MOV dword ptr [ESP + 0x20],ECX
00b4beb6  8b8d84000000  MOV ECX,dword ptr [EBP + 0x84]
00b4bebc  53  PUSH EBX
00b4bebd  e89e900f00  CALL 0x00c44f60
00b4bec2  eb04  JMP 0x00b4bec8
00b4bec4  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00b4bec8  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00b4becc  8b01  MOV EAX,dword ptr [ECX]
00b4bece  3b4620  CMP EAX,dword ptr [ESI + 0x20]
00b4bed1  8d7e20  LEA EDI,[ESI + 0x20]
00b4bed4  751c  JNZ 0x00b4bef2
00b4bed6  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00b4bed9  3b5708  CMP EDX,dword ptr [EDI + 0x8]
00b4bedc  7514  JNZ 0x00b4bef2
00b4bede  8b510c  MOV EDX,dword ptr [ECX + 0xc]
00b4bee1  3b570c  CMP EDX,dword ptr [EDI + 0xc]
00b4bee4  750c  JNZ 0x00b4bef2
00b4bee6  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00b4bee9  3b5704  CMP EDX,dword ptr [EDI + 0x4]
00b4beec  0f84b8000000  JZ 0x00b4bfaa
00b4bef2  3b05d0c81e01  CMP EAX,dword ptr [0x011ec8d0]
00b4bef8  7521  JNZ 0x00b4bf1b
00b4befa  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00b4befd  3b05d8c81e01  CMP EAX,dword ptr [0x011ec8d8]
00b4bf03  7516  JNZ 0x00b4bf1b
00b4bf05  8b510c  MOV EDX,dword ptr [ECX + 0xc]
00b4bf08  3b15dcc81e01  CMP EDX,dword ptr [0x011ec8dc]
00b4bf0e  750b  JNZ 0x00b4bf1b
00b4bf10  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00b4bf13  3b05d4c81e01  CMP EAX,dword ptr [0x011ec8d4]
00b4bf19  740c  JZ 0x00b4bf27
00b4bf1b  51  PUSH ECX
00b4bf1c  8b8d80000000  MOV ECX,dword ptr [EBP + 0x80]
00b4bf22  e8a9dcffff  CALL 0x00b49bd0
00b4bf27  8b0dd0c81e01  MOV ECX,dword ptr [0x011ec8d0]
00b4bf2d  390f  CMP dword ptr [EDI],ECX
00b4bf2f  7520  JNZ 0x00b4bf51
00b4bf31  8b15d8c81e01  MOV EDX,dword ptr [0x011ec8d8]
00b4bf37  395708  CMP dword ptr [EDI + 0x8],EDX
00b4bf3a  7515  JNZ 0x00b4bf51
00b4bf3c  a1dcc81e01  MOV EAX,[0x011ec8dc]
00b4bf41  39470c  CMP dword ptr [EDI + 0xc],EAX
00b4bf44  750b  JNZ 0x00b4bf51
00b4bf46  8b0dd4c81e01  MOV ECX,dword ptr [0x011ec8d4]
00b4bf4c  394f04  CMP dword ptr [EDI + 0x4],ECX
00b4bf4f  7415  JZ 0x00b4bf66
00b4bf51  8b8d80000000  MOV ECX,dword ptr [EBP + 0x80]
00b4bf57  57  PUSH EDI
00b4bf58  e8e3faffff  CALL 0x00b4ba40
00b4bf5d  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00b4bf60  57  PUSH EDI
00b4bf61  e88a4af6ff  CALL 0x00ab09f0
00b4bf66  8b4d7c  MOV ECX,dword ptr [EBP + 0x7c]
00b4bf69  53  PUSH EBX
00b4bf6a  e851900f00  CALL 0x00c44fc0
00b4bf6f  84c0  TEST AL,AL
00b4bf71  750e  JNZ 0x00b4bf81
00b4bf73  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00b4bf77  8b4d7c  MOV ECX,dword ptr [EBP + 0x7c]
00b4bf7a  52  PUSH EDX
00b4bf7b  53  PUSH EBX
00b4bf7c  e84f930f00  CALL 0x00c452d0
00b4bf81  8b8d80000000  MOV ECX,dword ptr [EBP + 0x80]
00b4bf87  57  PUSH EDI
00b4bf88  e8d3dcffff  CALL 0x00b49c60
00b4bf8d  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00b4bf91  0fb7c0  MOVZX EAX,AX
00b4bf94  8d4c241c  LEA ECX,[ESP + 0x1c]
00b4bf98  51  PUSH ECX
00b4bf99  8b4d7c  MOV ECX,dword ptr [EBP + 0x7c]
00b4bf9c  89442420  MOV dword ptr [ESP + 0x20],EAX
00b4bfa0  8b02  MOV EAX,dword ptr [EDX]
00b4bfa2  6a00  PUSH 0x0
00b4bfa4  50  PUSH EAX
00b4bfa5  e8b68f0f00  CALL 0x00c44f60
00b4bfaa  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00b4bfad  80797400  CMP byte ptr [ECX + 0x74],0x0
00b4bfb1  0f849d000000  JZ 0x00b4c054
00b4bfb7  e8340590ff  CALL 0x0044c4f0
00b4bfbc  6a58  PUSH 0x58
00b4bfbe  89442424  MOV dword ptr [ESP + 0x24],EAX
00b4bfc2  e88931f9ff  CALL 0x00adf150
00b4bfc7  83c404  ADD ESP,0x4
00b4bfca  85c0  TEST EAX,EAX
00b4bfcc  740b  JZ 0x00b4bfd9
00b4bfce  8bc8  MOV ECX,EAX
00b4bfd0  e8fbbcffff  CALL 0x00b47cd0
00b4bfd5  8bd8  MOV EBX,EAX
00b4bfd7  eb02  JMP 0x00b4bfdb
00b4bfd9  33db  XOR EBX,EBX
00b4bfdb  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00b4bfde  8b5048  MOV EDX,dword ptr [EAX + 0x48]
00b4bfe1  895308  MOV dword ptr [EBX + 0x8],EDX
00b4bfe4  8b404c  MOV EAX,dword ptr [EAX + 0x4c]
00b4bfe7  89430c  MOV dword ptr [EBX + 0xc],EAX
00b4bfea  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00b4bfee  8d7b10  LEA EDI,[EBX + 0x10]
00b4bff1  b90c000000  MOV ECX,0xc
00b4bff6  f3a5  MOVSD.REP ES:EDI,ESI
00b4bff8  8b08  MOV ECX,dword ptr [EAX]
00b4bffa  894b40  MOV dword ptr [EBX + 0x40],ECX
00b4bffd  668b5004  MOV DX,word ptr [EAX + 0x4]
00b4c001  66895344  MOV word ptr [EBX + 0x44],DX
00b4c005  8b4d64  MOV ECX,dword ptr [EBP + 0x64]
00b4c008  50  PUSH EAX
00b4c009  e8c2580f00  CALL 0x00c418d0
00b4c00e  85c0  TEST EAX,EAX
00b4c010  740d  JZ 0x00b4c01f
00b4c012  8b00  MOV EAX,dword ptr [EAX]
00b4c014  8b4d6c  MOV ECX,dword ptr [EBP + 0x6c]
00b4c017  50  PUSH EAX
00b4c018  e8d38f0f00  CALL 0x00c44ff0
00b4c01d  eb05  JMP 0x00b4c024
00b4c01f  b8c0c81e01  MOV EAX,0x11ec8c0
00b4c024  8b08  MOV ECX,dword ptr [EAX]
00b4c026  894b48  MOV dword ptr [EBX + 0x48],ECX
00b4c029  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00b4c02c  89534c  MOV dword ptr [EBX + 0x4c],EDX
00b4c02f  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00b4c032  894b50  MOV dword ptr [EBX + 0x50],ECX
00b4c035  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00b4c038  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00b4c03c  6a00  PUSH 0x0
00b4c03e  6a00  PUSH 0x0
00b4c040  895354  MOV dword ptr [EBX + 0x54],EDX
00b4c043  8b01  MOV EAX,dword ptr [ECX]
00b4c045  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00b4c048  53  PUSH EBX
00b4c049  68ede27608  PUSH 0x876e2ed
00b4c04e  ffd2  CALL EDX
00b4c050  8b742448  MOV ESI,dword ptr [ESP + 0x48]
00b4c054  0fbe442424  MOVSX EAX,byte ptr [ESP + 0x24]
00b4c059  0fbe4c2425  MOVSX ECX,byte ptr [ESP + 0x25]
00b4c05e  0fbe542426  MOVSX EDX,byte ptr [ESP + 0x26]
00b4c063  f30f2ac0  CVTSI2SS XMM0,EAX
00b4c067  0fbe442427  MOVSX EAX,byte ptr [ESP + 0x27]
00b4c06c  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00b4c072  f30f2ac1  CVTSI2SS XMM0,ECX
00b4c076  0fbe4c2428  MOVSX ECX,byte ptr [ESP + 0x28]
00b4c07b  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00b4c081  f30f2ac0  CVTSI2SS XMM0,EAX
00b4c085  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00b4c089  f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
00b4c08f  f30f2ac1  CVTSI2SS XMM0,ECX
00b4c093  89542434  MOV dword ptr [ESP + 0x34],EDX
00b4c097  0fbe542429  MOVSX EDX,byte ptr [ESP + 0x29]
00b4c09c  50  PUSH EAX
00b4c09d  8d4c2430  LEA ECX,[ESP + 0x30]
00b4c0a1  51  PUSH ECX
00b4c0a2  8bcd  MOV ECX,EBP
00b4c0a4  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00b4c0aa  89542448  MOV dword ptr [ESP + 0x48],EDX
00b4c0ae  e81dafffff  CALL 0x00b46fd0
00b4c0b3  84c0  TEST AL,AL
00b4c0b5  743a  JZ 0x00b4c0f1
00b4c0b7  8b8d8c000000  MOV ECX,dword ptr [EBP + 0x8c]
00b4c0bd  56  PUSH ESI
00b4c0be  8d542430  LEA EDX,[ESP + 0x30]
00b4c0c2  52  PUSH EDX
00b4c0c3  e8d8b3f1ff  CALL 0x00a674a0
00b4c0c8  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00b4c0cb  8d44242c  LEA EAX,[ESP + 0x2c]
00b4c0cf  50  PUSH EAX
00b4c0d0  51  PUSH ECX
00b4c0d1  e88a17fcff  CALL 0x00b0d860
00b4c0d6  83c408  ADD ESP,0x8
00b4c0d9  84c0  TEST AL,AL
00b4c0db  7514  JNZ 0x00b4c0f1
00b4c0dd  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00b4c0e1  56  PUSH ESI
00b4c0e2  57  PUSH EDI
00b4c0e3  8d542434  LEA EDX,[ESP + 0x34]
00b4c0e7  52  PUSH EDX
00b4c0e8  8bcd  MOV ECX,EBP
00b4c0ea  e8a1c3ffff  CALL 0x00b48490
00b4c0ef  eb04  JMP 0x00b4c0f5
00b4c0f1  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00b4c0f5  57  PUSH EDI
00b4c0f6  8d44243c  LEA EAX,[ESP + 0x3c]
00b4c0fa  50  PUSH EAX
00b4c0fb  8bcd  MOV ECX,EBP
00b4c0fd  e8ceaeffff  CALL 0x00b46fd0
00b4c102  84c0  TEST AL,AL
00b4c104  7434  JZ 0x00b4c13a
00b4c106  56  PUSH ESI
00b4c107  8d4c243c  LEA ECX,[ESP + 0x3c]
00b4c10b  51  PUSH ECX
00b4c10c  8b8d8c000000  MOV ECX,dword ptr [EBP + 0x8c]
00b4c112  e889b3f1ff  CALL 0x00a674a0
00b4c117  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00b4c11a  8d542438  LEA EDX,[ESP + 0x38]
00b4c11e  52  PUSH EDX
00b4c11f  50  PUSH EAX
00b4c120  e83b17fcff  CALL 0x00b0d860
00b4c125  83c408  ADD ESP,0x8
00b4c128  84c0  TEST AL,AL
00b4c12a  750e  JNZ 0x00b4c13a
00b4c12c  56  PUSH ESI
00b4c12d  57  PUSH EDI
00b4c12e  8d4c2440  LEA ECX,[ESP + 0x40]
00b4c132  51  PUSH ECX
00b4c133  8bcd  MOV ECX,EBP
00b4c135  e856c3ffff  CALL 0x00b48490
00b4c13a  5f  POP EDI
00b4c13b  5e  POP ESI
00b4c13c  5b  POP EBX
00b4c13d  b001  MOV AL,0x1
00b4c13f  5d  POP EBP
00b4c140  83c434  ADD ESP,0x34
00b4c143  c20800  RET 0x8
00b4c146  32c0  XOR AL,AL
00b4c148  5d  POP EBP
00b4c149  83c434  ADD ESP,0x34
00b4c14c  c20800  RET 0x8
Owned instructions=400 owned bytes=1263 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: LotImposter_WriteStoredModelsAndAtlases
Paired actual annotated Ghidra pseudocode: 00ADCCE0_LotImposter_WriteStoredModelsAndAtlases.c
Owned body: [[00adcce0, 00adcfb5]]
Envelope bytes=726

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00adcce0  83ec48  SUB ESP,0x48
00adcce3  8b442450  MOV EAX,dword ptr [ESP + 0x50]
00adcce7  53  PUSH EBX
00adcce8  55  PUSH EBP
00adcce9  56  PUSH ESI
00adccea  57  PUSH EDI
00adcceb  8bf1  MOV ESI,ECX
00adcced  8b4c245c  MOV ECX,dword ptr [ESP + 0x5c]
00adccf1  50  PUSH EAX
00adccf2  51  PUSH ECX
00adccf3  8d4c2448  LEA ECX,[ESP + 0x48]
00adccf7  e824accfff  CALL 0x007d7920
00adccfc  8b7c2464  MOV EDI,dword ptr [ESP + 0x64]
00adcd00  8b5c2468  MOV EBX,dword ptr [ESP + 0x68]
00adcd04  8b6e38  MOV EBP,dword ptr [ESI + 0x38]
00adcd07  6a01  PUSH 0x1
00adcd09  8d542414  LEA EDX,[ESP + 0x14]
00adcd0d  52  PUSH EDX
00adcd0e  8d4c2448  LEA ECX,[ESP + 0x48]
00adcd12  897c2418  MOV dword ptr [ESP + 0x18],EDI
00adcd16  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00adcd1a  c744242033126601  MOV dword ptr [ESP + 0x20],0x1661233
00adcd22  c744242407c5b000  MOV dword ptr [ESP + 0x24],0xb0c507
00adcd2a  e891b7cfff  CALL 0x007d84c0
00adcd2f  84c0  TEST AL,AL
00adcd31  7431  JZ 0x00adcd64
00adcd33  85ed  TEST EBP,EBP
00adcd35  7411  JZ 0x00adcd48
00adcd37  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00adcd3b  8d442410  LEA EAX,[ESP + 0x10]
00adcd3f  50  PUSH EAX
00adcd40  51  PUSH ECX
00adcd41  8bcd  MOV ECX,EBP
00adcd43  e8985cbfff  CALL 0x006d29e0
00adcd48  8d4c2440  LEA ECX,[ESP + 0x40]
00adcd4c  e81fadcfff  CALL 0x007d7a70
00adcd51  e8ea23c5ff  CALL 0x0072f140
00adcd56  8b10  MOV EDX,dword ptr [EAX]
00adcd58  8b5230  MOV EDX,dword ptr [EDX + 0x30]
00adcd5b  8d4c2410  LEA ECX,[ESP + 0x10]
00adcd5f  51  PUSH ECX
00adcd60  8bc8  MOV ECX,EAX
00adcd62  ffd2  CALL EDX
00adcd64  8b6e3c  MOV EBP,dword ptr [ESI + 0x3c]
00adcd67  6a01  PUSH 0x1
00adcd69  8d442424  LEA EAX,[ESP + 0x24]
00adcd6d  50  PUSH EAX
00adcd6e  8d4c2448  LEA ECX,[ESP + 0x48]
00adcd72  897c2428  MOV dword ptr [ESP + 0x28],EDI
00adcd76  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00adcd7a  c744243033126601  MOV dword ptr [ESP + 0x30],0x1661233
00adcd82  c7442434e9a71d00  MOV dword ptr [ESP + 0x34],0x1da7e9
00adcd8a  e831b7cfff  CALL 0x007d84c0
00adcd8f  84c0  TEST AL,AL
00adcd91  7431  JZ 0x00adcdc4
00adcd93  85ed  TEST EBP,EBP
00adcd95  7411  JZ 0x00adcda8
00adcd97  8b542448  MOV EDX,dword ptr [ESP + 0x48]
00adcd9b  8d4c2420  LEA ECX,[ESP + 0x20]
00adcd9f  51  PUSH ECX
00adcda0  52  PUSH EDX
00adcda1  8bcd  MOV ECX,EBP
00adcda3  e8385cbfff  CALL 0x006d29e0
00adcda8  8d4c2440  LEA ECX,[ESP + 0x40]
00adcdac  e8bfaccfff  CALL 0x007d7a70
00adcdb1  e88a23c5ff  CALL 0x0072f140
00adcdb6  8b10  MOV EDX,dword ptr [EAX]
00adcdb8  8b5230  MOV EDX,dword ptr [EDX + 0x30]
00adcdbb  8d4c2420  LEA ECX,[ESP + 0x20]
00adcdbf  51  PUSH ECX
00adcdc0  8bc8  MOV ECX,EAX
00adcdc2  ffd2  CALL EDX
00adcdc4  6a01  PUSH 0x1
00adcdc6  8d442434  LEA EAX,[ESP + 0x34]
00adcdca  897c2434  MOV dword ptr [ESP + 0x34],EDI
00adcdce  8b7e40  MOV EDI,dword ptr [ESI + 0x40]
00adcdd1  50  PUSH EAX
00adcdd2  8d4c2448  LEA ECX,[ESP + 0x48]
00adcdd6  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00adcdda  c744244033126601  MOV dword ptr [ESP + 0x40],0x1661233
00adcde2  c7442444ca641000  MOV dword ptr [ESP + 0x44],0x1064ca
00adcdea  e8d1b6cfff  CALL 0x007d84c0
00adcdef  84c0  TEST AL,AL
00adcdf1  7431  JZ 0x00adce24
00adcdf3  85ff  TEST EDI,EDI
00adcdf5  7411  JZ 0x00adce08
00adcdf7  8b542448  MOV EDX,dword ptr [ESP + 0x48]
00adcdfb  8d4c2430  LEA ECX,[ESP + 0x30]
00adcdff  51  PUSH ECX
00adce00  52  PUSH EDX
00adce01  8bcf  MOV ECX,EDI
00adce03  e8d85bbfff  CALL 0x006d29e0
00adce08  8d4c2440  LEA ECX,[ESP + 0x40]
00adce0c  e85faccfff  CALL 0x007d7a70
00adce11  e82a23c5ff  CALL 0x0072f140
00adce16  8b10  MOV EDX,dword ptr [EAX]
00adce18  8b5230  MOV EDX,dword ptr [EDX + 0x30]
00adce1b  8d4c2430  LEA ECX,[ESP + 0x30]
00adce1f  51  PUSH ECX
00adce20  8bc8  MOV ECX,EAX
00adce22  ffd2  CALL EDX
00adce24  837e5000  CMP dword ptr [ESI + 0x50],0x0
00adce28  8d7e58  LEA EDI,[ESI + 0x58]
00adce2b  743d  JZ 0x00adce6a
00adce2d  6a01  PUSH 0x1
00adce2f  57  PUSH EDI
00adce30  8d4c2448  LEA ECX,[ESP + 0x48]
00adce34  e887b6cfff  CALL 0x007d84c0
00adce39  84c0  TEST AL,AL
00adce3b  742d  JZ 0x00adce6a
00adce3d  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00adce41  8b4e50  MOV ECX,dword ptr [ESI + 0x50]
00adce44  6a00  PUSH 0x0
00adce46  6a00  PUSH 0x0
00adce48  50  PUSH EAX
00adce49  51  PUSH ECX
00adce4a  e8f1bfb3ff  CALL 0x00618e40
00adce4f  83c410  ADD ESP,0x10
00adce52  8d4c2440  LEA ECX,[ESP + 0x40]
00adce56  e815accfff  CALL 0x007d7a70
00adce5b  e8e022c5ff  CALL 0x0072f140
00adce60  8b10  MOV EDX,dword ptr [EAX]
00adce62  8bc8  MOV ECX,EAX
00adce64  8b4230  MOV EAX,dword ptr [EDX + 0x30]
00adce67  57  PUSH EDI
00adce68  ffd0  CALL EAX
00adce6a  837e6800  CMP dword ptr [ESI + 0x68],0x0
00adce6e  8d7e70  LEA EDI,[ESI + 0x70]
00adce71  743d  JZ 0x00adceb0
00adce73  6a01  PUSH 0x1
00adce75  57  PUSH EDI
00adce76  8d4c2448  LEA ECX,[ESP + 0x48]
00adce7a  e841b6cfff  CALL 0x007d84c0
00adce7f  84c0  TEST AL,AL
00adce81  742d  JZ 0x00adceb0
00adce83  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00adce87  8b5668  MOV EDX,dword ptr [ESI + 0x68]
00adce8a  6a00  PUSH 0x0
00adce8c  6a00  PUSH 0x0
00adce8e  51  PUSH ECX
00adce8f  52  PUSH EDX
00adce90  e8abbfb3ff  CALL 0x00618e40
00adce95  83c410  ADD ESP,0x10
00adce98  8d4c2440  LEA ECX,[ESP + 0x40]
00adce9c  e8cfabcfff  CALL 0x007d7a70
00adcea1  e89a22c5ff  CALL 0x0072f140
00adcea6  8b10  MOV EDX,dword ptr [EAX]
00adcea8  8bc8  MOV ECX,EAX
00adceaa  8b4230  MOV EAX,dword ptr [EDX + 0x30]
00adcead  57  PUSH EDI
00adceae  ffd0  CALL EAX
00adceb0  83be8000000000  CMP dword ptr [ESI + 0x80],0x0
00adceb7  8dbe88000000  LEA EDI,[ESI + 0x88]
00adcebd  7440  JZ 0x00adceff
00adcebf  6a01  PUSH 0x1
00adcec1  57  PUSH EDI
00adcec2  8d4c2448  LEA ECX,[ESP + 0x48]
00adcec6  e8f5b5cfff  CALL 0x007d84c0
00adcecb  84c0  TEST AL,AL
00adcecd  7430  JZ 0x00adceff
00adcecf  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00adced3  8b9680000000  MOV EDX,dword ptr [ESI + 0x80]
00adced9  6a00  PUSH 0x0
00adcedb  6a00  PUSH 0x0
00adcedd  51  PUSH ECX
00adcede  52  PUSH EDX
00adcedf  e85cbfb3ff  CALL 0x00618e40
00adcee4  83c410  ADD ESP,0x10
00adcee7  8d4c2440  LEA ECX,[ESP + 0x40]
00adceeb  e880abcfff  CALL 0x007d7a70
00adcef0  e84b22c5ff  CALL 0x0072f140
00adcef5  8b10  MOV EDX,dword ptr [EAX]
00adcef7  8bc8  MOV ECX,EAX
00adcef9  8b4230  MOV EAX,dword ptr [EDX + 0x30]
00adcefc  57  PUSH EDI
00adcefd  ffd0  CALL EAX
00adceff  83be9800000000  CMP dword ptr [ESI + 0x98],0x0
00adcf06  8dbea0000000  LEA EDI,[ESI + 0xa0]
00adcf0c  7440  JZ 0x00adcf4e
00adcf0e  6a01  PUSH 0x1
00adcf10  57  PUSH EDI
00adcf11  8d4c2448  LEA ECX,[ESP + 0x48]
00adcf15  e8a6b5cfff  CALL 0x007d84c0
00adcf1a  84c0  TEST AL,AL
00adcf1c  7430  JZ 0x00adcf4e
00adcf1e  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00adcf22  8b9698000000  MOV EDX,dword ptr [ESI + 0x98]
00adcf28  6a00  PUSH 0x0
00adcf2a  6a00  PUSH 0x0
00adcf2c  51  PUSH ECX
00adcf2d  52  PUSH EDX
00adcf2e  e80dbfb3ff  CALL 0x00618e40
00adcf33  83c410  ADD ESP,0x10
00adcf36  8d4c2440  LEA ECX,[ESP + 0x40]
00adcf3a  e831abcfff  CALL 0x007d7a70
00adcf3f  e8fc21c5ff  CALL 0x0072f140
00adcf44  8b10  MOV EDX,dword ptr [EAX]
00adcf46  8bc8  MOV ECX,EAX
00adcf48  8b4230  MOV EAX,dword ptr [EDX + 0x30]
00adcf4b  57  PUSH EDI
00adcf4c  ffd0  CALL EAX
00adcf4e  83beb000000000  CMP dword ptr [ESI + 0xb0],0x0
00adcf55  8dbeb8000000  LEA EDI,[ESI + 0xb8]
00adcf5b  7440  JZ 0x00adcf9d
00adcf5d  6a01  PUSH 0x1
00adcf5f  57  PUSH EDI
00adcf60  8d4c2448  LEA ECX,[ESP + 0x48]
00adcf64  e857b5cfff  CALL 0x007d84c0
00adcf69  84c0  TEST AL,AL
00adcf6b  7430  JZ 0x00adcf9d
00adcf6d  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00adcf71  8b96b0000000  MOV EDX,dword ptr [ESI + 0xb0]
00adcf77  6a00  PUSH 0x0
00adcf79  6a00  PUSH 0x0
00adcf7b  51  PUSH ECX
00adcf7c  52  PUSH EDX
00adcf7d  e8bebeb3ff  CALL 0x00618e40
00adcf82  83c410  ADD ESP,0x10
00adcf85  8d4c2440  LEA ECX,[ESP + 0x40]
00adcf89  e8e2aacfff  CALL 0x007d7a70
00adcf8e  e8ad21c5ff  CALL 0x0072f140
00adcf93  8b10  MOV EDX,dword ptr [EAX]
00adcf95  8bc8  MOV ECX,EAX
00adcf97  8b4230  MOV EAX,dword ptr [EDX + 0x30]
00adcf9a  57  PUSH EDI
00adcf9b  ffd0  CALL EAX
00adcf9d  8a5c2454  MOV BL,byte ptr [ESP + 0x54]
00adcfa1  8d4c2440  LEA ECX,[ESP + 0x40]
00adcfa5  e8e6a9cfff  CALL 0x007d7990
00adcfaa  5f  POP EDI
00adcfab  5e  POP ESI
00adcfac  5d  POP EBP
00adcfad  8ac3  MOV AL,BL
00adcfaf  5b  POP EBX
00adcfb0  83c448  ADD ESP,0x48
00adcfb3  c21000  RET 0x10

Owned instructions=236 owned bytes=726 nonowned bytes=0

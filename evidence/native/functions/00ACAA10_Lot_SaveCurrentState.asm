# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Lot_SaveCurrentState
Paired actual annotated Ghidra pseudocode: 00ACAA10_Lot_SaveCurrentState.c
Owned ranges: [[00acaa10, 00acacee]]
Envelope bytes=735

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00acaa10  81ec38010000  SUB ESP,0x138
00acaa16  56  PUSH ESI
00acaa17  57  PUSH EDI
00acaa18  8bbc2444010000  MOV EDI,dword ptr [ESP + 0x144]
00acaa1f  8b07  MOV EAX,dword ptr [EDI]
00acaa21  85c0  TEST EAX,EAX
00acaa23  8bf1  MOV ESI,ECX
00acaa25  c686b900000000  MOV byte ptr [ESI + 0xb9],0x0
00acaa2c  741e  JZ 0x00acaa4c
00acaa2e  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00acaa31  51  PUSH ECX
00acaa32  50  PUSH EAX
00acaa33  8d4c2414  LEA ECX,[ESP + 0x14]
00acaa37  e8e4ced0ff  CALL 0x007d7920
00acaa3c  807c242000  CMP byte ptr [ESP + 0x20],0x0
00acaa41  7516  JNZ 0x00acaa59
00acaa43  8d4c240c  LEA ECX,[ESP + 0xc]
00acaa47  e844cfd0ff  CALL 0x007d7990
00acaa4c  5f  POP EDI
00acaa4d  32c0  XOR AL,AL
00acaa4f  5e  POP ESI
00acaa50  81c438010000  ADD ESP,0x138
00acaa56  c20c00  RET 0xc
00acaa59  53  PUSH EBX
00acaa5a  b301  MOV BL,0x1
00acaa5c  55  PUSH EBP
00acaa5d  885c2413  MOV byte ptr [ESP + 0x13],BL
00acaa61  e85aeffdff  CALL 0x00aa99c0
00acaa66  8be8  MOV EBP,EAX
00acaa68  85ed  TEST EBP,EBP
00acaa6a  740f  JZ 0x00acaa7b
00acaa6c  8d542414  LEA EDX,[ESP + 0x14]
00acaa70  52  PUSH EDX
00acaa71  56  PUSH ESI
00acaa72  6a01  PUSH 0x1
00acaa74  8bcd  MOV ECX,EBP
00acaa76  e895f8fdff  CALL 0x00aaa310
00acaa7b  8b464c  MOV EAX,dword ptr [ESI + 0x4c]
00acaa7e  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00acaa81  6a00  PUSH 0x0
00acaa83  6a00  PUSH 0x0
00acaa85  6a00  PUSH 0x0
00acaa87  50  PUSH EAX
00acaa88  51  PUSH ECX
00acaa89  8d542428  LEA EDX,[ESP + 0x28]
00acaa8d  52  PUSH EDX
00acaa8e  8bce  MOV ECX,ESI
00acaa90  e89bf9ffff  CALL 0x00aca430
00acaa95  84c0  TEST AL,AL
00acaa97  7518  JNZ 0x00acaab1
00acaa99  8d4c2414  LEA ECX,[ESP + 0x14]
00acaa9d  e8eeced0ff  CALL 0x007d7990
00acaaa2  5d  POP EBP
00acaaa3  5b  POP EBX
00acaaa4  5f  POP EDI
00acaaa5  32c0  XOR AL,AL
00acaaa7  5e  POP ESI
00acaaa8  81c438010000  ADD ESP,0x138
00acaaae  c20c00  RET 0xc
00acaab1  807c242800  CMP byte ptr [ESP + 0x28],0x0
00acaab6  0f8408020000  JZ 0x00acacc4
00acaabc  8b464c  MOV EAX,dword ptr [ESI + 0x4c]
00acaabf  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00acaac2  6a00  PUSH 0x0
00acaac4  50  PUSH EAX
00acaac5  51  PUSH ECX
00acaac6  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acaacc  8d542420  LEA EDX,[ESP + 0x20]
00acaad0  52  PUSH EDX
00acaad1  e80a07fcff  CALL 0x00a8b1e0
00acaad6  84c0  TEST AL,AL
00acaad8  7504  JNZ 0x00acaade
00acaada  88442413  MOV byte ptr [ESP + 0x13],AL
00acaade  807c242800  CMP byte ptr [ESP + 0x28],0x0
00acaae3  0f84d7010000  JZ 0x00acacc0
00acaae9  83be6403000000  CMP dword ptr [ESI + 0x364],0x0
00acaaf0  0f848a000000  JZ 0x00acab80
00acaaf6  80beba00000000  CMP byte ptr [ESI + 0xba],0x0
00acaafd  7407  JZ 0x00acab06
00acaaff  8bce  MOV ECX,ESI
00acab01  e89a66feff  CALL 0x00ab11a0
00acab06  8b464c  MOV EAX,dword ptr [ESI + 0x4c]
00acab09  8b5648  MOV EDX,dword ptr [ESI + 0x48]
00acab0c  8b8e64030000  MOV ECX,dword ptr [ESI + 0x364]
00acab12  50  PUSH EAX
00acab13  52  PUSH EDX
00acab14  8d44241c  LEA EAX,[ESP + 0x1c]
00acab18  50  PUSH EAX
00acab19  e8d24a0100  CALL 0x00adf5f0
00acab1e  8ad8  MOV BL,AL
00acab20  84db  TEST BL,BL
00acab22  7558  JNZ 0x00acab7c
00acab24  8d4c242c  LEA ECX,[ESP + 0x2c]
00acab28  51  PUSH ECX
00acab29  8d4c2434  LEA ECX,[ESP + 0x34]
00acab2d  c7442430e4680601  MOV dword ptr [ESP + 0x30],0x10668e4
00acab35  e8b6dd93ff  CALL 0x004088f0
00acab3a  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acab3d  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00acab40  52  PUSH EDX
00acab41  50  PUSH EAX
00acab42  8d4c2438  LEA ECX,[ESP + 0x38]
00acab46  682018fc00  PUSH 0xfc1820
00acab4b  51  PUSH ECX
00acab4c  e8ef3c94ff  CALL 0x0040e840
00acab51  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acab54  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00acab57  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00acab5b  52  PUSH EDX
00acab5c  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00acab5f  50  PUSH EAX
00acab60  68b0680601  PUSH 0x10668b0
00acab65  51  PUSH ECX
00acab66  6a0c  PUSH 0xc
00acab68  6a03  PUSH 0x3
00acab6a  52  PUSH EDX
00acab6b  e870d11900  CALL 0x00c67ce0
00acab70  83c42c  ADD ESP,0x2c
00acab73  8d4c2430  LEA ECX,[ESP + 0x30]
00acab77  e8744da2ff  CALL 0x004ef8f0
00acab7c  205c2413  AND byte ptr [ESP + 0x13],BL
00acab80  6a01  PUSH 0x1
00acab82  8d442418  LEA EAX,[ESP + 0x18]
00acab86  50  PUSH EAX
00acab87  8bce  MOV ECX,ESI
00acab89  e86259feff  CALL 0x00ab04f0
00acab8e  6a00  PUSH 0x0
00acab90  6a00  PUSH 0x0
00acab92  6a01  PUSH 0x1
00acab94  6a01  PUSH 0x1
00acab96  8bce  MOV ECX,ESI
00acab98  e833311a00  CALL 0x00c6dcd0
00acab9d  6a00  PUSH 0x0
00acab9f  8d8c24c8000000  LEA ECX,[ESP + 0xc8]
00acaba6  e835c0d0ff  CALL 0x007d6be0
00acabab  8b4e4c  MOV ECX,dword ptr [ESI + 0x4c]
00acabae  8b5648  MOV EDX,dword ptr [ESI + 0x48]
00acabb1  51  PUSH ECX
00acabb2  52  PUSH EDX
00acabb3  8d8424cc000000  LEA EAX,[ESP + 0xcc]
00acabba  50  PUSH EAX
00acabbb  8d4c2420  LEA ECX,[ESP + 0x20]
00acabbf  51  PUSH ECX
00acabc0  8bce  MOV ECX,ESI
00acabc2  e8d9a3ffff  CALL 0x00ac4fa0
00acabc7  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acabca  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00acabcd  6a00  PUSH 0x0
00acabcf  52  PUSH EDX
00acabd0  50  PUSH EAX
00acabd1  6a00  PUSH 0x0
00acabd3  8d4c2424  LEA ECX,[ESP + 0x24]
00acabd7  51  PUSH ECX
00acabd8  8d8c24d8000000  LEA ECX,[ESP + 0xd8]
00acabdf  e85cbdd0ff  CALL 0x007d6940
00acabe4  80bc245001000000  CMP byte ptr [ESP + 0x150],0x0
00acabec  744d  JZ 0x00acac3b
00acabee  807c242800  CMP byte ptr [ESP + 0x28],0x0
00acabf3  7446  JZ 0x00acac3b
00acabf5  6a00  PUSH 0x0
00acabf7  8d4c2444  LEA ECX,[ESP + 0x44]
00acabfb  e8e0bfd0ff  CALL 0x007d6be0
00acac00  8b5714  MOV EDX,dword ptr [EDI + 0x14]
00acac03  52  PUSH EDX
00acac04  8d442444  LEA EAX,[ESP + 0x44]
00acac08  50  PUSH EAX
00acac09  8d4c241c  LEA ECX,[ESP + 0x1c]
00acac0d  51  PUSH ECX
00acac0e  8bce  MOV ECX,ESI
00acac10  e8bb84feff  CALL 0x00ab30d0
00acac15  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acac18  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00acac1b  6a00  PUSH 0x0
00acac1d  52  PUSH EDX
00acac1e  50  PUSH EAX
00acac1f  684db5f000  PUSH 0xf0b54d
00acac24  8d4c2424  LEA ECX,[ESP + 0x24]
00acac28  51  PUSH ECX
00acac29  8d4c2454  LEA ECX,[ESP + 0x54]
00acac2d  e80ebdd0ff  CALL 0x007d6940
00acac32  8d4c2440  LEA ECX,[ESP + 0x40]
00acac36  e855bcd0ff  CALL 0x007d6890
00acac3b  80bc245401000000  CMP byte ptr [ESP + 0x154],0x0
00acac43  741b  JZ 0x00acac60
00acac45  807c242800  CMP byte ptr [ESP + 0x28],0x0
00acac4a  742f  JZ 0x00acac7b
00acac4c  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acac4f  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00acac52  52  PUSH EDX
00acac53  50  PUSH EAX
00acac54  8d4c241c  LEA ECX,[ESP + 0x1c]
00acac58  51  PUSH ECX
00acac59  8bce  MOV ECX,ESI
00acac5b  e890411a00  CALL 0x00c6edf0
00acac60  807c242800  CMP byte ptr [ESP + 0x28],0x0
00acac65  7414  JZ 0x00acac7b
00acac67  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acac6a  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00acac6d  52  PUSH EDX
00acac6e  50  PUSH EAX
00acac6f  8d4c241c  LEA ECX,[ESP + 0x1c]
00acac73  51  PUSH ECX
00acac74  8bce  MOV ECX,ESI
00acac76  e8153f1a00  CALL 0x00c6eb90
00acac7b  8b7e0c  MOV EDI,dword ptr [ESI + 0xc]
00acac7e  8bcf  MOV ECX,EDI
00acac80  c686c800000000  MOV byte ptr [ESI + 0xc8],0x0
00acac87  e87451eaff  CALL 0x0096fe00
00acac8c  84c0  TEST AL,AL
00acac8e  741a  JZ 0x00acacaa
00acac90  8bcf  MOV ECX,EDI
00acac92  e8c9481900  CALL 0x00c5f560
00acac97  3b4648  CMP EAX,dword ptr [ESI + 0x48]
00acac9a  750e  JNZ 0x00acacaa
00acac9c  3b564c  CMP EDX,dword ptr [ESI + 0x4c]
00acac9f  7509  JNZ 0x00acacaa
00acaca1  6a00  PUSH 0x0
00acaca3  8bce  MOV ECX,ESI
00acaca5  e8066e1a00  CALL 0x00c71ab0
00acacaa  8a5c2413  MOV BL,byte ptr [ESP + 0x13]
00acacae  225c2428  AND BL,byte ptr [ESP + 0x28]
00acacb2  8d8c24c4000000  LEA ECX,[ESP + 0xc4]
00acacb9  e8d2bbd0ff  CALL 0x007d6890
00acacbe  eb04  JMP 0x00acacc4
00acacc0  8a5c2413  MOV BL,byte ptr [ESP + 0x13]
00acacc4  85ed  TEST EBP,EBP
00acacc6  740f  JZ 0x00acacd7
00acacc8  8d542414  LEA EDX,[ESP + 0x14]
00acaccc  52  PUSH EDX
00acaccd  56  PUSH ESI
00acacce  6a00  PUSH 0x0
00acacd0  8bcd  MOV ECX,EBP
00acacd2  e839f6fdff  CALL 0x00aaa310
00acacd7  8d4c2414  LEA ECX,[ESP + 0x14]
00acacdb  e8b0ccd0ff  CALL 0x007d7990
00acace0  5d  POP EBP
00acace1  8ac3  MOV AL,BL
00acace3  5b  POP EBX
00acace4  5f  POP EDI
00acace5  5e  POP ESI
00acace6  81c438010000  ADD ESP,0x138
00acacec  c20c00  RET 0xc
Owned instructions=242 owned bytes=735 gap/nonowned bytes=0

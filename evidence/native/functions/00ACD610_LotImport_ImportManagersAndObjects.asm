# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: LotImport_ImportManagersAndObjects
Paired actual annotated Ghidra pseudocode: 00ACD610_LotImport_ImportManagersAndObjects.c
Owned ranges: [[00acd610, 00acda73]]
Envelope bytes=1124

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00acd610  81ec08010000  SUB ESP,0x108
00acd616  53  PUSH EBX
00acd617  55  PUSH EBP
00acd618  56  PUSH ESI
00acd619  57  PUSH EDI
00acd61a  8bf1  MOV ESI,ECX
00acd61c  e87fbdc9ff  CALL 0x007693a0
00acd621  85c0  TEST EAX,EAX
00acd623  7409  JZ 0x00acd62e
00acd625  8b10  MOV EDX,dword ptr [EAX]
00acd627  8bc8  MOV ECX,EAX
00acd629  8b4238  MOV EAX,dword ptr [EDX + 0x38]
00acd62c  ffd0  CALL EAX
00acd62e  8a8644040000  MOV AL,byte ptr [ESI + 0x444]
00acd634  84c0  TEST AL,AL
00acd636  8b8e60040000  MOV ECX,dword ptr [ESI + 0x460]
00acd63c  8b9664040000  MOV EDX,dword ptr [ESI + 0x464]
00acd642  88442413  MOV byte ptr [ESP + 0x13],AL
00acd646  894c2418  MOV dword ptr [ESP + 0x18],ECX
00acd64a  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00acd64e  740b  JZ 0x00acd65b
00acd650  6a00  PUSH 0x0
00acd652  6a00  PUSH 0x0
00acd654  8bce  MOV ECX,ESI
00acd656  e8e5aefeff  CALL 0x00ab8540
00acd65b  56  PUSH ESI
00acd65c  8d4c2418  LEA ECX,[ESP + 0x18]
00acd660  e8dbbaccff  CALL 0x00799140
00acd665  6a00  PUSH 0x0
00acd667  8d8c2498000000  LEA ECX,[ESP + 0x98]
00acd66e  e86d95d0ff  CALL 0x007d6be0
00acd673  8b8c242c010000  MOV ECX,dword ptr [ESP + 0x12c]
00acd67a  8b942428010000  MOV EDX,dword ptr [ESP + 0x128]
00acd681  8b9c2424010000  MOV EBX,dword ptr [ESP + 0x124]
00acd688  8bac2420010000  MOV EBP,dword ptr [ESP + 0x120]
00acd68f  8bbc241c010000  MOV EDI,dword ptr [ESP + 0x11c]
00acd696  8d442420  LEA EAX,[ESP + 0x20]
00acd69a  50  PUSH EAX
00acd69b  51  PUSH ECX
00acd69c  52  PUSH EDX
00acd69d  53  PUSH EBX
00acd69e  55  PUSH EBP
00acd69f  57  PUSH EDI
00acd6a0  8bce  MOV ECX,ESI
00acd6a2  e8e98effff  CALL 0x00ac6590
00acd6a7  84c0  TEST AL,AL
00acd6a9  752d  JNZ 0x00acd6d8
00acd6ab  8d4c2414  LEA ECX,[ESP + 0x14]
00acd6af  e81c9ff7ff  CALL 0x00a475d0
00acd6b4  8d8c2494000000  LEA ECX,[ESP + 0x94]
00acd6bb  e8d091d0ff  CALL 0x007d6890
00acd6c0  8d4c2414  LEA ECX,[ESP + 0x14]
00acd6c4  e8f7699eff  CALL 0x004b40c0
00acd6c9  5f  POP EDI
00acd6ca  5e  POP ESI
00acd6cb  5d  POP EBP
00acd6cc  32c0  XOR AL,AL
00acd6ce  5b  POP EBX
00acd6cf  81c408010000  ADD ESP,0x108
00acd6d5  c21800  RET 0x18
00acd6d8  6a01  PUSH 0x1
00acd6da  53  PUSH EBX
00acd6db  55  PUSH EBP
00acd6dc  6a00  PUSH 0x0
00acd6de  57  PUSH EDI
00acd6df  8d8c24a8000000  LEA ECX,[ESP + 0xa8]
00acd6e6  e8059dd0ff  CALL 0x007d73f0
00acd6eb  8bce  MOV ECX,ESI
00acd6ed  e8fe77feff  CALL 0x00ab4ef0
00acd6f2  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00acd6f6  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
00acd6fa  8b9678010000  MOV EDX,dword ptr [ESI + 0x178]
00acd700  50  PUSH EAX
00acd701  8b8674010000  MOV EAX,dword ptr [ESI + 0x174]
00acd707  51  PUSH ECX
00acd708  52  PUSH EDX
00acd709  50  PUSH EAX
00acd70a  8bce  MOV ECX,ESI
00acd70c  e8ef76ffff  CALL 0x00ac4e00
00acd711  8d4c2420  LEA ECX,[ESP + 0x20]
00acd715  51  PUSH ECX
00acd716  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acd71c  6a00  PUSH 0x0
00acd71e  57  PUSH EDI
00acd71f  e85ca0fcff  CALL 0x00a97780
00acd724  8d542420  LEA EDX,[ESP + 0x20]
00acd728  52  PUSH EDX
00acd729  57  PUSH EDI
00acd72a  8bce  MOV ECX,ESI
00acd72c  e81f94ffff  CALL 0x00ac6b50
00acd731  8b8ee4020000  MOV ECX,dword ptr [ESI + 0x2e4]
00acd737  85c9  TEST ECX,ECX
00acd739  7417  JZ 0x00acd752
00acd73b  8b942430010000  MOV EDX,dword ptr [ESP + 0x130]
00acd742  6a00  PUSH 0x0
00acd744  8d442424  LEA EAX,[ESP + 0x24]
00acd748  50  PUSH EAX
00acd749  53  PUSH EBX
00acd74a  55  PUSH EBP
00acd74b  52  PUSH EDX
00acd74c  57  PUSH EDI
00acd74d  e83e0f1400  CALL 0x00c0e690
00acd752  8b442444  MOV EAX,dword ptr [ESP + 0x44]
00acd756  85c0  TEST EAX,EAX
00acd758  7d14  JGE 0x00acd76e
00acd75a  8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
00acd760  8b11  MOV EDX,dword ptr [ECX]
00acd762  6a00  PUSH 0x0
00acd764  f7d8  NEG EAX
00acd766  6a00  PUSH 0x0
00acd768  50  PUSH EAX
00acd769  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00acd76c  ffd0  CALL EAX
00acd76e  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00acd772  85c0  TEST EAX,EAX
00acd774  7e12  JLE 0x00acd788
00acd776  8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
00acd77c  8b11  MOV EDX,dword ptr [ECX]
00acd77e  6a00  PUSH 0x0
00acd780  6a01  PUSH 0x1
00acd782  50  PUSH EAX
00acd783  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00acd786  ffd0  CALL EAX
00acd788  8b8eb4020000  MOV ECX,dword ptr [ESI + 0x2b4]
00acd78e  85c9  TEST ECX,ECX
00acd790  7415  JZ 0x00acd7a7
00acd792  8b942430010000  MOV EDX,dword ptr [ESP + 0x130]
00acd799  6a00  PUSH 0x0
00acd79b  52  PUSH EDX
00acd79c  8d442428  LEA EAX,[ESP + 0x28]
00acd7a0  50  PUSH EAX
00acd7a1  57  PUSH EDI
00acd7a2  e829470500  CALL 0x00b21ed0
00acd7a7  8b8eb8020000  MOV ECX,dword ptr [ESI + 0x2b8]
00acd7ad  85c9  TEST ECX,ECX
00acd7af  7415  JZ 0x00acd7c6
00acd7b1  8b942430010000  MOV EDX,dword ptr [ESP + 0x130]
00acd7b8  6a00  PUSH 0x0
00acd7ba  52  PUSH EDX
00acd7bb  8d442428  LEA EAX,[ESP + 0x28]
00acd7bf  50  PUSH EAX
00acd7c0  57  PUSH EDI
00acd7c1  e83aff1400  CALL 0x00c1d700
00acd7c6  8b942430010000  MOV EDX,dword ptr [ESP + 0x130]
00acd7cd  8d4c2420  LEA ECX,[ESP + 0x20]
00acd7d1  51  PUSH ECX
00acd7d2  52  PUSH EDX
00acd7d3  53  PUSH EBX
00acd7d4  55  PUSH EBP
00acd7d5  57  PUSH EDI
00acd7d6  8bce  MOV ECX,ESI
00acd7d8  e8e370feff  CALL 0x00ab48c0
00acd7dd  8bce  MOV ECX,ESI
00acd7df  e88c091a00  CALL 0x00c6e170
00acd7e4  8b8ed8020000  MOV ECX,dword ptr [ESI + 0x2d8]
00acd7ea  85c9  TEST ECX,ECX
00acd7ec  7417  JZ 0x00acd805
00acd7ee  8b942430010000  MOV EDX,dword ptr [ESP + 0x130]
00acd7f5  6a00  PUSH 0x0
00acd7f7  8d442424  LEA EAX,[ESP + 0x24]
00acd7fb  50  PUSH EAX
00acd7fc  53  PUSH EBX
00acd7fd  55  PUSH EBP
00acd7fe  52  PUSH EDX
00acd7ff  57  PUSH EDI
00acd800  e8fbbb1300  CALL 0x00c09400
00acd805  8b8ecc020000  MOV ECX,dword ptr [ESI + 0x2cc]
00acd80b  85c9  TEST ECX,ECX
00acd80d  7412  JZ 0x00acd821
00acd80f  8b842430010000  MOV EAX,dword ptr [ESP + 0x130]
00acd816  6a00  PUSH 0x0
00acd818  53  PUSH EBX
00acd819  55  PUSH EBP
00acd81a  50  PUSH EAX
00acd81b  57  PUSH EDI
00acd81c  e8ff8efaff  CALL 0x00a76720
00acd821  6a18  PUSH 0x18
00acd823  e828190100  CALL 0x00adf150
00acd828  83c404  ADD ESP,0x4
00acd82b  85c0  TEST EAX,EAX
00acd82d  0f843a020000  JZ 0x00acda6d
00acd833  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00acd839  33c9  XOR ECX,ECX
00acd83b  8d5004  LEA EDX,[EAX + 0x4]
00acd83e  870a  XCHG dword ptr [EDX],ECX
00acd840  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00acd846  8b10  MOV EDX,dword ptr [EAX]
00acd848  8bf8  MOV EDI,EAX
00acd84a  8bc8  MOV ECX,EAX
00acd84c  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00acd84f  ffd0  CALL EAX
00acd851  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00acd854  894f08  MOV dword ptr [EDI + 0x8],ECX
00acd857  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acd85a  89570c  MOV dword ptr [EDI + 0xc],EDX
00acd85d  8b867c010000  MOV EAX,dword ptr [ESI + 0x17c]
00acd863  894710  MOV dword ptr [EDI + 0x10],EAX
00acd866  8b8e80010000  MOV ECX,dword ptr [ESI + 0x180]
00acd86c  894f14  MOV dword ptr [EDI + 0x14],ECX
00acd86f  80bec900000000  CMP byte ptr [ESI + 0xc9],0x0
00acd876  752a  JNZ 0x00acd8a2
00acd878  83be6403000000  CMP dword ptr [ESI + 0x364],0x0
00acd87f  7421  JZ 0x00acd8a2
00acd881  e86aec97ff  CALL 0x0044c4f0
00acd886  85c0  TEST EAX,EAX
00acd888  7418  JZ 0x00acd8a2
00acd88a  8b8e64030000  MOV ECX,dword ptr [ESI + 0x364]
00acd890  8b10  MOV EDX,dword ptr [EAX]
00acd892  8b521c  MOV EDX,dword ptr [EDX + 0x1c]
00acd895  51  PUSH ECX
00acd896  6a00  PUSH 0x0
00acd898  57  PUSH EDI
00acd899  68249e1f04  PUSH 0x41f9e24
00acd89e  8bc8  MOV ECX,EAX
00acd8a0  ffd2  CALL EDX
00acd8a2  8b07  MOV EAX,dword ptr [EDI]
00acd8a4  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00acd8a7  8bcf  MOV ECX,EDI
00acd8a9  ffd2  CALL EDX
00acd8ab  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acd8b1  e87a86fcff  CALL 0x00a95f30
00acd8b6  8b8e98020000  MOV ECX,dword ptr [ESI + 0x298]
00acd8bc  85c9  TEST ECX,ECX
00acd8be  7405  JZ 0x00acd8c5
00acd8c0  e86b630800  CALL 0x00b53c30
00acd8c5  8b8eb4020000  MOV ECX,dword ptr [ESI + 0x2b4]
00acd8cb  85c9  TEST ECX,ECX
00acd8cd  741a  JZ 0x00acd8e9
00acd8cf  8b842430010000  MOV EAX,dword ptr [ESP + 0x130]
00acd8d6  50  PUSH EAX
00acd8d7  e8c48b0400  CALL 0x00b164a0
00acd8dc  8b8eb4020000  MOV ECX,dword ptr [ESI + 0x2b4]
00acd8e2  6a01  PUSH 0x1
00acd8e4  e8e7380500  CALL 0x00b211d0
00acd8e9  8b8eb8020000  MOV ECX,dword ptr [ESI + 0x2b8]
00acd8ef  85c9  TEST ECX,ECX
00acd8f1  7405  JZ 0x00acd8f8
00acd8f3  e8c8679eff  CALL 0x004b40c0
00acd8f8  8b8ebc020000  MOV ECX,dword ptr [ESI + 0x2bc]
00acd8fe  85c9  TEST ECX,ECX
00acd900  7405  JZ 0x00acd907
00acd902  e8c9f70900  CALL 0x00b6d0d0
00acd907  8b8ec8020000  MOV ECX,dword ptr [ESI + 0x2c8]
00acd90d  85c9  TEST ECX,ECX
00acd90f  7405  JZ 0x00acd916
00acd911  e8ea850900  CALL 0x00b65f00
00acd916  8b8ec0020000  MOV ECX,dword ptr [ESI + 0x2c0]
00acd91c  85c9  TEST ECX,ECX
00acd91e  7405  JZ 0x00acd925
00acd920  e84b950800  CALL 0x00b56e70
00acd925  83bee802000000  CMP dword ptr [ESI + 0x2e8],0x0
00acd92c  7407  JZ 0x00acd935
00acd92e  8bce  MOV ECX,ESI
00acd930  e85bfaffff  CALL 0x00acd390
00acd935  8bce  MOV ECX,ESI
00acd937  e8b479feff  CALL 0x00ab52f0
00acd93c  6a00  PUSH 0x0
00acd93e  6a00  PUSH 0x0
00acd940  6a01  PUSH 0x1
00acd942  6a01  PUSH 0x1
00acd944  8bce  MOV ECX,ESI
00acd946  e885031a00  CALL 0x00c6dcd0
00acd94b  838e3001000001  OR dword ptr [ESI + 0x130],0x1
00acd952  80beb900000000  CMP byte ptr [ESI + 0xb9],0x0
00acd959  c686c800000001  MOV byte ptr [ESI + 0xc8],0x1
00acd960  c6862803000001  MOV byte ptr [ESI + 0x328],0x1
00acd967  c6863403000001  MOV byte ptr [ESI + 0x334],0x1
00acd96e  c6863c03000001  MOV byte ptr [ESI + 0x33c],0x1
00acd975  c6863d03000001  MOV byte ptr [ESI + 0x33d],0x1
00acd97c  c6867002000001  MOV byte ptr [ESI + 0x270],0x1
00acd983  c6862504000001  MOV byte ptr [ESI + 0x425],0x1
00acd98a  c686ba00000001  MOV byte ptr [ESI + 0xba],0x1
00acd991  7522  JNZ 0x00acd9b5
00acd993  8b0d30ec1e01  MOV ECX,dword ptr [0x011eec30]
00acd999  85c9  TEST ECX,ECX
00acd99b  7418  JZ 0x00acd9b5
00acd99d  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00acd9a0  8b4648  MOV EAX,dword ptr [ESI + 0x48]
00acd9a3  6a07  PUSH 0x7
00acd9a5  52  PUSH EDX
00acd9a6  50  PUSH EAX
00acd9a7  52  PUSH EDX
00acd9a8  50  PUSH EAX
00acd9a9  e8a23e2900  CALL 0x00d61850
00acd9ae  c686b900000001  MOV byte ptr [ESI + 0xb9],0x1
00acd9b5  8d4c2414  LEA ECX,[ESP + 0x14]
00acd9b9  e8129cf7ff  CALL 0x00a475d0
00acd9be  8b8ed8020000  MOV ECX,dword ptr [ESI + 0x2d8]
00acd9c4  85c9  TEST ECX,ECX
00acd9c6  7405  JZ 0x00acd9cd
00acd9c8  e8b3b11300  CALL 0x00c08b80
00acd9cd  8b8ee4020000  MOV ECX,dword ptr [ESI + 0x2e4]
00acd9d3  85c9  TEST ECX,ECX
00acd9d5  7405  JZ 0x00acd9dc
00acd9d7  e8540a1400  CALL 0x00c0e430
00acd9dc  e80fb3d5ff  CALL 0x00828cf0
00acd9e1  85c0  TEST EAX,EAX
00acd9e3  7442  JZ 0x00acda27
00acd9e5  8bc8  MOV ECX,EAX
00acd9e7  e8d4bbd5ff  CALL 0x008295c0
00acd9ec  8bd8  MOV EBX,EAX
00acd9ee  85db  TEST EBX,EBX
00acd9f0  7435  JZ 0x00acda27
00acd9f2  8b6e4c  MOV EBP,dword ptr [ESI + 0x4c]
00acd9f5  8b7e48  MOV EDI,dword ptr [ESI + 0x48]
00acd9f8  55  PUSH EBP
00acd9f9  57  PUSH EDI
00acd9fa  8bcb  MOV ECX,EBX
00acd9fc  e8bf48b6ff  CALL 0x006322c0
00acda01  55  PUSH EBP
00acda02  57  PUSH EDI
00acda03  8bcb  MOV ECX,EBX
00acda05  8844241a  MOV byte ptr [ESP + 0x1a],AL
00acda09  e8223db6ff  CALL 0x00631730
00acda0e  55  PUSH EBP
00acda0f  57  PUSH EDI
00acda10  8bcb  MOV ECX,EBX
00acda12  e86906b7ff  CALL 0x0063e080
00acda17  807c241200  CMP byte ptr [ESP + 0x12],0x0
00acda1c  7409  JZ 0x00acda27
00acda1e  55  PUSH EBP
00acda1f  57  PUSH EDI
00acda20  8bcb  MOV ECX,EBX
00acda22  e8e948b6ff  CALL 0x00632310
00acda27  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00acda2a  6a00  PUSH 0x0
00acda2c  e8df591900  CALL 0x00c63410
00acda31  807c241300  CMP byte ptr [ESP + 0x13],0x0
00acda36  7411  JZ 0x00acda49
00acda38  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00acda3c  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00acda40  51  PUSH ECX
00acda41  52  PUSH EDX
00acda42  8bce  MOV ECX,ESI
00acda44  e8f7aafeff  CALL 0x00ab8540
00acda49  8d8c2494000000  LEA ECX,[ESP + 0x94]
00acda50  e83b8ed0ff  CALL 0x007d6890
00acda55  8d4c2414  LEA ECX,[ESP + 0x14]
00acda59  e862669eff  CALL 0x004b40c0
00acda5e  5f  POP EDI
00acda5f  5e  POP ESI
00acda60  5d  POP EBP
00acda61  b001  MOV AL,0x1
00acda63  5b  POP EBX
00acda64  81c408010000  ADD ESP,0x108
00acda6a  c21800  RET 0x18
00acda6d  33ff  XOR EDI,EDI
00acda6f  e9ddfdffff  JMP 0x00acd851
Owned instructions=348 owned bytes=1124 nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: LotImposter_InitializeCreatorsAndAtlasKeys
Paired actual annotated Ghidra pseudocode: 00ADE660_LotImposter_InitializeCreatorsAndAtlasKeys.c
Owned body: [[00ade660, 00adebe3]]
Envelope bytes=1412

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00ade660  51  PUSH ECX
00ade661  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00ade665  53  PUSH EBX
00ade666  55  PUSH EBP
00ade667  56  PUSH ESI
00ade668  57  PUSH EDI
00ade669  6a00  PUSH 0x0
00ade66b  6a00  PUSH 0x0
00ade66d  6a00  PUSH 0x0
00ade66f  8bf1  MOV ESI,ECX
00ade671  6a00  PUSH 0x0
00ade673  894604  MOV dword ptr [ESI + 0x4],EAX
00ade676  8a98bc040000  MOV BL,byte ptr [EAX + 0x4bc]
00ade67c  6870970601  PUSH 0x1069770
00ade681  6a5c  PUSH 0x5c
00ade683  885c2430  MOV byte ptr [ESP + 0x30],BL
00ade687  e8745ea0ff  CALL 0x004e4500
00ade68c  83c418  ADD ESP,0x18
00ade68f  85c0  TEST EAX,EAX
00ade691  740b  JZ 0x00ade69e
00ade693  8bc8  MOV ECX,EAX
00ade695  e8a6af1600  CALL 0x00c49640
00ade69a  8be8  MOV EBP,EAX
00ade69c  eb02  JMP 0x00ade6a0
00ade69e  33ed  XOR EBP,EBP
00ade6a0  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade6a3  8b4500  MOV EAX,dword ptr [EBP]
00ade6a6  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade6a9  56  PUSH ESI
00ade6aa  51  PUSH ECX
00ade6ab  8bcd  MOV ECX,EBP
00ade6ad  ffd2  CALL EDX
00ade6af  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00ade6b2  3b4610  CMP EAX,dword ptr [ESI + 0x10]
00ade6b5  8d7e08  LEA EDI,[ESI + 0x8]
00ade6b8  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade6bc  730e  JNC 0x00ade6cc
00ade6be  85c0  TEST EAX,EAX
00ade6c0  8d4804  LEA ECX,[EAX + 0x4]
00ade6c3  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade6c6  7411  JZ 0x00ade6d9
00ade6c8  8928  MOV dword ptr [EAX],EBP
00ade6ca  eb0d  JMP 0x00ade6d9
00ade6cc  8d542410  LEA EDX,[ESP + 0x10]
00ade6d0  52  PUSH EDX
00ade6d1  50  PUSH EAX
00ade6d2  8bcf  MOV ECX,EDI
00ade6d4  e8473deaff  CALL 0x00982420
00ade6d9  6a00  PUSH 0x0
00ade6db  6a00  PUSH 0x0
00ade6dd  6a00  PUSH 0x0
00ade6df  6a00  PUSH 0x0
00ade6e1  6848970601  PUSH 0x1069748
00ade6e6  6a4c  PUSH 0x4c
00ade6e8  e8135ea0ff  CALL 0x004e4500
00ade6ed  83c418  ADD ESP,0x18
00ade6f0  85c0  TEST EAX,EAX
00ade6f2  7413  JZ 0x00ade707
00ade6f4  33c9  XOR ECX,ECX
00ade6f6  84db  TEST BL,BL
00ade6f8  0f94c1  SETZ CL
00ade6fb  51  PUSH ECX
00ade6fc  8bc8  MOV ECX,EAX
00ade6fe  e8bdb3faff  CALL 0x00a89ac0
00ade703  8be8  MOV EBP,EAX
00ade705  eb02  JMP 0x00ade709
00ade707  33ed  XOR EBP,EBP
00ade709  8b5500  MOV EDX,dword ptr [EBP]
00ade70c  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00ade70f  8b5204  MOV EDX,dword ptr [EDX + 0x4]
00ade712  56  PUSH ESI
00ade713  50  PUSH EAX
00ade714  8bcd  MOV ECX,EBP
00ade716  ffd2  CALL EDX
00ade718  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade71b  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade71e  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade722  730e  JNC 0x00ade732
00ade724  85c0  TEST EAX,EAX
00ade726  8d4804  LEA ECX,[EAX + 0x4]
00ade729  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade72c  7411  JZ 0x00ade73f
00ade72e  8928  MOV dword ptr [EAX],EBP
00ade730  eb0d  JMP 0x00ade73f
00ade732  8d542410  LEA EDX,[ESP + 0x10]
00ade736  52  PUSH EDX
00ade737  50  PUSH EAX
00ade738  8bcf  MOV ECX,EDI
00ade73a  e8e13ceaff  CALL 0x00982420
00ade73f  6a00  PUSH 0x0
00ade741  6a00  PUSH 0x0
00ade743  6a00  PUSH 0x0
00ade745  6a00  PUSH 0x0
00ade747  6818970601  PUSH 0x1069718
00ade74c  6884000000  PUSH 0x84
00ade751  e8aa5da0ff  CALL 0x004e4500
00ade756  83c418  ADD ESP,0x18
00ade759  85c0  TEST EAX,EAX
00ade75b  740b  JZ 0x00ade768
00ade75d  8bc8  MOV ECX,EAX
00ade75f  e8ac78fcff  CALL 0x00aa6010
00ade764  8be8  MOV EBP,EAX
00ade766  eb02  JMP 0x00ade76a
00ade768  33ed  XOR EBP,EBP
00ade76a  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade76d  8b4500  MOV EAX,dword ptr [EBP]
00ade770  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade773  56  PUSH ESI
00ade774  51  PUSH ECX
00ade775  8bcd  MOV ECX,EBP
00ade777  ffd2  CALL EDX
00ade779  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade77c  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade77f  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade783  730e  JNC 0x00ade793
00ade785  85c0  TEST EAX,EAX
00ade787  8d4804  LEA ECX,[EAX + 0x4]
00ade78a  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade78d  7411  JZ 0x00ade7a0
00ade78f  8928  MOV dword ptr [EAX],EBP
00ade791  eb0d  JMP 0x00ade7a0
00ade793  8d542410  LEA EDX,[ESP + 0x10]
00ade797  52  PUSH EDX
00ade798  50  PUSH EAX
00ade799  8bcf  MOV ECX,EDI
00ade79b  e8803ceaff  CALL 0x00982420
00ade7a0  33db  XOR EBX,EBX
00ade7a2  385c2418  CMP byte ptr [ESP + 0x18],BL
00ade7a6  7559  JNZ 0x00ade801
00ade7a8  53  PUSH EBX
00ade7a9  53  PUSH EBX
00ade7aa  53  PUSH EBX
00ade7ab  53  PUSH EBX
00ade7ac  68ec960601  PUSH 0x10696ec
00ade7b1  6a64  PUSH 0x64
00ade7b3  e8485da0ff  CALL 0x004e4500
00ade7b8  83c418  ADD ESP,0x18
00ade7bb  85c0  TEST EAX,EAX
00ade7bd  740b  JZ 0x00ade7ca
00ade7bf  8bc8  MOV ECX,EAX
00ade7c1  e8da690100  CALL 0x00af51a0
00ade7c6  8bd8  MOV EBX,EAX
00ade7c8  eb02  JMP 0x00ade7cc
00ade7ca  33db  XOR EBX,EBX
00ade7cc  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade7cf  8b03  MOV EAX,dword ptr [EBX]
00ade7d1  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade7d4  56  PUSH ESI
00ade7d5  51  PUSH ECX
00ade7d6  8bcb  MOV ECX,EBX
00ade7d8  ffd2  CALL EDX
00ade7da  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade7dd  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade7e0  895c2410  MOV dword ptr [ESP + 0x10],EBX
00ade7e4  730e  JNC 0x00ade7f4
00ade7e6  85c0  TEST EAX,EAX
00ade7e8  8d4804  LEA ECX,[EAX + 0x4]
00ade7eb  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade7ee  7411  JZ 0x00ade801
00ade7f0  8918  MOV dword ptr [EAX],EBX
00ade7f2  eb0d  JMP 0x00ade801
00ade7f4  8d542410  LEA EDX,[ESP + 0x10]
00ade7f8  52  PUSH EDX
00ade7f9  50  PUSH EAX
00ade7fa  8bcf  MOV ECX,EDI
00ade7fc  e81f3ceaff  CALL 0x00982420
00ade801  6a00  PUSH 0x0
00ade803  6a00  PUSH 0x0
00ade805  6a00  PUSH 0x0
00ade807  6a00  PUSH 0x0
00ade809  68c4960601  PUSH 0x10696c4
00ade80e  6a34  PUSH 0x34
00ade810  e8eb5ca0ff  CALL 0x004e4500
00ade815  83c418  ADD ESP,0x18
00ade818  85c0  TEST EAX,EAX
00ade81a  740b  JZ 0x00ade827
00ade81c  8bc8  MOV ECX,EAX
00ade81e  e86da80a00  CALL 0x00b89090
00ade823  8be8  MOV EBP,EAX
00ade825  eb02  JMP 0x00ade829
00ade827  33ed  XOR EBP,EBP
00ade829  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade82c  8b4500  MOV EAX,dword ptr [EBP]
00ade82f  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade832  56  PUSH ESI
00ade833  51  PUSH ECX
00ade834  8bcd  MOV ECX,EBP
00ade836  ffd2  CALL EDX
00ade838  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade83b  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade83e  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade842  730e  JNC 0x00ade852
00ade844  85c0  TEST EAX,EAX
00ade846  8d4804  LEA ECX,[EAX + 0x4]
00ade849  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade84c  7411  JZ 0x00ade85f
00ade84e  8928  MOV dword ptr [EAX],EBP
00ade850  eb0d  JMP 0x00ade85f
00ade852  8d542410  LEA EDX,[ESP + 0x10]
00ade856  52  PUSH EDX
00ade857  50  PUSH EAX
00ade858  8bcf  MOV ECX,EDI
00ade85a  e8c13beaff  CALL 0x00982420
00ade85f  6a00  PUSH 0x0
00ade861  6a00  PUSH 0x0
00ade863  6a00  PUSH 0x0
00ade865  6a00  PUSH 0x0
00ade867  6898960601  PUSH 0x1069698
00ade86c  6a40  PUSH 0x40
00ade86e  e88d5ca0ff  CALL 0x004e4500
00ade873  83c418  ADD ESP,0x18
00ade876  85c0  TEST EAX,EAX
00ade878  740b  JZ 0x00ade885
00ade87a  8bc8  MOV ECX,EAX
00ade87c  e8df97f6ff  CALL 0x00a48060
00ade881  8be8  MOV EBP,EAX
00ade883  eb02  JMP 0x00ade887
00ade885  33ed  XOR EBP,EBP
00ade887  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade88a  8b4500  MOV EAX,dword ptr [EBP]
00ade88d  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade890  56  PUSH ESI
00ade891  51  PUSH ECX
00ade892  8bcd  MOV ECX,EBP
00ade894  ffd2  CALL EDX
00ade896  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade899  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade89c  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade8a0  730e  JNC 0x00ade8b0
00ade8a2  85c0  TEST EAX,EAX
00ade8a4  8d4804  LEA ECX,[EAX + 0x4]
00ade8a7  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade8aa  7411  JZ 0x00ade8bd
00ade8ac  8928  MOV dword ptr [EAX],EBP
00ade8ae  eb0d  JMP 0x00ade8bd
00ade8b0  8d542410  LEA EDX,[ESP + 0x10]
00ade8b4  52  PUSH EDX
00ade8b5  50  PUSH EAX
00ade8b6  8bcf  MOV ECX,EDI
00ade8b8  e8633beaff  CALL 0x00982420
00ade8bd  6a00  PUSH 0x0
00ade8bf  6a00  PUSH 0x0
00ade8c1  6a00  PUSH 0x0
00ade8c3  6a00  PUSH 0x0
00ade8c5  6870960601  PUSH 0x1069670
00ade8ca  6a40  PUSH 0x40
00ade8cc  e82f5ca0ff  CALL 0x004e4500
00ade8d1  83c418  ADD ESP,0x18
00ade8d4  85c0  TEST EAX,EAX
00ade8d6  740b  JZ 0x00ade8e3
00ade8d8  8bc8  MOV ECX,EAX
00ade8da  e891ab1300  CALL 0x00c19470
00ade8df  8be8  MOV EBP,EAX
00ade8e1  eb02  JMP 0x00ade8e5
00ade8e3  33ed  XOR EBP,EBP
00ade8e5  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade8e8  8b4500  MOV EAX,dword ptr [EBP]
00ade8eb  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade8ee  56  PUSH ESI
00ade8ef  51  PUSH ECX
00ade8f0  8bcd  MOV ECX,EBP
00ade8f2  ffd2  CALL EDX
00ade8f4  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade8f7  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade8fa  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade8fe  730e  JNC 0x00ade90e
00ade900  85c0  TEST EAX,EAX
00ade902  8d4804  LEA ECX,[EAX + 0x4]
00ade905  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade908  7411  JZ 0x00ade91b
00ade90a  8928  MOV dword ptr [EAX],EBP
00ade90c  eb0d  JMP 0x00ade91b
00ade90e  8d542410  LEA EDX,[ESP + 0x10]
00ade912  52  PUSH EDX
00ade913  50  PUSH EAX
00ade914  8bcf  MOV ECX,EDI
00ade916  e8053beaff  CALL 0x00982420
00ade91b  6a00  PUSH 0x0
00ade91d  6a00  PUSH 0x0
00ade91f  6a00  PUSH 0x0
00ade921  6a00  PUSH 0x0
00ade923  6848960601  PUSH 0x1069648
00ade928  6a50  PUSH 0x50
00ade92a  e8d15ba0ff  CALL 0x004e4500
00ade92f  83c418  ADD ESP,0x18
00ade932  85c0  TEST EAX,EAX
00ade934  740b  JZ 0x00ade941
00ade936  8bc8  MOV ECX,EAX
00ade938  e82373f8ff  CALL 0x00a65c60
00ade93d  8be8  MOV EBP,EAX
00ade93f  eb02  JMP 0x00ade943
00ade941  33ed  XOR EBP,EBP
00ade943  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade946  8b4500  MOV EAX,dword ptr [EBP]
00ade949  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade94c  56  PUSH ESI
00ade94d  51  PUSH ECX
00ade94e  8bcd  MOV ECX,EBP
00ade950  ffd2  CALL EDX
00ade952  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade955  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade958  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade95c  730e  JNC 0x00ade96c
00ade95e  85c0  TEST EAX,EAX
00ade960  8d4804  LEA ECX,[EAX + 0x4]
00ade963  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade966  7411  JZ 0x00ade979
00ade968  8928  MOV dword ptr [EAX],EBP
00ade96a  eb0d  JMP 0x00ade979
00ade96c  8d542410  LEA EDX,[ESP + 0x10]
00ade970  52  PUSH EDX
00ade971  50  PUSH EAX
00ade972  8bcf  MOV ECX,EDI
00ade974  e8a73aeaff  CALL 0x00982420
00ade979  6a00  PUSH 0x0
00ade97b  6a00  PUSH 0x0
00ade97d  6a00  PUSH 0x0
00ade97f  6a00  PUSH 0x0
00ade981  6820960601  PUSH 0x1069620
00ade986  6a40  PUSH 0x40
00ade988  e8735ba0ff  CALL 0x004e4500
00ade98d  83c418  ADD ESP,0x18
00ade990  85c0  TEST EAX,EAX
00ade992  740b  JZ 0x00ade99f
00ade994  8bc8  MOV ECX,EAX
00ade996  e8a5fb1700  CALL 0x00c5e540
00ade99b  8be8  MOV EBP,EAX
00ade99d  eb02  JMP 0x00ade9a1
00ade99f  33ed  XOR EBP,EBP
00ade9a1  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00ade9a4  8b4500  MOV EAX,dword ptr [EBP]
00ade9a7  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ade9aa  56  PUSH ESI
00ade9ab  51  PUSH ECX
00ade9ac  8bcd  MOV ECX,EBP
00ade9ae  ffd2  CALL EDX
00ade9b0  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00ade9b3  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00ade9b6  896c2410  MOV dword ptr [ESP + 0x10],EBP
00ade9ba  730e  JNC 0x00ade9ca
00ade9bc  85c0  TEST EAX,EAX
00ade9be  8d4804  LEA ECX,[EAX + 0x4]
00ade9c1  894f04  MOV dword ptr [EDI + 0x4],ECX
00ade9c4  7411  JZ 0x00ade9d7
00ade9c6  8928  MOV dword ptr [EAX],EBP
00ade9c8  eb0d  JMP 0x00ade9d7
00ade9ca  8d542410  LEA EDX,[ESP + 0x10]
00ade9ce  52  PUSH EDX
00ade9cf  50  PUSH EAX
00ade9d0  8bcf  MOV ECX,EDI
00ade9d2  e8493aeaff  CALL 0x00982420
00ade9d7  6a00  PUSH 0x0
00ade9d9  6a00  PUSH 0x0
00ade9db  6a00  PUSH 0x0
00ade9dd  6a00  PUSH 0x0
00ade9df  68f8950601  PUSH 0x10695f8
00ade9e4  6a40  PUSH 0x40
00ade9e6  e8155ba0ff  CALL 0x004e4500
00ade9eb  83c418  ADD ESP,0x18
00ade9ee  85c0  TEST EAX,EAX
00ade9f0  740b  JZ 0x00ade9fd
00ade9f2  8bc8  MOV ECX,EAX
00ade9f4  e8972bf7ff  CALL 0x00a51590
00ade9f9  8be8  MOV EBP,EAX
00ade9fb  eb02  JMP 0x00ade9ff
00ade9fd  33ed  XOR EBP,EBP
00ade9ff  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00adea02  8b4500  MOV EAX,dword ptr [EBP]
00adea05  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00adea08  56  PUSH ESI
00adea09  51  PUSH ECX
00adea0a  8bcd  MOV ECX,EBP
00adea0c  ffd2  CALL EDX
00adea0e  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00adea11  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00adea14  896c2410  MOV dword ptr [ESP + 0x10],EBP
00adea18  730e  JNC 0x00adea28
00adea1a  85c0  TEST EAX,EAX
00adea1c  8d4804  LEA ECX,[EAX + 0x4]
00adea1f  894f04  MOV dword ptr [EDI + 0x4],ECX
00adea22  7411  JZ 0x00adea35
00adea24  8928  MOV dword ptr [EAX],EBP
00adea26  eb0d  JMP 0x00adea35
00adea28  8d542410  LEA EDX,[ESP + 0x10]
00adea2c  52  PUSH EDX
00adea2d  50  PUSH EAX
00adea2e  8bcf  MOV ECX,EDI
00adea30  e8eb39eaff  CALL 0x00982420
00adea35  807c241800  CMP byte ptr [ESP + 0x18],0x0
00adea3a  7563  JNZ 0x00adea9f
00adea3c  85db  TEST EBX,EBX
00adea3e  745f  JZ 0x00adea9f
00adea40  6a00  PUSH 0x0
00adea42  6a00  PUSH 0x0
00adea44  6a00  PUSH 0x0
00adea46  6a00  PUSH 0x0
00adea48  68d0950601  PUSH 0x10695d0
00adea4d  6a20  PUSH 0x20
00adea4f  e8ac5aa0ff  CALL 0x004e4500
00adea54  83c418  ADD ESP,0x18
00adea57  85c0  TEST EAX,EAX
00adea59  740c  JZ 0x00adea67
00adea5b  53  PUSH EBX
00adea5c  8bc8  MOV ECX,EAX
00adea5e  e85d3a0800  CALL 0x00b624c0
00adea63  8bf8  MOV EDI,EAX
00adea65  eb02  JMP 0x00adea69
00adea67  33ff  XOR EDI,EDI
00adea69  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00adea6c  8b07  MOV EAX,dword ptr [EDI]
00adea6e  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00adea71  56  PUSH ESI
00adea72  51  PUSH ECX
00adea73  8bcf  MOV ECX,EDI
00adea75  ffd2  CALL EDX
00adea77  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00adea7a  3b4620  CMP EAX,dword ptr [ESI + 0x20]
00adea7d  8d4e18  LEA ECX,[ESI + 0x18]
00adea80  897c2418  MOV dword ptr [ESP + 0x18],EDI
00adea84  730e  JNC 0x00adea94
00adea86  85c0  TEST EAX,EAX
00adea88  8d5004  LEA EDX,[EAX + 0x4]
00adea8b  895104  MOV dword ptr [ECX + 0x4],EDX
00adea8e  740f  JZ 0x00adea9f
00adea90  8938  MOV dword ptr [EAX],EDI
00adea92  eb0b  JMP 0x00adea9f
00adea94  8d542418  LEA EDX,[ESP + 0x18]
00adea98  52  PUSH EDX
00adea99  50  PUSH EAX
00adea9a  e88139eaff  CALL 0x00982420
00adea9f  6a00  PUSH 0x0
00adeaa1  6a00  PUSH 0x0
00adeaa3  6a00  PUSH 0x0
00adeaa5  6a00  PUSH 0x0
00adeaa7  68c08f0601  PUSH 0x1068fc0
00adeaac  6a0c  PUSH 0xc
00adeaae  e84d5aa0ff  CALL 0x004e4500
00adeab3  83c418  ADD ESP,0x18
00adeab6  85c0  TEST EAX,EAX
00adeab8  740b  JZ 0x00adeac5
00adeaba  8bc8  MOV ECX,EAX
00adeabc  e80f85fcff  CALL 0x00aa6fd0
00adeac1  8bf8  MOV EDI,EAX
00adeac3  eb02  JMP 0x00adeac7
00adeac5  33ff  XOR EDI,EDI
00adeac7  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00adeaca  8b07  MOV EAX,dword ptr [EDI]
00adeacc  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00adeacf  56  PUSH ESI
00adead0  51  PUSH ECX
00adead1  8bcf  MOV ECX,EDI
00adead3  ffd2  CALL EDX
00adead5  8b462c  MOV EAX,dword ptr [ESI + 0x2c]
00adead8  3b4630  CMP EAX,dword ptr [ESI + 0x30]
00adeadb  8d4e28  LEA ECX,[ESI + 0x28]
00adeade  897c2418  MOV dword ptr [ESP + 0x18],EDI
00adeae2  730e  JNC 0x00adeaf2
00adeae4  85c0  TEST EAX,EAX
00adeae6  8d5004  LEA EDX,[EAX + 0x4]
00adeae9  895104  MOV dword ptr [ECX + 0x4],EDX
00adeaec  740f  JZ 0x00adeafd
00adeaee  8938  MOV dword ptr [EAX],EDI
00adeaf0  eb0b  JMP 0x00adeafd
00adeaf2  8d542418  LEA EDX,[ESP + 0x18]
00adeaf6  52  PUSH EDX
00adeaf7  50  PUSH EAX
00adeaf8  e82339eaff  CALL 0x00982420
00adeafd  8b7e04  MOV EDI,dword ptr [ESI + 0x4]
00adeb00  8b5748  MOV EDX,dword ptr [EDI + 0x48]
00adeb03  8b7f4c  MOV EDI,dword ptr [EDI + 0x4c]
00adeb06  b982d8b200  MOV ECX,0xb2d882
00adeb0b  895658  MOV dword ptr [ESI + 0x58],EDX
00adeb0e  895670  MOV dword ptr [ESI + 0x70],EDX
00adeb11  899688000000  MOV dword ptr [ESI + 0x88],EDX
00adeb17  8996a0000000  MOV dword ptr [ESI + 0xa0],EDX
00adeb1d  8996b8000000  MOV dword ptr [ESI + 0xb8],EDX
00adeb23  897e5c  MOV dword ptr [ESI + 0x5c],EDI
00adeb26  897e74  MOV dword ptr [ESI + 0x74],EDI
00adeb29  89be8c000000  MOV dword ptr [ESI + 0x8c],EDI
00adeb2f  89bea4000000  MOV dword ptr [ESI + 0xa4],EDI
00adeb35  89bebc000000  MOV dword ptr [ESI + 0xbc],EDI
00adeb3b  894e60  MOV dword ptr [ESI + 0x60],ECX
00adeb3e  894e78  MOV dword ptr [ESI + 0x78],ECX
00adeb41  898e90000000  MOV dword ptr [ESI + 0x90],ECX
00adeb47  898ea8000000  MOV dword ptr [ESI + 0xa8],ECX
00adeb4d  898ec0000000  MOV dword ptr [ESI + 0xc0],ECX
00adeb53  c7466407c5b000  MOV dword ptr [ESI + 0x64],0xb0c507
00adeb5a  c7467c55757e00  MOV dword ptr [ESI + 0x7c],0x7e7555
00adeb61  c78694000000e9a71d00  MOV dword ptr [ESI + 0x94],0x1da7e9
00adeb6b  c786ac0000004c1ebc00  MOV dword ptr [ESI + 0xac],0xbc1e4c
00adeb75  c786c4000000541ebc00  MOV dword ptr [ESI + 0xc4],0xbc1e54
00adeb7f  8b0d3c851d01  MOV ECX,dword ptr [0x011d853c]
00adeb85  85c9  TEST ECX,ECX
00adeb87  7414  JZ 0x00adeb9d
00adeb89  6a00  PUSH 0x0
00adeb8b  6a00  PUSH 0x0
00adeb8d  68c0950601  PUSH 0x10695c0
00adeb92  e879d0cbff  CALL 0x0079bc10
00adeb97  8986c8000000  MOV dword ptr [ESI + 0xc8],EAX
00adeb9d  8b3d30851d01  MOV EDI,dword ptr [0x011d8530]
00adeba3  6a02  PUSH 0x2
00adeba5  6a01  PUSH 0x1
00adeba7  68b4950601  PUSH 0x10695b4
00adebac  8bcf  MOV ECX,EDI
00adebae  e87db9cbff  CALL 0x0079a530
00adebb3  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00adebb9  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00adebbc  731a  JNC 0x00adebd8
00adebbe  c1e004  SHL EAX,0x4
00adebc1  034704  ADD EAX,dword ptr [EDI + 0x4]
00adebc4  8d96d0000000  LEA EDX,[ESI + 0xd0]
00adebca  830001  ADD dword ptr [EAX],0x1
00adebcd  668b4f12  MOV CX,word ptr [EDI + 0x12]
00adebd1  66894804  MOV word ptr [EAX + 0x4],CX
00adebd5  89500c  MOV dword ptr [EAX + 0xc],EDX
00adebd8  5f  POP EDI
00adebd9  b001  MOV AL,0x1
00adebdb  8806  MOV byte ptr [ESI],AL
00adebdd  5e  POP ESI
00adebde  5d  POP EBP
00adebdf  5b  POP EBX
00adebe0  59  POP ECX
00adebe1  c20400  RET 0x4

Owned instructions=523 owned bytes=1412 nonowned bytes=0

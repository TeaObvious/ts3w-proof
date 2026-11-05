# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined1 WallTool_InitializePlacementFinish(void * this, undefined1 * param_1)
Owned ranges: [[00d3abc0, 00d3afaf]]

00d3abc0  83ec58  SUB ESP,0x58
00d3abc3  56  PUSH ESI
00d3abc4  57  PUSH EDI
00d3abc5  8b7c2464  MOV EDI,dword ptr [ESP + 0x64]
00d3abc9  57  PUSH EDI
00d3abca  8bf1  MOV ESI,ECX
00d3abcc  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
00d3abd4  e85781f9ff  CALL 0x00cd2d30
00d3abd9  84c0  TEST AL,AL
00d3abdb  7508  JNZ 0x00d3abe5
00d3abdd  5f  POP EDI
00d3abde  5e  POP ESI
00d3abdf  83c458  ADD ESP,0x58
00d3abe2  c20400  RET 0x4
00d3abe5  6a00  PUSH 0x0
00d3abe7  6a00  PUSH 0x0
00d3abe9  6a00  PUSH 0x0
00d3abeb  6a00  PUSH 0x0
00d3abed  6820440801  PUSH 0x1084420
00d3abf2  6a10  PUSH 0x10
00d3abf4  e807997aff  CALL 0x004e4500
00d3abf9  83c418  ADD ESP,0x18
00d3abfc  85c0  TEST EAX,EAX
00d3abfe  740d  JZ 0x00d3ac0d
00d3ac00  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00d3ac03  51  PUSH ECX
00d3ac04  8bc8  MOV ECX,EAX
00d3ac06  e80519faff  CALL 0x00cdc510
00d3ac0b  eb02  JMP 0x00d3ac0f
00d3ac0d  33c0  XOR EAX,EAX
00d3ac0f  8b8e18010000  MOV ECX,dword ptr [ESI + 0x118]
00d3ac15  3bc1  CMP EAX,ECX
00d3ac17  742c  JZ 0x00d3ac45
00d3ac19  85c0  TEST EAX,EAX
00d3ac1b  7404  JZ 0x00d3ac21
00d3ac1d  83400401  ADD dword ptr [EAX + 0x4],0x1
00d3ac21  85c9  TEST ECX,ECX
00d3ac23  898618010000  MOV dword ptr [ESI + 0x118],EAX
00d3ac29  741a  JZ 0x00d3ac45
00d3ac2b  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d3ac2e  83c0ff  ADD EAX,-0x1
00d3ac31  894104  MOV dword ptr [ECX + 0x4],EAX
00d3ac34  750f  JNZ 0x00d3ac45
00d3ac36  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00d3ac3d  8b11  MOV EDX,dword ptr [ECX]
00d3ac3f  8b02  MOV EAX,dword ptr [EDX]
00d3ac41  6a01  PUSH 0x1
00d3ac43  ffd0  CALL EAX
00d3ac45  6a00  PUSH 0x0
00d3ac47  6a00  PUSH 0x0
00d3ac49  6a00  PUSH 0x0
00d3ac4b  6a00  PUSH 0x0
00d3ac4d  6894860801  PUSH 0x1088694
00d3ac52  6a60  PUSH 0x60
00d3ac54  c6466800  MOV byte ptr [ESI + 0x68],0x0
00d3ac58  e8a3987aff  CALL 0x004e4500
00d3ac5d  83c418  ADD ESP,0x18
00d3ac60  85c0  TEST EAX,EAX
00d3ac62  7409  JZ 0x00d3ac6d
00d3ac64  8bc8  MOV ECX,EAX
00d3ac66  e8c53af6ff  CALL 0x00c9e730
00d3ac6b  eb02  JMP 0x00d3ac6f
00d3ac6d  33c0  XOR EAX,EAX
00d3ac6f  8b8e1c010000  MOV ECX,dword ptr [ESI + 0x11c]
00d3ac75  3bc1  CMP EAX,ECX
00d3ac77  742c  JZ 0x00d3aca5
00d3ac79  85c0  TEST EAX,EAX
00d3ac7b  7404  JZ 0x00d3ac81
00d3ac7d  83400401  ADD dword ptr [EAX + 0x4],0x1
00d3ac81  85c9  TEST ECX,ECX
00d3ac83  89861c010000  MOV dword ptr [ESI + 0x11c],EAX
00d3ac89  741a  JZ 0x00d3aca5
00d3ac8b  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d3ac8e  83c0ff  ADD EAX,-0x1
00d3ac91  894104  MOV dword ptr [ECX + 0x4],EAX
00d3ac94  750f  JNZ 0x00d3aca5
00d3ac96  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00d3ac9d  8b11  MOV EDX,dword ptr [ECX]
00d3ac9f  8b02  MOV EAX,dword ptr [EDX]
00d3aca1  6a01  PUSH 0x1
00d3aca3  ffd0  CALL EAX
00d3aca5  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00d3aca8  55  PUSH EBP
00d3aca9  51  PUSH ECX
00d3acaa  8b8e1c010000  MOV ECX,dword ptr [ESI + 0x11c]
00d3acb0  e87bff79ff  CALL 0x004dac30
00d3acb5  8b2d34e01e01  MOV EBP,dword ptr [0x011ee034]
00d3acbb  85ed  TEST EBP,EBP
00d3acbd  0f8425020000  JZ 0x00d3aee8
00d3acc3  85ff  TEST EDI,EDI
00d3acc5  0f841d020000  JZ 0x00d3aee8
00d3accb  8bcf  MOV ECX,EDI
00d3accd  e80e4efbff  CALL 0x00cefae0
00d3acd2  8b10  MOV EDX,dword ptr [EAX]
00d3acd4  8d7e70  LEA EDI,[ESI + 0x70]
00d3acd7  8917  MOV dword ptr [EDI],EDX
00d3acd9  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00d3acdc  894f04  MOV dword ptr [EDI + 0x4],ECX
00d3acdf  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00d3ace2  895708  MOV dword ptr [EDI + 0x8],EDX
00d3ace5  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00d3ace8  6a01  PUSH 0x1
00d3acea  57  PUSH EDI
00d3aceb  8bcd  MOV ECX,EBP
00d3aced  89470c  MOV dword ptr [EDI + 0xc],EAX
00d3acf0  e82b4df5ff  CALL 0x00c8fa20
00d3acf5  85c0  TEST EAX,EAX
00d3acf7  750b  JNZ 0x00d3ad04
00d3acf9  5d  POP EBP
00d3acfa  5f  POP EDI
00d3acfb  32c0  XOR AL,AL
00d3acfd  5e  POP ESI
00d3acfe  83c458  ADD ESP,0x58
00d3ad01  c20400  RET 0x4
00d3ad04  53  PUSH EBX
00d3ad05  bb01000000  MOV EBX,0x1
00d3ad0a  53  PUSH EBX
00d3ad0b  57  PUSH EDI
00d3ad0c  8bcd  MOV ECX,EBP
00d3ad0e  e80d4df5ff  CALL 0x00c8fa20
00d3ad13  8be8  MOV EBP,EAX
00d3ad15  85ed  TEST EBP,EBP
00d3ad17  896c2414  MOV dword ptr [ESP + 0x14],EBP
00d3ad1b  7406  JZ 0x00d3ad23
00d3ad1d  8b9da0000000  MOV EBX,dword ptr [EBP + 0xa0]
00d3ad23  57  PUSH EDI
00d3ad24  8bce  MOV ECX,ESI
00d3ad26  e885fcffff  CALL 0x00d3a9b0
00d3ad2b  8bc3  MOV EAX,EBX
00d3ad2d  83e801  SUB EAX,0x1
00d3ad30  7426  JZ 0x00d3ad58
00d3ad32  83e801  SUB EAX,0x1
00d3ad35  7540  JNZ 0x00d3ad77
00d3ad37  8b8ed8000000  MOV ECX,dword ptr [ESI + 0xd8]
00d3ad3d  51  PUSH ECX
00d3ad3e  8bce  MOV ECX,ESI
00d3ad40  c7868400000002000000  MOV dword ptr [ESI + 0x84],0x2
00d3ad4a  e8c130fbff  CALL 0x00cede10
00d3ad4f  c6861301000000  MOV byte ptr [ESI + 0x113],0x0
00d3ad56  eb1f  JMP 0x00d3ad77
00d3ad58  8b9698000000  MOV EDX,dword ptr [ESI + 0x98]
00d3ad5e  52  PUSH EDX
00d3ad5f  8bce  MOV ECX,ESI
00d3ad61  c7868400000000000000  MOV dword ptr [ESI + 0x84],0x0
00d3ad6b  e8a030fbff  CALL 0x00cede10
00d3ad70  c6861301000001  MOV byte ptr [ESI + 0x113],0x1
00d3ad77  8b8684000000  MOV EAX,dword ptr [ESI + 0x84]
00d3ad7d  6800d1ae05  PUSH 0x5aed100
00d3ad82  8bce  MOV ECX,ESI
00d3ad84  898680000000  MOV dword ptr [ESI + 0x80],EAX
00d3ad8a  e8813cf9ff  CALL 0x00ccea10
00d3ad8f  83bd8c00000001  CMP dword ptr [EBP + 0x8c],0x1
00d3ad96  0f854b010000  JNZ 0x00d3aee7
00d3ad9c  8b6c246c  MOV EBP,dword ptr [ESP + 0x6c]
00d3ada0  66817d2a0102  CMP word ptr [EBP + 0x2a],0x201
00d3ada6  7509  JNZ 0x00d3adb1
00d3ada8  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00d3adac  8d4d20  LEA ECX,[EBP + 0x20]
00d3adaf  eb17  JMP 0x00d3adc8
00d3adb1  68d0c81e01  PUSH 0x11ec8d0
00d3adb6  8d4c244c  LEA ECX,[ESP + 0x4c]
00d3adba  e8a1dff9ff  CALL 0x00cd8d60
00d3adbf  bb01000000  MOV EBX,0x1
00d3adc4  8d4c2448  LEA ECX,[ESP + 0x48]
00d3adc8  e8134dfbff  CALL 0x00cefae0
00d3adcd  f6c301  TEST BL,0x1
00d3add0  8b08  MOV ECX,dword ptr [EAX]
00d3add2  894c2438  MOV dword ptr [ESP + 0x38],ECX
00d3add6  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d3add9  8954243c  MOV dword ptr [ESP + 0x3c],EDX
00d3addd  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00d3ade0  894c2440  MOV dword ptr [ESP + 0x40],ECX
00d3ade4  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00d3ade7  89542444  MOV dword ptr [ESP + 0x44],EDX
00d3adeb  740c  JZ 0x00d3adf9
00d3aded  8d4c2448  LEA ECX,[ESP + 0x48]
00d3adf1  83e3fe  AND EBX,0xfffffffe
00d3adf4  e827aa7bff  CALL 0x004f5820
00d3adf9  66817d4a0102  CMP word ptr [EBP + 0x4a],0x201
00d3adff  7505  JNZ 0x00d3ae06
00d3ae01  8d4d40  LEA ECX,[EBP + 0x40]
00d3ae04  eb15  JMP 0x00d3ae1b
00d3ae06  68d0c81e01  PUSH 0x11ec8d0
00d3ae0b  8d4c244c  LEA ECX,[ESP + 0x4c]
00d3ae0f  e84cdff9ff  CALL 0x00cd8d60
00d3ae14  83cb02  OR EBX,0x2
00d3ae17  8d4c2448  LEA ECX,[ESP + 0x48]
00d3ae1b  e8c04cfbff  CALL 0x00cefae0
00d3ae20  f6c302  TEST BL,0x2
00d3ae23  8b08  MOV ECX,dword ptr [EAX]
00d3ae25  894c2428  MOV dword ptr [ESP + 0x28],ECX
00d3ae29  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d3ae2c  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00d3ae30  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00d3ae33  894c2430  MOV dword ptr [ESP + 0x30],ECX
00d3ae37  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00d3ae3a  89542434  MOV dword ptr [ESP + 0x34],EDX
00d3ae3e  7409  JZ 0x00d3ae49
00d3ae40  8d4c2448  LEA ECX,[ESP + 0x48]
00d3ae44  e8d7a97bff  CALL 0x004f5820
00d3ae49  66837d6a13  CMP word ptr [EBP + 0x6a],0x13
00d3ae4e  a1d0c81e01  MOV EAX,[0x011ec8d0]
00d3ae53  8b0dd4c81e01  MOV ECX,dword ptr [0x011ec8d4]
00d3ae59  8b15d8c81e01  MOV EDX,dword ptr [0x011ec8d8]
00d3ae5f  89442418  MOV dword ptr [ESP + 0x18],EAX
00d3ae63  a1dcc81e01  MOV EAX,[0x011ec8dc]
00d3ae68  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00d3ae6c  89542420  MOV dword ptr [ESP + 0x20],EDX
00d3ae70  89442424  MOV dword ptr [ESP + 0x24],EAX
00d3ae74  7516  JNZ 0x00d3ae8c
00d3ae76  8d4d60  LEA ECX,[EBP + 0x60]
00d3ae79  e8828ca5ff  CALL 0x00793b00
00d3ae7e  50  PUSH EAX
00d3ae7f  8d4c241c  LEA ECX,[ESP + 0x1c]
00d3ae83  51  PUSH ECX
00d3ae84  e8e700ddff  CALL 0x00b0af70
00d3ae89  83c408  ADD ESP,0x8
00d3ae8c  837c244000  CMP dword ptr [ESP + 0x40],0x0
00d3ae91  753a  JNZ 0x00d3aecd
00d3ae93  837c243000  CMP dword ptr [ESP + 0x30],0x0
00d3ae98  7533  JNZ 0x00d3aecd
00d3ae9a  837c242000  CMP dword ptr [ESP + 0x20],0x0
00d3ae9f  752c  JNZ 0x00d3aecd
00d3aea1  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d3aea5  8b11  MOV EDX,dword ptr [ECX]
00d3aea7  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00d3aeaa  6816fe1804  PUSH 0x418fe16
00d3aeaf  ffd0  CALL EAX
00d3aeb1  85c0  TEST EAX,EAX
00d3aeb3  7432  JZ 0x00d3aee7
00d3aeb5  8b9e1c010000  MOV EBX,dword ptr [ESI + 0x11c]
00d3aebb  8bc8  MOV ECX,EAX
00d3aebd  e84e96f5ff  CALL 0x00c94510
00d3aec2  50  PUSH EAX
00d3aec3  57  PUSH EDI
00d3aec4  8bcb  MOV ECX,EBX
00d3aec6  e825b10000  CALL 0x00d45ff0
00d3aecb  eb1a  JMP 0x00d3aee7
00d3aecd  8d4c2418  LEA ECX,[ESP + 0x18]
00d3aed1  51  PUSH ECX
00d3aed2  8b8e1c010000  MOV ECX,dword ptr [ESI + 0x11c]
00d3aed8  8d54242c  LEA EDX,[ESP + 0x2c]
00d3aedc  52  PUSH EDX
00d3aedd  8d442440  LEA EAX,[ESP + 0x40]
00d3aee1  50  PUSH EAX
00d3aee2  e899be0000  CALL 0x00d46d80
00d3aee7  5b  POP EBX
00d3aee8  837e5c00  CMP dword ptr [ESI + 0x5c],0x0
00d3aeec  8d7e5c  LEA EDI,[ESI + 0x5c]
00d3aeef  7545  JNZ 0x00d3af36
00d3aef1  6a00  PUSH 0x0
00d3aef3  6a00  PUSH 0x0
00d3aef5  6a00  PUSH 0x0
00d3aef7  6a00  PUSH 0x0
00d3aef9  6870860801  PUSH 0x1088670
00d3aefe  6810010000  PUSH 0x110
00d3af03  e8f8957aff  CALL 0x004e4500
00d3af08  83c418  ADD ESP,0x18
00d3af0b  85c0  TEST EAX,EAX
00d3af0d  7409  JZ 0x00d3af18
00d3af0f  8bc8  MOV ECX,EAX
00d3af11  e8ba2effff  CALL 0x00d2ddd0
00d3af16  eb02  JMP 0x00d3af1a
00d3af18  33c0  XOR EAX,EAX
00d3af1a  50  PUSH EAX
00d3af1b  8bcf  MOV ECX,EDI
00d3af1d  e86eb682ff  CALL 0x00566590
00d3af22  8b0f  MOV ECX,dword ptr [EDI]
00d3af24  8b11  MOV EDX,dword ptr [ECX]
00d3af26  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00d3af29  ffd0  CALL EAX
00d3af2b  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00d3af2e  51  PUSH ECX
00d3af2f  8b0f  MOV ECX,dword ptr [EDI]
00d3af31  e83a19ffff  CALL 0x00d2c870
00d3af36  837e6000  CMP dword ptr [ESI + 0x60],0x0
00d3af3a  8d7e60  LEA EDI,[ESI + 0x60]
00d3af3d  753e  JNZ 0x00d3af7d
00d3af3f  6a00  PUSH 0x0
00d3af41  6a00  PUSH 0x0
00d3af43  6a00  PUSH 0x0
00d3af45  6a00  PUSH 0x0
00d3af47  6848860801  PUSH 0x1088648
00d3af4c  68b0000000  PUSH 0xb0
00d3af51  e8aa957aff  CALL 0x004e4500
00d3af56  83c418  ADD ESP,0x18
00d3af59  85c0  TEST EAX,EAX
00d3af5b  740d  JZ 0x00d3af6a
00d3af5d  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00d3af60  52  PUSH EDX
00d3af61  8bc8  MOV ECX,EAX
00d3af63  e8a868feff  CALL 0x00d21810
00d3af68  eb02  JMP 0x00d3af6c
00d3af6a  33c0  XOR EAX,EAX
00d3af6c  50  PUSH EAX
00d3af6d  8bcf  MOV ECX,EDI
00d3af6f  e81cb682ff  CALL 0x00566590
00d3af74  8b0f  MOV ECX,dword ptr [EDI]
00d3af76  8b01  MOV EAX,dword ptr [ECX]
00d3af78  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d3af7b  ffd2  CALL EDX
00d3af7d  8b4e64  MOV ECX,dword ptr [ESI + 0x64]
00d3af80  85c9  TEST ECX,ECX
00d3af82  7421  JZ 0x00d3afa5
00d3af84  c7466400000000  MOV dword ptr [ESI + 0x64],0x0
00d3af8b  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d3af8e  83c0ff  ADD EAX,-0x1
00d3af91  894104  MOV dword ptr [ECX + 0x4],EAX
00d3af94  750f  JNZ 0x00d3afa5
00d3af96  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00d3af9d  8b01  MOV EAX,dword ptr [ECX]
00d3af9f  8b10  MOV EDX,dword ptr [EAX]
00d3afa1  6a01  PUSH 0x1
00d3afa3  ffd2  CALL EDX
00d3afa5  5d  POP EBP
00d3afa6  5f  POP EDI
00d3afa7  b001  MOV AL,0x1
00d3afa9  5e  POP ESI
00d3afaa  83c458  ADD ESP,0x58
00d3afad  c20400  RET 0x4

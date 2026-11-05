# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[0079ad00, 0079ae19] [0079ae20, 0079afa2]]
signature=undefined1 __thiscall ShaderDatabase_ReadLINKAndDBUF(void * this, void * param_1, uint param_2, undefined4 param_3)
PLATE
Analyst: SHDB LINK/DBUF database reader. Reads per-stage bytecode records, applies the same capability-byte mask, skips rejected byte ranges, builds vertex or pixel shader objects for accepted records and retains DBUF defaults. Decompiler reuses param_1 for unrelated stack variables; instruction 0x0079aedb tests the byte read at [esp+0x34] to choose pixel versus vertex, not the reader pointer.

0079ad00  83ec24  SUB ESP,0x24
0079ad03  55  PUSH EBP
0079ad04  56  PUSH ESI
0079ad05  8b742430  MOV ESI,dword ptr [ESP + 0x30]
0079ad09  8b4610  MOV EAX,dword ptr [ESI + 0x10]
0079ad0c  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0079ad0f  8be9  MOV EBP,ECX
0079ad11  50  PUSH EAX
0079ad12  8d4c241c  LEA ECX,[ESP + 0x1c]
0079ad16  51  PUSH ECX
0079ad17  52  PUSH EDX
0079ad18  e8632cd4ff  CALL 0x004dd980
0079ad1d  83c40c  ADD ESP,0xc
0079ad20  8bce  MOV ECX,ESI
0079ad22  50  PUSH EAX
0079ad23  e8c8cc0300  CALL 0x007d79f0
0079ad28  817c24184c494e4b  CMP dword ptr [ESP + 0x18],0x4b4e494c
0079ad30  740a  JZ 0x0079ad3c
0079ad32  5e  POP ESI
0079ad33  32c0  XOR AL,AL
0079ad35  5d  POP EBP
0079ad36  83c424  ADD ESP,0x24
0079ad39  c20c00  RET 0xc
0079ad3c  8b4610  MOV EAX,dword ptr [ESI + 0x10]
0079ad3f  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0079ad42  57  PUSH EDI
0079ad43  50  PUSH EAX
0079ad44  8d4c241c  LEA ECX,[ESP + 0x1c]
0079ad48  51  PUSH ECX
0079ad49  52  PUSH EDX
0079ad4a  e8312cd4ff  CALL 0x004dd980
0079ad4f  83c40c  ADD ESP,0xc
0079ad52  8bce  MOV ECX,ESI
0079ad54  50  PUSH EAX
0079ad55  e896cc0300  CALL 0x007d79f0
0079ad5a  8b442438  MOV EAX,dword ptr [ESP + 0x38]
0079ad5e  0fb6f8  MOVZX EDI,AL
0079ad61  2500ff0000  AND EAX,0xff00
0079ad66  837c241800  CMP dword ptr [ESP + 0x18],0x0
0079ad6b  897c2420  MOV dword ptr [ESP + 0x20],EDI
0079ad6f  89442424  MOV dword ptr [ESP + 0x24],EAX
0079ad73  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
0079ad7b  0f87a3000000  JA 0x0079ae24
0079ad81  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0079ad84  8b4608  MOV EAX,dword ptr [ESI + 0x8]
0079ad87  51  PUSH ECX
0079ad88  8d542430  LEA EDX,[ESP + 0x30]
0079ad8c  52  PUSH EDX
0079ad8d  50  PUSH EAX
0079ad8e  e8ed2bd4ff  CALL 0x004dd980
0079ad93  83c40c  ADD ESP,0xc
0079ad96  8bce  MOV ECX,ESI
0079ad98  50  PUSH EAX
0079ad99  e852cc0300  CALL 0x007d79f0
0079ad9e  817c242c44425546  CMP dword ptr [ESP + 0x2c],0x46554244
0079ada6  0f85ec010000  JNZ 0x0079af98
0079adac  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0079adaf  8b4608  MOV EAX,dword ptr [ESI + 0x8]
0079adb2  51  PUSH ECX
0079adb3  8d542418  LEA EDX,[ESP + 0x18]
0079adb7  52  PUSH EDX
0079adb8  50  PUSH EAX
0079adb9  e8c22bd4ff  CALL 0x004dd980
0079adbe  83c40c  ADD ESP,0xc
0079adc1  8bce  MOV ECX,ESI
0079adc3  50  PUSH EAX
0079adc4  e827cc0300  CALL 0x007d79f0
0079adc9  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
0079adcd  6a04  PUSH 0x4
0079adcf  51  PUSH ECX
0079add0  8bce  MOV ECX,ESI
0079add2  e829cc0300  CALL 0x007d7a00
0079add7  84c0  TEST AL,AL
0079add9  0f84b9010000  JZ 0x0079af98
0079addf  8b542414  MOV EDX,dword ptr [ESP + 0x14]
0079ade3  8d7d10  LEA EDI,[EBP + 0x10]
0079ade6  52  PUSH EDX
0079ade7  8bcf  MOV ECX,EDI
0079ade9  e802744800  CALL 0x00c221f0
0079adee  8b4610  MOV EAX,dword ptr [ESI + 0x10]
0079adf1  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
0079adf5  8b3f  MOV EDI,dword ptr [EDI]
0079adf7  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0079adfa  50  PUSH EAX
0079adfb  51  PUSH ECX
0079adfc  57  PUSH EDI
0079adfd  52  PUSH EDX
0079adfe  e8cd2bd4ff  CALL 0x004dd9d0
0079ae03  83c410  ADD ESP,0x10
0079ae06  8bce  MOV ECX,ESI
0079ae08  50  PUSH EAX
0079ae09  e8e2cb0300  CALL 0x007d79f0
0079ae0e  8a4614  MOV AL,byte ptr [ESI + 0x14]
0079ae11  5f  POP EDI
0079ae12  5e  POP ESI
0079ae13  5d  POP EBP
0079ae14  83c424  ADD ESP,0x24
0079ae17  c20c00  RET 0xc
0079ae1a  8d9b00000000  .byte unowned alignment
0079ae20  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
0079ae24  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0079ae27  8d442434  LEA EAX,[ESP + 0x34]
0079ae2b  50  PUSH EAX
0079ae2c  51  PUSH ECX
0079ae2d  e82e2ad4ff  CALL 0x004dd860
0079ae32  83c408  ADD ESP,0x8
0079ae35  8bce  MOV ECX,ESI
0079ae37  50  PUSH EAX
0079ae38  e8b3cb0300  CALL 0x007d79f0
0079ae3d  8b5610  MOV EDX,dword ptr [ESI + 0x10]
0079ae40  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0079ae43  52  PUSH EDX
0079ae44  8d44243c  LEA EAX,[ESP + 0x3c]
0079ae48  50  PUSH EAX
0079ae49  51  PUSH ECX
0079ae4a  e8912ad4ff  CALL 0x004dd8e0
0079ae4f  83c40c  ADD ESP,0xc
0079ae52  8bce  MOV ECX,ESI
0079ae54  50  PUSH EAX
0079ae55  e896cb0300  CALL 0x007d79f0
0079ae5a  8b5610  MOV EDX,dword ptr [ESI + 0x10]
0079ae5d  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
0079ae60  52  PUSH EDX
0079ae61  8d44242c  LEA EAX,[ESP + 0x2c]
0079ae65  50  PUSH EAX
0079ae66  51  PUSH ECX
0079ae67  e8142bd4ff  CALL 0x004dd980
0079ae6c  83c40c  ADD ESP,0xc
0079ae6f  8bce  MOV ECX,ESI
0079ae71  50  PUSH EAX
0079ae72  e879cb0300  CALL 0x007d79f0
0079ae77  807e1400  CMP byte ptr [ESI + 0x14],0x0
0079ae7b  0f8417010000  JZ 0x0079af98
0079ae81  85ff  TEST EDI,EDI
0079ae83  668b442438  MOV AX,word ptr [ESP + 0x38] ; Stage/mode field is a 16-bit read; high input bits do not participate in the mask test.
0079ae88  7407  JZ 0x0079ae91
0079ae8a  0fb7d0  MOVZX EDX,AX
0079ae8d  85d7  TEST EDI,EDX
0079ae8f  740f  JZ 0x0079aea0
0079ae91  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
0079ae95  85c9  TEST ECX,ECX
0079ae97  7442  JZ 0x0079aedb
0079ae99  0fb7c0  MOVZX EAX,AX
0079ae9c  85c1  TEST ECX,EAX
0079ae9e  753b  JNZ 0x0079aedb
0079aea0  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
0079aea4  6a01  PUSH 0x1
0079aea6  51  PUSH ECX
0079aea7  8bce  MOV ECX,ESI
0079aea9  e8e2d50300  CALL 0x007d8490
0079aeae  8b4504  MOV EAX,dword ptr [EBP + 0x4]
0079aeb1  3b4508  CMP EAX,dword ptr [EBP + 0x8]
0079aeb4  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
0079aebc  0f83a5000000  JNC 0x0079af67
0079aec2  85c0  TEST EAX,EAX
0079aec4  8d5004  LEA EDX,[EAX + 0x4]
0079aec7  895504  MOV dword ptr [EBP + 0x4],EDX
0079aeca  0f84a4000000  JZ 0x0079af74
0079aed0  c70000000000  MOV dword ptr [EAX],0x0
0079aed6  e999000000  JMP 0x0079af74
0079aedb  807c243400  CMP byte ptr [ESP + 0x34],0x0 ; This stack byte selects pixel versus vertex object allocation; the decompiler's reader-pointer test is false.
0079aee0  6a00  PUSH 0x0
0079aee2  6a00  PUSH 0x0
0079aee4  6a00  PUSH 0x0
0079aee6  6a00  PUSH 0x0
0079aee8  741e  JZ 0x0079af08
0079aeea  6860d5ff00  PUSH 0xffd560
0079aeef  6a14  PUSH 0x14
0079aef1  e80a96d4ff  CALL 0x004e4500
0079aef6  83c418  ADD ESP,0x18
0079aef9  85c0  TEST EAX,EAX
0079aefb  7429  JZ 0x0079af26
0079aefd  8bc8  MOV ECX,EAX
0079aeff  e8acecffff  CALL 0x00799bb0
0079af04  8bf8  MOV EDI,EAX
0079af06  eb20  JMP 0x0079af28
0079af08  6874d5ff00  PUSH 0xffd574
0079af0d  6a14  PUSH 0x14
0079af0f  e8ec95d4ff  CALL 0x004e4500
0079af14  83c418  ADD ESP,0x18
0079af17  85c0  TEST EAX,EAX
0079af19  740b  JZ 0x0079af26
0079af1b  8bc8  MOV ECX,EAX
0079af1d  e80eecffff  CALL 0x00799b30
0079af22  8bf8  MOV EDI,EAX
0079af24  eb02  JMP 0x0079af28
0079af26  33ff  XOR EDI,EDI
0079af28  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
0079af2c  668b542438  MOV DX,word ptr [ESP + 0x38]
0079af31  50  PUSH EAX
0079af32  56  PUSH ESI
0079af33  8bcf  MOV ECX,EDI
0079af35  897c2414  MOV dword ptr [ESP + 0x14],EDI
0079af39  66895706  MOV word ptr [EDI + 0x6],DX
0079af3d  e89eedffff  CALL 0x00799ce0
0079af42  84c0  TEST AL,AL
0079af44  7448  JZ 0x0079af8e
0079af46  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
0079af4a  83c101  ADD ECX,0x1
0079af4d  66894f04  MOV word ptr [EDI + 0x4],CX
0079af51  8b4504  MOV EAX,dword ptr [EBP + 0x4]
0079af54  3b4508  CMP EAX,dword ptr [EBP + 0x8]
0079af57  730e  JNC 0x0079af67
0079af59  85c0  TEST EAX,EAX
0079af5b  8d5004  LEA EDX,[EAX + 0x4]
0079af5e  895504  MOV dword ptr [EBP + 0x4],EDX
0079af61  7411  JZ 0x0079af74
0079af63  8938  MOV dword ptr [EAX],EDI
0079af65  eb0d  JMP 0x0079af74
0079af67  8d4c240c  LEA ECX,[ESP + 0xc]
0079af6b  51  PUSH ECX
0079af6c  50  PUSH EAX
0079af6d  8bcd  MOV ECX,EBP
0079af6f  e8ac741e00  CALL 0x00982420
0079af74  8b442410  MOV EAX,dword ptr [ESP + 0x10]
0079af78  83c001  ADD EAX,0x1
0079af7b  3b442418  CMP EAX,dword ptr [ESP + 0x18]
0079af7f  89442410  MOV dword ptr [ESP + 0x10],EAX
0079af83  0f8297feffff  JC 0x0079ae20
0079af89  e9f3fdffff  JMP 0x0079ad81
0079af8e  8b17  MOV EDX,dword ptr [EDI]
0079af90  8b02  MOV EAX,dword ptr [EDX]
0079af92  6a01  PUSH 0x1
0079af94  8bcf  MOV ECX,EDI
0079af96  ffd0  CALL EAX
0079af98  5f  POP EDI
0079af99  5e  POP ESI
0079af9a  32c0  XOR AL,AL
0079af9c  5d  POP EBP
0079af9d  83c424  ADD ESP,0x24
0079afa0  c20c00  RET 0xc

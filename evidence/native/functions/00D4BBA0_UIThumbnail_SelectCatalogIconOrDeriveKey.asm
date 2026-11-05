# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00d4bba0, 00d4bdb8]]
Signature: void UIThumbnail_SelectCatalogIconOrDeriveKey(void * sourceKey, int sizeWord, uint cameraWord, int indexWord, void * outKey, uint techniqueWord, uint geometryWord, uint materialWord, uint templateLow, uint templateHigh)

00d4bba0  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00d4bba6  83ec10  SUB ESP,0x10
00d4bba9  56  PUSH ESI
00d4bbaa  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00d4bbae  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00d4bbb1  3d90ecc00c  CMP EAX,0xcc0ec90
00d4bbb6  0f873a010000  JA 0x00d4bcf6
00d4bbbc  0f84d8010000  JZ 0x00d4bd9a
00d4bbc2  3d6906b304  CMP EAX,0x4b30669
00d4bbc7  0f8711010000  JA 0x00d4bcde
00d4bbcd  0f8482010000  JZ 0x00d4bd55
00d4bbd3  3d33126601  CMP EAX,0x1661233
00d4bbd8  7451  JZ 0x00d4bc2b
00d4bbda  3d2afe1804  CMP EAX,0x418fe2a
00d4bbdf  0f8433010000  JZ 0x00d4bd18
00d4bbe5  3dcda49c04  CMP EAX,0x49ca4cd
00d4bbea  0f8428010000  JZ 0x00d4bd18
00d4bbf0  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00d4bbf4  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00d4bbf8  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00d4bbfc  50  PUSH EAX
00d4bbfd  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00d4bc01  51  PUSH ECX
00d4bc02  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00d4bc06  52  PUSH EDX
00d4bc07  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00d4bc0b  50  PUSH EAX
00d4bc0c  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00d4bc10  51  PUSH ECX
00d4bc11  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00d4bc15  52  PUSH EDX
00d4bc16  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00d4bc1a  50  PUSH EAX
00d4bc1b  51  PUSH ECX
00d4bc1c  52  PUSH EDX
00d4bc1d  56  PUSH ESI
00d4bc1e  e84deeffff  CALL 0x00d4aa70
00d4bc23  83c428  ADD ESP,0x28
00d4bc26  5e  POP ESI
00d4bc27  83c410  ADD ESP,0x10
00d4bc2a  c3  RET
00d4bc2b  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00d4bc2e  8b06  MOV EAX,dword ptr [ESI]
00d4bc30  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00d4bc33  894c2408  MOV dword ptr [ESP + 0x8],ECX
00d4bc37  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00d4bc3b  89442404  MOV dword ptr [ESP + 0x4],EAX
00d4bc3f  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00d4bc42  53  PUSH EBX
00d4bc43  81c164c7752e  ADD ECX,0x2e75c764
00d4bc49  89542410  MOV dword ptr [ESP + 0x10],EDX
00d4bc4d  89442414  MOV dword ptr [ESP + 0x14],EAX
00d4bc51  57  PUSH EDI
00d4bc52  894c2414  MOV dword ptr [ESP + 0x14],ECX
00d4bc56  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00d4bc5e  e8dd349eff  CALL 0x0072f140
00d4bc63  8bf8  MOV EDI,EAX
00d4bc65  c744242000000000  MOV dword ptr [ESP + 0x20],0x0
00d4bc6d  8b1f  MOV EBX,dword ptr [EDI]
00d4bc6f  8d4c2420  LEA ECX,[ESP + 0x20]
00d4bc73  e82833a0ff  CALL 0x0074efa0
00d4bc78  50  PUSH EAX
00d4bc79  8b03  MOV EAX,dword ptr [EBX]
00d4bc7b  68eaa57f05  PUSH 0x57fa5ea
00d4bc80  8d542414  LEA EDX,[ESP + 0x14]
00d4bc84  52  PUSH EDX
00d4bc85  8bcf  MOV ECX,EDI
00d4bc87  ffd0  CALL EAX
00d4bc89  84c0  TEST AL,AL
00d4bc8b  5f  POP EDI
00d4bc8c  5b  POP EBX
00d4bc8d  7437  JZ 0x00d4bcc6
00d4bc8f  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00d4bc93  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00d4bc97  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00d4bc9b  8908  MOV dword ptr [EAX],ECX
00d4bc9d  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00d4bca1  895004  MOV dword ptr [EAX + 0x4],EDX
00d4bca4  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00d4bca8  894808  MOV dword ptr [EAX + 0x8],ECX
00d4bcab  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00d4bcaf  85c9  TEST ECX,ECX
00d4bcb1  89500c  MOV dword ptr [EAX + 0xc],EDX
00d4bcb4  0f846cffffff  JZ 0x00d4bc26
00d4bcba  8b01  MOV EAX,dword ptr [ECX]
00d4bcbc  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d4bcbf  ffd2  CALL EDX
00d4bcc1  5e  POP ESI
00d4bcc2  83c410  ADD ESP,0x10
00d4bcc5  c3  RET
00d4bcc6  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00d4bcca  85c9  TEST ECX,ECX
00d4bccc  0f841effffff  JZ 0x00d4bbf0
00d4bcd2  8b01  MOV EAX,dword ptr [ECX]
00d4bcd4  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d4bcd7  ffd2  CALL EDX
00d4bcd9  e912ffffff  JMP 0x00d4bbf0
00d4bcde  3d0381c504  CMP EAX,0x4c58103
00d4bce3  7433  JZ 0x00d4bd18
00d4bce5  3db24bed04  CMP EAX,0x4ed4bb2
00d4bcea  7469  JZ 0x00d4bd55
00d4bcec  3d01ccf304  CMP EAX,0x4f3cc01
00d4bcf1  e9f4feffff  JMP 0x00d4bbea
00d4bcf6  3dbce65191  CMP EAX,0x9151e6bc
00d4bcfb  773f  JA 0x00d4bd3c
00d4bcfd  7419  JZ 0x00d4bd18
00d4bcff  3df2786c31  CMP EAX,0x316c78f2
00d4bd04  744f  JZ 0x00d4bd55
00d4bd06  3d1d4f9e31  CMP EAX,0x319e4f1d
00d4bd0b  740b  JZ 0x00d4bd18
00d4bd0d  3dcda45c51  CMP EAX,0x515ca4cd
00d4bd12  0f85d8feffff  JNZ 0x00d4bbf0
00d4bd18  8b16  MOV EDX,dword ptr [ESI]
00d4bd1a  89542404  MOV dword ptr [ESP + 0x4],EDX
00d4bd1e  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00d4bd21  8944240c  MOV dword ptr [ESP + 0xc],EAX
00d4bd25  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00d4bd28  89542408  MOV dword ptr [ESP + 0x8],EDX
00d4bd2c  25000000ff  AND EAX,0xff000000 ; Only selected lookup branches mask source group to highbyte; output common-icon group separately masks original group.
00d4bd31  8d542404  LEA EDX,[ESP + 0x4]
00d4bd35  89442410  MOV dword ptr [ESP + 0x10],EAX
00d4bd39  52  PUSH EDX
00d4bd3a  eb1a  JMP 0x00d4bd56
00d4bd3c  3d3ebded91  CMP EAX,0x91edbd3e
00d4bd41  7412  JZ 0x00d4bd55
00d4bd43  3d90b90fdc  CMP EAX,0xdc0fb990
00d4bd48  7450  JZ 0x00d4bd9a
00d4bd4a  3d86bdedf1  CMP EAX,0xf1edbd86
00d4bd4f  0f859bfeffff  JNZ 0x00d4bbf0
00d4bd55  56  PUSH ESI
00d4bd56  e8d535f4ff  CALL 0x00c8f330
00d4bd5b  85c0  TEST EAX,EAX
00d4bd5d  0f848dfeffff  JZ 0x00d4bbf0
00d4bd63  8b4868  MOV ECX,dword ptr [EAX + 0x68] ; CompleteUInt64 icon lane68/6C OR-tested; instance-high nonzero is sufficient.
00d4bd66  8b506c  MOV EDX,dword ptr [EAX + 0x6c]
00d4bd69  8bc1  MOV EAX,ECX
00d4bd6b  0bc2  OR EAX,EDX
00d4bd6d  0f847dfeffff  JZ 0x00d4bbf0
00d4bd73  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00d4bd77  895004  MOV dword ptr [EAX + 0x4],EDX
00d4bd7a  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00d4bd7e  8908  MOV dword ptr [EAX],ECX
00d4bd80  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00d4bd83  81e1000000ff  AND ECX,0xff000000
00d4bd89  81c264c7752e  ADD EDX,0x2e75c764 ; Rawsize ADD2E75C764, no uniform rangecheck; caller metadata enum values are not automatic validation.
00d4bd8f  89480c  MOV dword ptr [EAX + 0xc],ECX
00d4bd92  895008  MOV dword ptr [EAX + 0x8],EDX
00d4bd95  5e  POP ESI
00d4bd96  83c410  ADD ESP,0x10
00d4bd99  c3  RET
00d4bd9a  8b0e  MOV ECX,dword ptr [ESI]
00d4bd9c  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00d4bda0  8908  MOV dword ptr [EAX],ECX
00d4bda2  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00d4bda5  895004  MOV dword ptr [EAX + 0x4],EDX
00d4bda8  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00d4bdab  894808  MOV dword ptr [EAX + 0x8],ECX
00d4bdae  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00d4bdb1  89500c  MOV dword ptr [EAX + 0xc],EDX
00d4bdb4  5e  POP ESI
00d4bdb5  83c410  ADD ESP,0x10
00d4bdb8  c3  RET

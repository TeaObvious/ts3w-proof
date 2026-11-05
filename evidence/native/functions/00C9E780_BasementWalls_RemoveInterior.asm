# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BasementWalls_RemoveInterior(void * param_1, char param_2, char * param_3, char * param_4, char param_5, void * param_6, void * param_7)
Owned ranges: [[00c9e780, 00c9eb08] [00c9eb10, 00c9ebce]]

00c9e780  55  PUSH EBP
00c9e781  8bec  MOV EBP,ESP
00c9e783  83e4f8  AND ESP,0xfffffff8
00c9e786  81ec6c010000  SUB ESP,0x16c
00c9e78c  53  PUSH EBX
00c9e78d  56  PUSH ESI
00c9e78e  57  PUSH EDI
00c9e78f  6a00  PUSH 0x0
00c9e791  6a00  PUSH 0x0
00c9e793  6a00  PUSH 0x0
00c9e795  6a00  PUSH 0x0
00c9e797  6864d70701  PUSH 0x107d764
00c9e79c  6810010000  PUSH 0x110
00c9e7a1  e85a5d84ff  CALL 0x004e4500
00c9e7a6  83c418  ADD ESP,0x18
00c9e7a9  85c0  TEST EAX,EAX
00c9e7ab  0f84ef000000  JZ 0x00c9e8a0
00c9e7b1  8bc8  MOV ECX,EAX
00c9e7b3  e818f60800  CALL 0x00d2ddd0
00c9e7b8  8bf8  MOV EDI,EAX
00c9e7ba  85ff  TEST EDI,EDI
00c9e7bc  897c242c  MOV dword ptr [ESP + 0x2c],EDI
00c9e7c0  7404  JZ 0x00c9e7c6
00c9e7c2  83470401  ADD dword ptr [EDI + 0x4],0x1
00c9e7c6  8b07  MOV EAX,dword ptr [EDI]
00c9e7c8  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c9e7cb  8bcf  MOV ECX,EDI
00c9e7cd  ffd2  CALL EDX
00c9e7cf  8b5d08  MOV EBX,dword ptr [EBP + 0x8]
00c9e7d2  53  PUSH EBX
00c9e7d3  8bcf  MOV ECX,EDI
00c9e7d5  e896e00800  CALL 0x00d2c870
00c9e7da  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c9e7e0  c644241a00  MOV byte ptr [ESP + 0x1a],0x0
00c9e7e5  e836cbfeff  CALL 0x00c8b320
00c9e7ea  8bb398020000  MOV ESI,dword ptr [EBX + 0x298]
00c9e7f0  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00c9e7f8  89442434  MOV dword ptr [ESP + 0x34],EAX
00c9e7fc  33c0  XOR EAX,EAX
00c9e7fe  f30f11442454  MOVSS dword ptr [ESP + 0x54],XMM0
00c9e804  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00c9e80c  8bce  MOV ECX,ESI
00c9e80e  89742428  MOV dword ptr [ESP + 0x28],ESI
00c9e812  f30f11442458  MOVSS dword ptr [ESP + 0x58],XMM0
00c9e818  c744246038d70701  MOV dword ptr [ESP + 0x60],0x107d738
00c9e820  c744244c01000000  MOV dword ptr [ESP + 0x4c],0x1
00c9e828  c744244800d91401  MOV dword ptr [ESP + 0x48],0x114d900
00c9e830  89442450  MOV dword ptr [ESP + 0x50],EAX
00c9e834  8944245c  MOV dword ptr [ESP + 0x5c],EAX
00c9e838  e80396eaff  CALL 0x00b47e40
00c9e83d  83e801  SUB EAX,0x1
00c9e840  8944243c  MOV dword ptr [ESP + 0x3c],EAX
00c9e844  7973  JNS 0x00c9e8b9
00c9e846  8b17  MOV EDX,dword ptr [EDI]
00c9e848  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00c9e84b  8bcf  MOV ECX,EDI
00c9e84d  ffd0  CALL EAX
00c9e84f  8b4c244c  MOV ECX,dword ptr [ESP + 0x4c]
00c9e853  8b542448  MOV EDX,dword ptr [ESP + 0x48]
00c9e857  51  PUSH ECX
00c9e858  52  PUSH EDX
00c9e859  8d4c244c  LEA ECX,[ESP + 0x4c]
00c9e85d  e87e03aaff  CALL 0x0073ebe0
00c9e862  be01000000  MOV ESI,0x1
00c9e867  3974244c  CMP dword ptr [ESP + 0x4c],ESI
00c9e86b  c744245000000000  MOV dword ptr [ESP + 0x50],0x0
00c9e873  760d  JBE 0x00c9e882
00c9e875  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00c9e879  50  PUSH EAX
00c9e87a  e8615c84ff  CALL 0x004e44e0
00c9e87f  83c404  ADD ESP,0x4
00c9e882  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00c9e885  83c0ff  ADD EAX,-0x1
00c9e888  894704  MOV dword ptr [EDI + 0x4],EAX
00c9e88b  750c  JNZ 0x00c9e899
00c9e88d  897704  MOV dword ptr [EDI + 0x4],ESI
00c9e890  8b17  MOV EDX,dword ptr [EDI]
00c9e892  8b02  MOV EAX,dword ptr [EDX]
00c9e894  56  PUSH ESI
00c9e895  8bcf  MOV ECX,EDI
00c9e897  ffd0  CALL EAX
00c9e899  5f  POP EDI
00c9e89a  5e  POP ESI
00c9e89b  5b  POP EBX
00c9e89c  8be5  MOV ESP,EBP
00c9e89e  5d  POP EBP
00c9e89f  c3  RET
00c9e8a0  c744242c00000000  MOV dword ptr [ESP + 0x2c],0x0
00c9e8a8  8b7c242c  MOV EDI,dword ptr [ESP + 0x2c]
00c9e8ac  e915ffffff  JMP 0x00c9e7c6
00c9e8b1  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00c9e8b5  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00c9e8b9  8d4c2410  LEA ECX,[ESP + 0x10]
00c9e8bd  51  PUSH ECX
00c9e8be  50  PUSH EAX
00c9e8bf  8bce  MOV ECX,ESI
00c9e8c1  c6442418ff  MOV byte ptr [ESP + 0x18],0xff
00c9e8c6  c6442419ff  MOV byte ptr [ESP + 0x19],0xff
00c9e8cb  c644241a00  MOV byte ptr [ESP + 0x1a],0x0
00c9e8d0  c644241bff  MOV byte ptr [ESP + 0x1b],0xff
00c9e8d5  c644241cff  MOV byte ptr [ESP + 0x1c],0xff
00c9e8da  c644241d00  MOV byte ptr [ESP + 0x1d],0x0
00c9e8df  e87c95eaff  CALL 0x00b47e60
00c9e8e4  6a00  PUSH 0x0
00c9e8e6  8d542414  LEA EDX,[ESP + 0x14]
00c9e8ea  52  PUSH EDX
00c9e8eb  8bce  MOV ECX,ESI
00c9e8ed  e8fe94eaff  CALL 0x00b47df0
00c9e8f2  8bf0  MOV ESI,EAX
00c9e8f4  6a01  PUSH 0x1
00c9e8f6  56  PUSH ESI
00c9e8f7  e8b4d0fbff  CALL 0x00c5b9b0
00c9e8fc  83c408  ADD ESP,0x8
00c9e8ff  84c0  TEST AL,AL
00c9e901  0f85ba010000  JNZ 0x00c9eac1
00c9e907  384518  CMP byte ptr [EBP + 0x18],AL
00c9e90a  7532  JNZ 0x00c9e93e
00c9e90c  8b0e  MOV ECX,dword ptr [ESI]
00c9e90e  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00c9e912  3b08  CMP ECX,dword ptr [EAX]
00c9e914  0f85a7010000  JNZ 0x00c9eac1
00c9e91a  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c9e91d  3b5008  CMP EDX,dword ptr [EAX + 0x8]
00c9e920  0f859b010000  JNZ 0x00c9eac1
00c9e926  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c9e929  3b480c  CMP ECX,dword ptr [EAX + 0xc]
00c9e92c  0f858f010000  JNZ 0x00c9eac1
00c9e932  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c9e935  3b5004  CMP EDX,dword ptr [EAX + 0x4]
00c9e938  0f8583010000  JNZ 0x00c9eac1
00c9e93e  8b4d14  MOV ECX,dword ptr [EBP + 0x14]
00c9e941  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00c9e944  8d442410  LEA EAX,[ESP + 0x10]
00c9e948  50  PUSH EAX
00c9e949  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c9e94c  51  PUSH ECX
00c9e94d  52  PUSH EDX
00c9e94e  50  PUSH EAX
00c9e94f  e81c47e6ff  CALL 0x00b03070
00c9e954  83c410  ADD ESP,0x10
00c9e957  84c0  TEST AL,AL
00c9e959  0f8562010000  JNZ 0x00c9eac1
00c9e95f  384518  CMP byte ptr [EBP + 0x18],AL
00c9e962  7465  JZ 0x00c9e9c9
00c9e964  8b0e  MOV ECX,dword ptr [ESI]
00c9e966  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00c9e96a  3b08  CMP ECX,dword ptr [EAX]
00c9e96c  7518  JNZ 0x00c9e986
00c9e96e  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c9e971  3b5008  CMP EDX,dword ptr [EAX + 0x8]
00c9e974  7510  JNZ 0x00c9e986
00c9e976  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c9e979  3b480c  CMP ECX,dword ptr [EAX + 0xc]
00c9e97c  7508  JNZ 0x00c9e986
00c9e97e  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c9e981  3b5004  CMP EDX,dword ptr [EAX + 0x4]
00c9e984  7443  JZ 0x00c9e9c9
00c9e986  6a01  PUSH 0x1
00c9e988  8d442414  LEA EAX,[ESP + 0x14]
00c9e98c  50  PUSH EAX
00c9e98d  53  PUSH EBX
00c9e98e  8bcf  MOV ECX,EDI
00c9e990  e89bfc0800  CALL 0x00d2e630
00c9e995  84c0  TEST AL,AL
00c9e997  0f8424010000  JZ 0x00c9eac1
00c9e99d  837d2000  CMP dword ptr [EBP + 0x20],0x0
00c9e9a1  0f8415010000  JZ 0x00c9eabc
00c9e9a7  c644243000  MOV byte ptr [ESP + 0x30],0x0
00c9e9ac  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00c9e9b0  51  PUSH ECX
00c9e9b1  8d542414  LEA EDX,[ESP + 0x14]
00c9e9b5  52  PUSH EDX
00c9e9b6  8d44246c  LEA EAX,[ESP + 0x6c]
00c9e9ba  50  PUSH EAX
00c9e9bb  8d4c2450  LEA ECX,[ESP + 0x50]
00c9e9bf  e87c76dbff  CALL 0x00a56040
00c9e9c4  e9f3000000  JMP 0x00c9eabc
00c9e9c9  8d4c241c  LEA ECX,[ESP + 0x1c]
00c9e9cd  51  PUSH ECX
00c9e9ce  8d542414  LEA EDX,[ESP + 0x14]
00c9e9d2  52  PUSH EDX
00c9e9d3  c6442424ff  MOV byte ptr [ESP + 0x24],0xff
00c9e9d8  c6442425ff  MOV byte ptr [ESP + 0x25],0xff
00c9e9dd  c644242600  MOV byte ptr [ESP + 0x26],0x0
00c9e9e2  c6442427ff  MOV byte ptr [ESP + 0x27],0xff
00c9e9e7  c6442428ff  MOV byte ptr [ESP + 0x28],0xff
00c9e9ec  c6442429ff  MOV byte ptr [ESP + 0x29],0xff
00c9e9f1  c644242a00  MOV byte ptr [ESP + 0x2a],0x0
00c9e9f6  c644242bff  MOV byte ptr [ESP + 0x2b],0xff
00c9e9fb  e82075faff  CALL 0x00c45f20
00c9ea00  8d442428  LEA EAX,[ESP + 0x28]
00c9ea04  50  PUSH EAX
00c9ea05  8d4c241c  LEA ECX,[ESP + 0x1c]
00c9ea09  51  PUSH ECX
00c9ea0a  e8a175faff  CALL 0x00c45fb0
00c9ea0f  0fbe44242c  MOVSX EAX,byte ptr [ESP + 0x2c]
00c9ea14  0fbe4c242d  MOVSX ECX,byte ptr [ESP + 0x2d]
00c9ea19  83c410  ADD ESP,0x10
00c9ea1c  85c0  TEST EAX,EAX
00c9ea1e  c644241b00  MOV byte ptr [ESP + 0x1b],0x0
00c9ea23  7c39  JL 0x00c9ea5e
00c9ea25  3b8374010000  CMP EAX,dword ptr [EBX + 0x174]
00c9ea2b  7d31  JGE 0x00c9ea5e
00c9ea2d  85c9  TEST ECX,ECX
00c9ea2f  7c2d  JL 0x00c9ea5e
00c9ea31  3b8b78010000  CMP ECX,dword ptr [EBX + 0x178]
00c9ea37  7d25  JGE 0x00c9ea5e
00c9ea39  0fbe44241e  MOVSX EAX,byte ptr [ESP + 0x1e]
00c9ea3e  3b837c010000  CMP EAX,dword ptr [EBX + 0x17c]
00c9ea44  7c18  JL 0x00c9ea5e
00c9ea46  3b8380010000  CMP EAX,dword ptr [EBX + 0x180]
00c9ea4c  7f10  JG 0x00c9ea5e
00c9ea4e  8d54241c  LEA EDX,[ESP + 0x1c]
00c9ea52  52  PUSH EDX
00c9ea53  8bcb  MOV ECX,EBX
00c9ea55  e8b682e1ff  CALL 0x00ab6d10
00c9ea5a  8844241b  MOV byte ptr [ESP + 0x1b],AL
00c9ea5e  0fbe4c2420  MOVSX ECX,byte ptr [ESP + 0x20]
00c9ea63  0fbe542421  MOVSX EDX,byte ptr [ESP + 0x21]
00c9ea68  32c0  XOR AL,AL
00c9ea6a  85c9  TEST ECX,ECX
00c9ea6c  7c35  JL 0x00c9eaa3
00c9ea6e  3b8b74010000  CMP ECX,dword ptr [EBX + 0x174]
00c9ea74  7d2d  JGE 0x00c9eaa3
00c9ea76  85d2  TEST EDX,EDX
00c9ea78  7c29  JL 0x00c9eaa3
00c9ea7a  3b9378010000  CMP EDX,dword ptr [EBX + 0x178]
00c9ea80  7d21  JGE 0x00c9eaa3
00c9ea82  0fbe4c2422  MOVSX ECX,byte ptr [ESP + 0x22]
00c9ea87  3b8b7c010000  CMP ECX,dword ptr [EBX + 0x17c]
00c9ea8d  7c14  JL 0x00c9eaa3
00c9ea8f  3b8b80010000  CMP ECX,dword ptr [EBX + 0x180]
00c9ea95  7f0c  JG 0x00c9eaa3
00c9ea97  8d442420  LEA EAX,[ESP + 0x20]
00c9ea9b  50  PUSH EAX
00c9ea9c  8bcb  MOV ECX,EBX
00c9ea9e  e86d82e1ff  CALL 0x00ab6d10
00c9eaa3  3844241b  CMP byte ptr [ESP + 0x1b],AL
00c9eaa7  7518  JNZ 0x00c9eac1
00c9eaa9  6a01  PUSH 0x1
00c9eaab  8d4c2414  LEA ECX,[ESP + 0x14]
00c9eaaf  51  PUSH ECX
00c9eab0  53  PUSH EBX
00c9eab1  8bcf  MOV ECX,EDI
00c9eab3  e878fb0800  CALL 0x00d2e630
00c9eab8  84c0  TEST AL,AL
00c9eaba  7405  JZ 0x00c9eac1
00c9eabc  c644241a01  MOV byte ptr [ESP + 0x1a],0x1
00c9eac1  836c243c01  SUB dword ptr [ESP + 0x3c],0x1
00c9eac6  0f89e5fdffff  JNS 0x00c9e8b1
00c9eacc  807c241a00  CMP byte ptr [ESP + 0x1a],0x0
00c9ead1  0f846ffdffff  JZ 0x00c9e846
00c9ead7  837d2000  CMP dword ptr [EBP + 0x20],0x0
00c9eadb  0f84e0000000  JZ 0x00c9ebc1
00c9eae1  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
00c9eae5  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00c9eae9  8b0c90  MOV ECX,dword ptr [EAX + EDX*0x4]
00c9eaec  894c2434  MOV dword ptr [ESP + 0x34],ECX
00c9eaf0  8bcf  MOV ECX,EDI
00c9eaf2  e8a9dd0800  CALL 0x00d2c8a0
00c9eaf7  8bf0  MOV ESI,EAX
00c9eaf9  33db  XOR EBX,EBX
00c9eafb  85f6  TEST ESI,ESI
00c9eafd  89742428  MOV dword ptr [ESP + 0x28],ESI
00c9eb01  0f8eba000000  JLE 0x00c9ebc1
00c9eb07  eb07  JMP 0x00c9eb10
00c9eb09  8da42400000000  .byte 8da42400000000 ; NONOWNED envelope gap bytes
00c9eb10  8d8c24f8000000  LEA ECX,[ESP + 0xf8]
00c9eb17  c6442410ff  MOV byte ptr [ESP + 0x10],0xff
00c9eb1c  c6442411ff  MOV byte ptr [ESP + 0x11],0xff
00c9eb21  c644241200  MOV byte ptr [ESP + 0x12],0x0
00c9eb26  c6442413ff  MOV byte ptr [ESP + 0x13],0xff
00c9eb2b  c6442414ff  MOV byte ptr [ESP + 0x14],0xff
00c9eb30  c644241500  MOV byte ptr [ESP + 0x15],0x0
00c9eb35  e856d1e5ff  CALL 0x00afbc90
00c9eb3a  8d9424f8000000  LEA EDX,[ESP + 0xf8]
00c9eb41  52  PUSH EDX
00c9eb42  8d442414  LEA EAX,[ESP + 0x14]
00c9eb46  50  PUSH EAX
00c9eb47  53  PUSH EBX
00c9eb48  8bcf  MOV ECX,EDI
00c9eb4a  e8a1dd0800  CALL 0x00d2c8f0
00c9eb4f  84c0  TEST AL,AL
00c9eb51  7463  JZ 0x00c9ebb6
00c9eb53  8d4c2410  LEA ECX,[ESP + 0x10]
00c9eb57  51  PUSH ECX
00c9eb58  8d542440  LEA EDX,[ESP + 0x40]
00c9eb5c  52  PUSH EDX
00c9eb5d  8d4c244c  LEA ECX,[ESP + 0x4c]
00c9eb61  e8ba73dbff  CALL 0x00a55f20
00c9eb66  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c9eb6a  3908  CMP dword ptr [EAX],ECX
00c9eb6c  7448  JZ 0x00c9ebb6
00c9eb6e  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00c9eb72  668b442414  MOV AX,word ptr [ESP + 0x14]
00c9eb77  89542470  MOV dword ptr [ESP + 0x70],EDX
00c9eb7b  6689442474  MOV word ptr [ESP + 0x74],AX
00c9eb80  b920000000  MOV ECX,0x20
00c9eb85  8db424f8000000  LEA ESI,[ESP + 0xf8]
00c9eb8c  8d7c2478  LEA EDI,[ESP + 0x78]
00c9eb90  f3a5  MOVSD.REP ES:EDI,ESI
00c9eb92  c644243000  MOV byte ptr [ESP + 0x30],0x0
00c9eb97  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00c9eb9b  51  PUSH ECX
00c9eb9c  8b4d20  MOV ECX,dword ptr [EBP + 0x20]
00c9eb9f  8d542474  LEA EDX,[ESP + 0x74]
00c9eba3  52  PUSH EDX
00c9eba4  8d442428  LEA EAX,[ESP + 0x28]
00c9eba8  50  PUSH EAX
00c9eba9  e802f3ffff  CALL 0x00c9deb0
00c9ebae  8b7c242c  MOV EDI,dword ptr [ESP + 0x2c]
00c9ebb2  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00c9ebb6  83c301  ADD EBX,0x1
00c9ebb9  3bde  CMP EBX,ESI
00c9ebbb  0f8c4fffffff  JL 0x00c9eb10
00c9ebc1  8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
00c9ebc4  57  PUSH EDI
00c9ebc5  e836c60700  CALL 0x00d1b200
00c9ebca  e980fcffff  JMP 0x00c9e84f

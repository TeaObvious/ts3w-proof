# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined1 LotTerrain_WriteResources(void * this, void * param_1, void * param_2, undefined4 param_3, undefined4 param_4, uint param_5)
Owned ranges: [[00af0f20, 00af1087] [00af1090, 00af12e7]]

00af0f20  83ec10  SUB ESP,0x10
00af0f23  53  PUSH EBX
00af0f24  55  PUSH EBP
00af0f25  56  PUSH ESI
00af0f26  57  PUSH EDI
00af0f27  8bf9  MOV EDI,ECX
00af0f29  e822feffff  CALL 0x00af0d50
00af0f2e  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00af0f32  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00af0f36  8b742424  MOV ESI,dword ptr [ESP + 0x24]
00af0f3a  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00af0f3e  6a01  PUSH 0x1
00af0f40  8d542414  LEA EDX,[ESP + 0x14]
00af0f44  894c2420  MOV dword ptr [ESP + 0x20],ECX
00af0f48  52  PUSH EDX
00af0f49  8bce  MOV ECX,ESI
00af0f4b  895c2418  MOV dword ptr [ESP + 0x18],EBX
00af0f4f  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00af0f53  c7442420bb6aee04  MOV dword ptr [ESP + 0x20],0x4ee6abb
00af0f5b  e86075ceff  CALL 0x007d84c0
00af0f60  84c0  TEST AL,AL
00af0f62  0f84ef010000  JZ 0x00af1157
00af0f68  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00af0f6b  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00af0f6e  50  PUSH EAX
00af0f6f  6a0e  PUSH 0xe
00af0f71  51  PUSH ECX
00af0f72  e8f9cf9eff  CALL 0x004ddf70
00af0f77  83c40c  ADD ESP,0xc
00af0f7a  8bce  MOV ECX,ESI
00af0f7c  50  PUSH EAX
00af0f7d  e86e6aceff  CALL 0x007d79f0
00af0f82  8b4f34  MOV ECX,dword ptr [EDI + 0x34]
00af0f85  2b4f30  SUB ECX,dword ptr [EDI + 0x30]
00af0f88  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af0f8d  f7e9  IMUL ECX
00af0f8f  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00af0f92  c1fa02  SAR EDX,0x2
00af0f95  8bda  MOV EBX,EDX
00af0f97  c1eb1f  SHR EBX,0x1f
00af0f9a  03da  ADD EBX,EDX
00af0f9c  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00af0f9f  52  PUSH EDX
00af0fa0  53  PUSH EBX
00af0fa1  50  PUSH EAX
00af0fa2  e8c9cf9eff  CALL 0x004ddf70
00af0fa7  83c40c  ADD ESP,0xc
00af0faa  8bce  MOV ECX,ESI
00af0fac  50  PUSH EAX
00af0fad  e83e6aceff  CALL 0x007d79f0
00af0fb2  85db  TEST EBX,EBX
00af0fb4  765d  JBE 0x00af1013
00af0fb6  33ed  XOR EBP,EBP
00af0fb8  895c2434  MOV dword ptr [ESP + 0x34],EBX
00af0fbc  8d642400  LEA ESP,[ESP]
00af0fc0  8b5f30  MOV EBX,dword ptr [EDI + 0x30]
00af0fc3  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00af0fc7  6a00  PUSH 0x0
00af0fc9  03dd  ADD EBX,EBP
00af0fcb  53  PUSH EBX
00af0fcc  e88f64ceff  CALL 0x007d7460
00af0fd1  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00af0fd4  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00af0fd7  0fb7c0  MOVZX EAX,AX
00af0fda  51  PUSH ECX
00af0fdb  50  PUSH EAX
00af0fdc  52  PUSH EDX
00af0fdd  e88ece9eff  CALL 0x004dde70
00af0fe2  83c40c  ADD ESP,0xc
00af0fe5  8bce  MOV ECX,ESI
00af0fe7  50  PUSH EAX
00af0fe8  e8036aceff  CALL 0x007d79f0
00af0fed  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00af0ff0  8b5b10  MOV EBX,dword ptr [EBX + 0x10]
00af0ff3  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00af0ff6  50  PUSH EAX
00af0ff7  53  PUSH EBX
00af0ff8  51  PUSH ECX
00af0ff9  e862d09eff  CALL 0x004de060
00af0ffe  83c40c  ADD ESP,0xc
00af1001  8bce  MOV ECX,ESI
00af1003  50  PUSH EAX
00af1004  e8e769ceff  CALL 0x007d79f0
00af1009  83c518  ADD EBP,0x18
00af100c  836c243401  SUB dword ptr [ESP + 0x34],0x1
00af1011  75ad  JNZ 0x00af0fc0
00af1013  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00af1016  8b4718  MOV EAX,dword ptr [EDI + 0x18]
00af1019  52  PUSH EDX
00af101a  50  PUSH EAX
00af101b  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00af101e  50  PUSH EAX
00af101f  e84ccf9eff  CALL 0x004ddf70
00af1024  83c40c  ADD ESP,0xc
00af1027  8bce  MOV ECX,ESI
00af1029  50  PUSH EAX
00af102a  e8c169ceff  CALL 0x007d79f0
00af102f  8b8f58010000  MOV ECX,dword ptr [EDI + 0x158]
00af1035  2b8f54010000  SUB ECX,dword ptr [EDI + 0x154]
00af103b  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af1040  f7e9  IMUL ECX
00af1042  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00af1045  8bc2  MOV EAX,EDX
00af1047  c1e81f  SHR EAX,0x1f
00af104a  03c2  ADD EAX,EDX
00af104c  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00af104f  51  PUSH ECX
00af1050  50  PUSH EAX
00af1051  52  PUSH EDX
00af1052  e819cf9eff  CALL 0x004ddf70
00af1057  83c40c  ADD ESP,0xc
00af105a  8bce  MOV ECX,ESI
00af105c  50  PUSH EAX
00af105d  e88e69ceff  CALL 0x007d79f0
00af1062  8b8f58010000  MOV ECX,dword ptr [EDI + 0x158]
00af1068  2b8f54010000  SUB ECX,dword ptr [EDI + 0x154]
00af106e  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af1073  f7e9  IMUL ECX
00af1075  8bc2  MOV EAX,EDX
00af1077  c1e81f  SHR EAX,0x1f
00af107a  33ed  XOR EBP,EBP
00af107c  03c2  ADD EAX,EDX
00af107e  0f84a6000000  JZ 0x00af112a
00af1084  33db  XOR EBX,EBX
00af1086  eb08  JMP 0x00af1090
00af1088  8da4240000000090  .byte 8da4240000000090 ; NONOWNED envelope gap bytes
00af1090  8b8f54010000  MOV ECX,dword ptr [EDI + 0x154]
00af1096  0fbe441902  MOVSX EAX,byte ptr [ECX + EBX*0x1 + 0x2]
00af109b  0fbe541901  MOVSX EDX,byte ptr [ECX + EBX*0x1 + 0x1]
00af10a0  03cb  ADD ECX,EBX
00af10a2  0fbe09  MOVSX ECX,byte ptr [ECX]
00af10a5  c1e00c  SHL EAX,0xc
00af10a8  03c2  ADD EAX,EDX
00af10aa  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00af10ad  c1e00c  SHL EAX,0xc
00af10b0  03c1  ADD EAX,ECX
00af10b2  52  PUSH EDX
00af10b3  50  PUSH EAX
00af10b4  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00af10b7  50  PUSH EAX
00af10b8  e8b3ce9eff  CALL 0x004ddf70
00af10bd  83c40c  ADD ESP,0xc
00af10c0  8bce  MOV ECX,ESI
00af10c2  50  PUSH EAX
00af10c3  e82869ceff  CALL 0x007d79f0
00af10c8  8b8f54010000  MOV ECX,dword ptr [EDI + 0x154]
00af10ce  0fbe440b05  MOVSX EAX,byte ptr [EBX + ECX*0x1 + 0x5]
00af10d3  0fbe540b04  MOVSX EDX,byte ptr [EBX + ECX*0x1 + 0x4]
00af10d8  8d4c0b03  LEA ECX,[EBX + ECX*0x1 + 0x3]
00af10dc  0fbe09  MOVSX ECX,byte ptr [ECX]
00af10df  c1e00c  SHL EAX,0xc
00af10e2  03c2  ADD EAX,EDX
00af10e4  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00af10e7  c1e00c  SHL EAX,0xc
00af10ea  03c1  ADD EAX,ECX
00af10ec  52  PUSH EDX
00af10ed  50  PUSH EAX
00af10ee  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00af10f1  50  PUSH EAX
00af10f2  e879ce9eff  CALL 0x004ddf70
00af10f7  83c40c  ADD ESP,0xc
00af10fa  8bce  MOV ECX,ESI
00af10fc  50  PUSH EAX
00af10fd  e8ee68ceff  CALL 0x007d79f0
00af1102  8b8f58010000  MOV ECX,dword ptr [EDI + 0x158]
00af1108  2b8f54010000  SUB ECX,dword ptr [EDI + 0x154]
00af110e  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af1113  f7e9  IMUL ECX
00af1115  8bca  MOV ECX,EDX
00af1117  c1e91f  SHR ECX,0x1f
00af111a  83c501  ADD EBP,0x1
00af111d  03ca  ADD ECX,EDX
00af111f  83c306  ADD EBX,0x6
00af1122  3be9  CMP EBP,ECX
00af1124  0f8266ffffff  JC 0x00af1090
00af112a  8b4764  MOV EAX,dword ptr [EDI + 0x64]
00af112d  2b4760  SUB EAX,dword ptr [EDI + 0x60]
00af1130  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00af1133  c1f802  SAR EAX,0x2
00af1136  52  PUSH EDX
00af1137  50  PUSH EAX
00af1138  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00af113b  50  PUSH EAX
00af113c  e82fce9eff  CALL 0x004ddf70
00af1141  83c40c  ADD ESP,0xc
00af1144  8bce  MOV ECX,ESI
00af1146  50  PUSH EAX
00af1147  e8a468ceff  CALL 0x007d79f0
00af114c  8bce  MOV ECX,ESI
00af114e  e81d69ceff  CALL 0x007d7a70
00af1153  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00af1157  807e1400  CMP byte ptr [ESI + 0x14],0x0
00af115b  0f84de000000  JZ 0x00af123f
00af1161  8b4764  MOV EAX,dword ptr [EDI + 0x64]
00af1164  2b4760  SUB EAX,dword ptr [EDI + 0x60]
00af1167  bd00000000  MOV EBP,0x0
00af116c  c1f802  SAR EAX,0x2
00af116f  89442434  MOV dword ptr [ESP + 0x34],EAX
00af1173  7473  JZ 0x00af11e8
00af1175  8b4f60  MOV ECX,dword ptr [EDI + 0x60]
00af1178  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00af117c  8b1ca9  MOV EBX,dword ptr [ECX + EBP*0x4]
00af117f  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00af1183  52  PUSH EDX
00af1184  50  PUSH EAX
00af1185  8d8da4dad400  LEA ECX,[EBP + 0xd4daa4]
00af118b  51  PUSH ECX
00af118c  56  PUSH ESI
00af118d  8bcb  MOV ECX,EBX
00af118f  e8ccdcffff  CALL 0x00aeee60
00af1194  84c0  TEST AL,AL
00af1196  7443  JZ 0x00af11db
00af1198  8b4b10  MOV ECX,dword ptr [EBX + 0x10]
00af119b  8b4314  MOV EAX,dword ptr [EBX + 0x14]
00af119e  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00af11a1  2bc1  SUB EAX,ECX
00af11a3  50  PUSH EAX
00af11a4  51  PUSH ECX
00af11a5  52  PUSH EDX
00af11a6  e8a5cc9eff  CALL 0x004dde50
00af11ab  83c40c  ADD ESP,0xc
00af11ae  8bce  MOV ECX,ESI
00af11b0  50  PUSH EAX
00af11b1  e83a68ceff  CALL 0x007d79f0
00af11b6  8b4b20  MOV ECX,dword ptr [EBX + 0x20]
00af11b9  8b4324  MOV EAX,dword ptr [EBX + 0x24]
00af11bc  2bc1  SUB EAX,ECX
00af11be  50  PUSH EAX
00af11bf  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00af11c2  51  PUSH ECX
00af11c3  50  PUSH EAX
00af11c4  e887cc9eff  CALL 0x004dde50
00af11c9  83c40c  ADD ESP,0xc
00af11cc  8bce  MOV ECX,ESI
00af11ce  50  PUSH EAX
00af11cf  e81c68ceff  CALL 0x007d79f0
00af11d4  8bce  MOV ECX,ESI
00af11d6  e89568ceff  CALL 0x007d7a70
00af11db  83c501  ADD EBP,0x1
00af11de  3b6c2434  CMP EBP,dword ptr [ESP + 0x34]
00af11e2  7291  JC 0x00af1175
00af11e4  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00af11e8  807e1400  CMP byte ptr [ESI + 0x14],0x0
00af11ec  7451  JZ 0x00af123f
00af11ee  8b6c2430  MOV EBP,dword ptr [ESP + 0x30]
00af11f2  8b8fc8000000  MOV ECX,dword ptr [EDI + 0xc8]
00af11f8  55  PUSH EBP
00af11f9  53  PUSH EBX
00af11fa  686720ff00  PUSH 0xff2067
00af11ff  56  PUSH ESI
00af1200  e8fb8effff  CALL 0x00aea100
00af1205  807e1400  CMP byte ptr [ESI + 0x14],0x0
00af1209  742b  JZ 0x00af1236
00af120b  8b8fc8000000  MOV ECX,dword ptr [EDI + 0xc8]
00af1211  8b510c  MOV EDX,dword ptr [ECX + 0xc]
00af1214  8b4110  MOV EAX,dword ptr [ECX + 0x10]
00af1217  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00af121a  2bc2  SUB EAX,EDX
00af121c  51  PUSH ECX
00af121d  c1f802  SAR EAX,0x2
00af1220  50  PUSH EAX
00af1221  52  PUSH EDX
00af1222  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00af1225  52  PUSH EDX
00af1226  e885ce9eff  CALL 0x004de0b0
00af122b  83c410  ADD ESP,0x10
00af122e  8bce  MOV ECX,ESI
00af1230  50  PUSH EAX
00af1231  e8ba67ceff  CALL 0x007d79f0
00af1236  8bce  MOV ECX,ESI
00af1238  e83368ceff  CALL 0x007d7a70
00af123d  eb04  JMP 0x00af1243
00af123f  8b6c2430  MOV EBP,dword ptr [ESP + 0x30]
00af1243  807e1400  CMP byte ptr [ESI + 0x14],0x0
00af1247  0f848e000000  JZ 0x00af12db
00af124d  8b8fcc000000  MOV ECX,dword ptr [EDI + 0xcc]
00af1253  55  PUSH EBP
00af1254  53  PUSH EBX
00af1255  68e17b1300  PUSH 0x137be1
00af125a  56  PUSH ESI
00af125b  e80088ffff  CALL 0x00ae9a60
00af1260  807e1400  CMP byte ptr [ESI + 0x14],0x0
00af1264  7424  JZ 0x00af128a
00af1266  8b87cc000000  MOV EAX,dword ptr [EDI + 0xcc]
00af126c  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00af126f  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00af1272  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00af1275  2bca  SUB ECX,EDX
00af1277  51  PUSH ECX
00af1278  52  PUSH EDX
00af1279  50  PUSH EAX
00af127a  e8d1cb9eff  CALL 0x004dde50
00af127f  83c40c  ADD ESP,0xc
00af1282  8bce  MOV ECX,ESI
00af1284  50  PUSH EAX
00af1285  e86667ceff  CALL 0x007d79f0
00af128a  8bce  MOV ECX,ESI
00af128c  e8df67ceff  CALL 0x007d7a70
00af1291  807e1400  CMP byte ptr [ESI + 0x14],0x0
00af1295  7444  JZ 0x00af12db
00af1297  8b8fe4000000  MOV ECX,dword ptr [EDI + 0xe4]
00af129d  55  PUSH EBP
00af129e  53  PUSH EBX
00af129f  6844839500  PUSH 0x958344
00af12a4  56  PUSH ESI
00af12a5  e8568effff  CALL 0x00aea100
00af12aa  807e1400  CMP byte ptr [ESI + 0x14],0x0
00af12ae  7424  JZ 0x00af12d4
00af12b0  8bbfe4000000  MOV EDI,dword ptr [EDI + 0xe4]
00af12b6  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00af12b9  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00af12bc  2bc1  SUB EAX,ECX
00af12be  50  PUSH EAX
00af12bf  51  PUSH ECX
00af12c0  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00af12c3  51  PUSH ECX
00af12c4  e887cb9eff  CALL 0x004dde50
00af12c9  83c40c  ADD ESP,0xc
00af12cc  8bce  MOV ECX,ESI
00af12ce  50  PUSH EAX
00af12cf  e81c67ceff  CALL 0x007d79f0
00af12d4  8bce  MOV ECX,ESI
00af12d6  e89567ceff  CALL 0x007d7a70
00af12db  8a4614  MOV AL,byte ptr [ESI + 0x14]
00af12de  5f  POP EDI
00af12df  5e  POP ESI
00af12e0  5d  POP EBP
00af12e1  5b  POP EBX
00af12e2  83c410  ADD ESP,0x10
00af12e5  c21400  RET 0x14

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LotCompositors_WriteResource
Paired actual annotated Ghidra pseudocode: 00AD2E10_LotCompositors_WriteResource.c
Owned ranges: [[00ad2e10, 00ad308d]]
Envelope bytes=638

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00ad2e10  83ec14  SUB ESP,0x14
00ad2e13  53  PUSH EBX
00ad2e14  55  PUSH EBP
00ad2e15  8bd9  MOV EBX,ECX
00ad2e17  56  PUSH ESI
00ad2e18  8d4b44  LEA ECX,[EBX + 0x44]
00ad2e1b  57  PUSH EDI
00ad2e1c  894c2410  MOV dword ptr [ESP + 0x10],ECX
00ad2e20  e8ab44b3ff  CALL 0x006072d0
00ad2e25  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00ad2e29  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00ad2e2d  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00ad2e31  6a01  PUSH 0x1
00ad2e33  8d542418  LEA EDX,[ESP + 0x18]
00ad2e37  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00ad2e3b  52  PUSH EDX
00ad2e3c  8bce  MOV ECX,ESI
00ad2e3e  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00ad2e42  c74424249e916305  MOV dword ptr [ESP + 0x24],0x563919e
00ad2e4a  c744242800000000  MOV dword ptr [ESP + 0x28],0x0
00ad2e52  e86956d0ff  CALL 0x007d84c0
00ad2e57  84c0  TEST AL,AL
00ad2e59  0f8423020000  JZ 0x00ad3082
00ad2e5f  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00ad2e62  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad2e65  50  PUSH EAX
00ad2e66  6a05  PUSH 0x5
00ad2e68  51  PUSH ECX
00ad2e69  e802b1a0ff  CALL 0x004ddf70
00ad2e6e  83c40c  ADD ESP,0xc
00ad2e71  8bce  MOV ECX,ESI
00ad2e73  50  PUSH EAX
00ad2e74  e8774bd0ff  CALL 0x007d79f0
00ad2e79  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad2e7c  8b11  MOV EDX,dword ptr [ECX]
00ad2e7e  8b4224  MOV EAX,dword ptr [EDX + 0x24]
00ad2e81  6a00  PUSH 0x0
00ad2e83  ffd0  CALL EAX
00ad2e85  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00ad2e88  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00ad2e8b  51  PUSH ECX
00ad2e8c  6a00  PUSH 0x0
00ad2e8e  52  PUSH EDX
00ad2e8f  89442434  MOV dword ptr [ESP + 0x34],EAX
00ad2e93  e8d8b0a0ff  CALL 0x004ddf70
00ad2e98  83c40c  ADD ESP,0xc
00ad2e9b  8bce  MOV ECX,ESI
00ad2e9d  50  PUSH EAX
00ad2e9e  e84d4bd0ff  CALL 0x007d79f0
00ad2ea3  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00ad2ea6  8b430c  MOV EAX,dword ptr [EBX + 0xc]
00ad2ea9  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00ad2eac  51  PUSH ECX
00ad2ead  50  PUSH EAX
00ad2eae  52  PUSH EDX
00ad2eaf  e8bcb0a0ff  CALL 0x004ddf70
00ad2eb4  83c40c  ADD ESP,0xc
00ad2eb7  8bce  MOV ECX,ESI
00ad2eb9  50  PUSH EAX
00ad2eba  e8314bd0ff  CALL 0x007d79f0
00ad2ebf  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00ad2ec2  8b38  MOV EDI,dword ptr [EAX]
00ad2ec4  85ff  TEST EDI,EDI
00ad2ec6  8be8  MOV EBP,EAX
00ad2ec8  7514  JNZ 0x00ad2ede
00ad2eca  397804  CMP dword ptr [EAX + 0x4],EDI
00ad2ecd  8d6804  LEA EBP,[EAX + 0x4]
00ad2ed0  7509  JNZ 0x00ad2edb
00ad2ed2  83c504  ADD EBP,0x4
00ad2ed5  837d0000  CMP dword ptr [EBP],0x0
00ad2ed9  74f7  JZ 0x00ad2ed2
00ad2edb  8b7d00  MOV EDI,dword ptr [EBP]
00ad2ede  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00ad2ee1  8b0488  MOV EAX,dword ptr [EAX + ECX*0x4]
00ad2ee4  3bf8  CMP EDI,EAX
00ad2ee6  89442430  MOV dword ptr [ESP + 0x30],EAX
00ad2eea  7465  JZ 0x00ad2f51
00ad2eec  8d642400  LEA ESP,[ESP]
00ad2ef0  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00ad2ef4  6a01  PUSH 0x1
00ad2ef6  57  PUSH EDI
00ad2ef7  e86445d0ff  CALL 0x007d7460
00ad2efc  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ad2eff  0fb7c0  MOVZX EAX,AX
00ad2f02  52  PUSH EDX
00ad2f03  50  PUSH EAX
00ad2f04  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00ad2f07  50  PUSH EAX
00ad2f08  e863afa0ff  CALL 0x004dde70
00ad2f0d  83c40c  ADD ESP,0xc
00ad2f10  8bce  MOV ECX,ESI
00ad2f12  50  PUSH EAX
00ad2f13  e8d84ad0ff  CALL 0x007d79f0
00ad2f18  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00ad2f1c  8b4714  MOV EAX,dword ptr [EDI + 0x14]
00ad2f1f  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad2f22  52  PUSH EDX
00ad2f23  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00ad2f27  52  PUSH EDX
00ad2f28  50  PUSH EAX
00ad2f29  51  PUSH ECX
00ad2f2a  e8112eb3ff  CALL 0x00605d40
00ad2f2f  83c410  ADD ESP,0x10
00ad2f32  84c0  TEST AL,AL
00ad2f34  0f84bb000000  JZ 0x00ad2ff5
00ad2f3a  8b7f18  MOV EDI,dword ptr [EDI + 0x18]
00ad2f3d  85ff  TEST EDI,EDI
00ad2f3f  750a  JNZ 0x00ad2f4b
00ad2f41  8b7d04  MOV EDI,dword ptr [EBP + 0x4]
00ad2f44  83c504  ADD EBP,0x4
00ad2f47  85ff  TEST EDI,EDI
00ad2f49  74f6  JZ 0x00ad2f41
00ad2f4b  3b7c2430  CMP EDI,dword ptr [ESP + 0x30]
00ad2f4f  759f  JNZ 0x00ad2ef0
00ad2f51  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00ad2f54  8b432c  MOV EAX,dword ptr [EBX + 0x2c]
00ad2f57  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00ad2f5a  51  PUSH ECX
00ad2f5b  50  PUSH EAX
00ad2f5c  52  PUSH EDX
00ad2f5d  e80eb0a0ff  CALL 0x004ddf70
00ad2f62  83c40c  ADD ESP,0xc
00ad2f65  8bce  MOV ECX,ESI
00ad2f67  50  PUSH EAX
00ad2f68  e8834ad0ff  CALL 0x007d79f0
00ad2f6d  8b6b24  MOV EBP,dword ptr [EBX + 0x24]
00ad2f70  8b7d00  MOV EDI,dword ptr [EBP]
00ad2f73  85ff  TEST EDI,EDI
00ad2f75  7515  JNZ 0x00ad2f8c
00ad2f77  83c504  ADD EBP,0x4
00ad2f7a  397d00  CMP dword ptr [EBP],EDI
00ad2f7d  750a  JNZ 0x00ad2f89
00ad2f7f  90  NOP
00ad2f80  83c504  ADD EBP,0x4
00ad2f83  837d0000  CMP dword ptr [EBP],0x0
00ad2f87  74f7  JZ 0x00ad2f80
00ad2f89  8b7d00  MOV EDI,dword ptr [EBP]
00ad2f8c  8b4328  MOV EAX,dword ptr [EBX + 0x28]
00ad2f8f  8b4b24  MOV ECX,dword ptr [EBX + 0x24]
00ad2f92  8b0481  MOV EAX,dword ptr [ECX + EAX*0x4]
00ad2f95  3bf8  CMP EDI,EAX
00ad2f97  89442430  MOV dword ptr [ESP + 0x30],EAX
00ad2f9b  746b  JZ 0x00ad3008
00ad2f9d  8d4900  LEA ECX,[ECX]
00ad2fa0  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00ad2fa4  6a01  PUSH 0x1
00ad2fa6  57  PUSH EDI
00ad2fa7  8bcb  MOV ECX,EBX
00ad2fa9  e8b244d0ff  CALL 0x007d7460
00ad2fae  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ad2fb1  0fb7c0  MOVZX EAX,AX
00ad2fb4  52  PUSH EDX
00ad2fb5  50  PUSH EAX
00ad2fb6  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00ad2fb9  50  PUSH EAX
00ad2fba  e8b1aea0ff  CALL 0x004dde70
00ad2fbf  83c40c  ADD ESP,0xc
00ad2fc2  8bce  MOV ECX,ESI
00ad2fc4  50  PUSH EAX
00ad2fc5  e8264ad0ff  CALL 0x007d79f0
00ad2fca  8b4714  MOV EAX,dword ptr [EDI + 0x14]
00ad2fcd  53  PUSH EBX
00ad2fce  50  PUSH EAX
00ad2fcf  56  PUSH ESI
00ad2fd0  e85bc8aeff  CALL 0x005bf830
00ad2fd5  83c40c  ADD ESP,0xc
00ad2fd8  84c0  TEST AL,AL
00ad2fda  7419  JZ 0x00ad2ff5
00ad2fdc  8b7f18  MOV EDI,dword ptr [EDI + 0x18]
00ad2fdf  85ff  TEST EDI,EDI
00ad2fe1  750a  JNZ 0x00ad2fed
00ad2fe3  8b7d04  MOV EDI,dword ptr [EBP + 0x4]
00ad2fe6  83c504  ADD EBP,0x4
00ad2fe9  85ff  TEST EDI,EDI
00ad2feb  74f6  JZ 0x00ad2fe3
00ad2fed  3b7c2430  CMP EDI,dword ptr [ESP + 0x30]
00ad2ff1  75ad  JNZ 0x00ad2fa0
00ad2ff3  eb17  JMP 0x00ad300c
00ad2ff5  8bce  MOV ECX,ESI
00ad2ff7  e8744ad0ff  CALL 0x007d7a70
00ad2ffc  5f  POP EDI
00ad2ffd  5e  POP ESI
00ad2ffe  5d  POP EBP
00ad2fff  32c0  XOR AL,AL
00ad3001  5b  POP EBX
00ad3002  83c414  ADD ESP,0x14
00ad3005  c21400  RET 0x14
00ad3008  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00ad300c  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad300f  8b11  MOV EDX,dword ptr [ECX]
00ad3011  8b4224  MOV EAX,dword ptr [EDX + 0x24]
00ad3014  6a00  PUSH 0x0
00ad3016  ffd0  CALL EAX
00ad3018  8bf8  MOV EDI,EAX
00ad301a  83ffff  CMP EDI,-0x1
00ad301d  743f  JZ 0x00ad305e
00ad301f  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad3022  8b11  MOV EDX,dword ptr [ECX]
00ad3024  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00ad3028  8b5228  MOV EDX,dword ptr [EDX + 0x28]
00ad302b  6a00  PUSH 0x0
00ad302d  50  PUSH EAX
00ad302e  ffd2  CALL EDX
00ad3030  84c0  TEST AL,AL
00ad3032  742a  JZ 0x00ad305e
00ad3034  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00ad3037  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad303a  50  PUSH EAX
00ad303b  57  PUSH EDI
00ad303c  51  PUSH ECX
00ad303d  e82eafa0ff  CALL 0x004ddf70
00ad3042  83c40c  ADD ESP,0xc
00ad3045  8bce  MOV ECX,ESI
00ad3047  50  PUSH EAX
00ad3048  e8a349d0ff  CALL 0x007d79f0
00ad304d  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ad3050  8b11  MOV EDX,dword ptr [ECX]
00ad3052  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00ad3055  6a00  PUSH 0x0
00ad3057  57  PUSH EDI
00ad3058  ffd0  CALL EAX
00ad305a  84c0  TEST AL,AL
00ad305c  7504  JNZ 0x00ad3062
00ad305e  c6461400  MOV byte ptr [ESI + 0x14],0x0
00ad3062  807e1400  CMP byte ptr [ESI + 0x14],0x0
00ad3066  748d  JZ 0x00ad2ff5
00ad3068  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00ad306c  53  PUSH EBX
00ad306d  56  PUSH ESI
00ad306e  e8adfcb2ff  CALL 0x00602d20
00ad3073  84c0  TEST AL,AL
00ad3075  0f847affffff  JZ 0x00ad2ff5
00ad307b  8bce  MOV ECX,ESI
00ad307d  e8ee49d0ff  CALL 0x007d7a70
00ad3082  5f  POP EDI
00ad3083  5e  POP ESI
00ad3084  5d  POP EBP
00ad3085  b001  MOV AL,0x1
00ad3087  5b  POP EBX
00ad3088  83c414  ADD ESP,0x14
00ad308b  c21400  RET 0x14
Owned instructions=241 owned bytes=638 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallGraph_WriteResource
Paired actual annotated Ghidra pseudocode: 00C3F910_WallGraph_WriteResource.c
Owned ranges: [[00c3f910, 00c3fc73]]
Envelope bytes=868

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00c3f910  83ec20  SUB ESP,0x20
00c3f913  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c3f917  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00c3f91b  56  PUSH ESI
00c3f91c  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00c3f920  57  PUSH EDI
00c3f921  8bf9  MOV EDI,ECX
00c3f923  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00c3f927  89442418  MOV dword ptr [ESP + 0x18],EAX
00c3f92b  6a01  PUSH 0x1
00c3f92d  8d44241c  LEA EAX,[ESP + 0x1c]
00c3f931  894c2420  MOV dword ptr [ESP + 0x20],ECX
00c3f935  50  PUSH EAX
00c3f936  8bce  MOV ECX,ESI
00c3f938  c744242845752e31  MOV dword ptr [ESP + 0x28],0x312e7545
00c3f940  8954242c  MOV dword ptr [ESP + 0x2c],EDX
00c3f944  e8778bb9ff  CALL 0x007d84c0
00c3f949  84c0  TEST AL,AL
00c3f94b  0f8419030000  JZ 0x00c3fc6a
00c3f951  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3f954  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3f957  53  PUSH EBX
00c3f958  55  PUSH EBP
00c3f959  51  PUSH ECX
00c3f95a  6a01  PUSH 0x1
00c3f95c  52  PUSH EDX
00c3f95d  e80ee689ff  CALL 0x004ddf70
00c3f962  83c40c  ADD ESP,0xc
00c3f965  8bce  MOV ECX,ESI
00c3f967  50  PUSH EAX
00c3f968  e88380b9ff  CALL 0x007d79f0
00c3f96d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3f970  8b4748  MOV EAX,dword ptr [EDI + 0x48]
00c3f973  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3f976  51  PUSH ECX
00c3f977  50  PUSH EAX
00c3f978  52  PUSH EDX
00c3f979  e8e2e689ff  CALL 0x004de060
00c3f97e  83c40c  ADD ESP,0xc
00c3f981  8bce  MOV ECX,ESI
00c3f983  50  PUSH EAX
00c3f984  e86780b9ff  CALL 0x007d79f0
00c3f989  8b4744  MOV EAX,dword ptr [EDI + 0x44]
00c3f98c  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3f98f  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00c3f992  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3f995  51  PUSH ECX
00c3f996  50  PUSH EAX
00c3f997  52  PUSH EDX
00c3f998  e8c3e689ff  CALL 0x004de060
00c3f99d  83c40c  ADD ESP,0xc
00c3f9a0  8bce  MOV ECX,ESI
00c3f9a2  50  PUSH EAX
00c3f9a3  e84880b9ff  CALL 0x007d79f0
00c3f9a8  8b4744  MOV EAX,dword ptr [EDI + 0x44]
00c3f9ab  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3f9ae  8b4008  MOV EAX,dword ptr [EAX + 0x8]
00c3f9b1  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3f9b4  51  PUSH ECX
00c3f9b5  50  PUSH EAX
00c3f9b6  52  PUSH EDX
00c3f9b7  e8a4e689ff  CALL 0x004de060
00c3f9bc  83c40c  ADD ESP,0xc
00c3f9bf  8bce  MOV ECX,ESI
00c3f9c1  50  PUSH EAX
00c3f9c2  e82980b9ff  CALL 0x007d79f0
00c3f9c7  8b4744  MOV EAX,dword ptr [EDI + 0x44]
00c3f9ca  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3f9cd  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00c3f9d0  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3f9d3  51  PUSH ECX
00c3f9d4  50  PUSH EAX
00c3f9d5  52  PUSH EDX
00c3f9d6  e885e689ff  CALL 0x004de060
00c3f9db  83c40c  ADD ESP,0xc
00c3f9de  8bce  MOV ECX,ESI
00c3f9e0  50  PUSH EAX
00c3f9e1  e80a80b9ff  CALL 0x007d79f0
00c3f9e6  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3f9e9  8b473c  MOV EAX,dword ptr [EDI + 0x3c]
00c3f9ec  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3f9ef  51  PUSH ECX
00c3f9f0  50  PUSH EAX
00c3f9f1  52  PUSH EDX
00c3f9f2  e869e689ff  CALL 0x004de060
00c3f9f7  83c40c  ADD ESP,0xc
00c3f9fa  8bce  MOV ECX,ESI
00c3f9fc  50  PUSH EAX
00c3f9fd  e8ee7fb9ff  CALL 0x007d79f0
00c3fa02  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3fa05  8b4740  MOV EAX,dword ptr [EDI + 0x40]
00c3fa08  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3fa0b  51  PUSH ECX
00c3fa0c  50  PUSH EAX
00c3fa0d  52  PUSH EDX
00c3fa0e  e84de689ff  CALL 0x004de060
00c3fa13  83c40c  ADD ESP,0xc
00c3fa16  8bce  MOV ECX,ESI
00c3fa18  50  PUSH EAX
00c3fa19  e8d27fb9ff  CALL 0x007d79f0
00c3fa1e  8b5f10  MOV EBX,dword ptr [EDI + 0x10]
00c3fa21  2b5f0c  SUB EBX,dword ptr [EDI + 0xc]
00c3fa24  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c3fa27  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c3fa2a  50  PUSH EAX
00c3fa2b  c1fb02  SAR EBX,0x2
00c3fa2e  53  PUSH EBX
00c3fa2f  51  PUSH ECX
00c3fa30  e82be689ff  CALL 0x004de060
00c3fa35  83c40c  ADD ESP,0xc
00c3fa38  8bce  MOV ECX,ESI
00c3fa3a  50  PUSH EAX
00c3fa3b  e8b07fb9ff  CALL 0x007d79f0
00c3fa40  85db  TEST EBX,EBX
00c3fa42  c744243800000000  MOV dword ptr [ESP + 0x38],0x0
00c3fa4a  0f8eae000000  JLE 0x00c3fafe
00c3fa50  8b570c  MOV EDX,dword ptr [EDI + 0xc]
00c3fa53  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00c3fa57  8b2c82  MOV EBP,dword ptr [EDX + EAX*0x4]
00c3fa5a  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3fa5d  8b4500  MOV EAX,dword ptr [EBP]
00c3fa60  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3fa63  51  PUSH ECX
00c3fa64  50  PUSH EAX
00c3fa65  52  PUSH EDX
00c3fa66  e8f5e589ff  CALL 0x004de060
00c3fa6b  83c40c  ADD ESP,0xc
00c3fa6e  8bce  MOV ECX,ESI
00c3fa70  50  PUSH EAX
00c3fa71  e87a7fb9ff  CALL 0x007d79f0
00c3fa76  0fbe4504  MOVSX EAX,byte ptr [EBP + 0x4]
00c3fa7a  0fbe4d05  MOVSX ECX,byte ptr [EBP + 0x5]
00c3fa7e  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c3fa81  0fbe6d06  MOVSX EBP,byte ptr [EBP + 0x6]
00c3fa85  89442434  MOV dword ptr [ESP + 0x34],EAX
00c3fa89  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c3fa8c  52  PUSH EDX
00c3fa8d  db442438  FILD dword ptr [ESP + 0x38]
00c3fa91  894c2438  MOV dword ptr [ESP + 0x38],ECX
00c3fa95  51  PUSH ECX
00c3fa96  db44243c  FILD dword ptr [ESP + 0x3c]
00c3fa9a  d95c2420  FSTP float ptr [ESP + 0x20]
00c3fa9e  d91c24  FSTP float ptr [ESP]
00c3faa1  50  PUSH EAX
00c3faa2  e8e9e889ff  CALL 0x004de390
00c3faa7  83c40c  ADD ESP,0xc
00c3faaa  8bce  MOV ECX,ESI
00c3faac  50  PUSH EAX
00c3faad  e83e7fb9ff  CALL 0x007d79f0
00c3fab2  d9442418  FLD float ptr [ESP + 0x18]
00c3fab6  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3fab9  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3fabc  51  PUSH ECX
00c3fabd  51  PUSH ECX
00c3fabe  d91c24  FSTP float ptr [ESP]
00c3fac1  52  PUSH EDX
00c3fac2  e8c9e889ff  CALL 0x004de390
00c3fac7  83c40c  ADD ESP,0xc
00c3faca  8bce  MOV ECX,ESI
00c3facc  50  PUSH EAX
00c3facd  e81e7fb9ff  CALL 0x007d79f0
00c3fad2  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c3fad5  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c3fad8  50  PUSH EAX
00c3fad9  55  PUSH EBP
00c3fada  51  PUSH ECX
00c3fadb  e880e589ff  CALL 0x004de060
00c3fae0  83c40c  ADD ESP,0xc
00c3fae3  8bce  MOV ECX,ESI
00c3fae5  50  PUSH EAX
00c3fae6  e8057fb9ff  CALL 0x007d79f0
00c3faeb  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00c3faef  83c001  ADD EAX,0x1
00c3faf2  3bc3  CMP EAX,EBX
00c3faf4  89442438  MOV dword ptr [ESP + 0x38],EAX
00c3faf8  0f8c52ffffff  JL 0x00c3fa50
00c3fafe  8b5f30  MOV EBX,dword ptr [EDI + 0x30]
00c3fb01  2b5f2c  SUB EBX,dword ptr [EDI + 0x2c]
00c3fb04  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c3fb07  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c3fb0a  52  PUSH EDX
00c3fb0b  c1fb02  SAR EBX,0x2
00c3fb0e  53  PUSH EBX
00c3fb0f  50  PUSH EAX
00c3fb10  e84be589ff  CALL 0x004de060
00c3fb15  83c40c  ADD ESP,0xc
00c3fb18  8bce  MOV ECX,ESI
00c3fb1a  50  PUSH EAX
00c3fb1b  e8d07eb9ff  CALL 0x007d79f0
00c3fb20  33ed  XOR EBP,EBP
00c3fb22  85db  TEST EBX,EBX
00c3fb24  7e28  JLE 0x00c3fb4e
00c3fb26  8b4f2c  MOV ECX,dword ptr [EDI + 0x2c]
00c3fb29  8b14a9  MOV EDX,dword ptr [ECX + EBP*0x4]
00c3fb2c  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3fb2f  8b02  MOV EAX,dword ptr [EDX]
00c3fb31  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3fb34  51  PUSH ECX
00c3fb35  50  PUSH EAX
00c3fb36  52  PUSH EDX
00c3fb37  e824e589ff  CALL 0x004de060
00c3fb3c  83c40c  ADD ESP,0xc
00c3fb3f  8bce  MOV ECX,ESI
00c3fb41  50  PUSH EAX
00c3fb42  e8a97eb9ff  CALL 0x007d79f0
00c3fb47  83c501  ADD EBP,0x1
00c3fb4a  3beb  CMP EBP,EBX
00c3fb4c  7cd8  JL 0x00c3fb26
00c3fb4e  8b5f20  MOV EBX,dword ptr [EDI + 0x20]
00c3fb51  2b5f1c  SUB EBX,dword ptr [EDI + 0x1c]
00c3fb54  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c3fb57  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c3fb5a  50  PUSH EAX
00c3fb5b  c1fb02  SAR EBX,0x2
00c3fb5e  53  PUSH EBX
00c3fb5f  51  PUSH ECX
00c3fb60  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00c3fb64  e8f7e489ff  CALL 0x004de060
00c3fb69  83c40c  ADD ESP,0xc
00c3fb6c  8bce  MOV ECX,ESI
00c3fb6e  50  PUSH EAX
00c3fb6f  e87c7eb9ff  CALL 0x007d79f0
00c3fb74  33ed  XOR EBP,EBP
00c3fb76  85db  TEST EBX,EBX
00c3fb78  0f8ed8000000  JLE 0x00c3fc56
00c3fb7e  8bff  MOV EDI,EDI
00c3fb80  8b571c  MOV EDX,dword ptr [EDI + 0x1c]
00c3fb83  8b1caa  MOV EBX,dword ptr [EDX + EBP*0x4]
00c3fb86  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3fb89  8b03  MOV EAX,dword ptr [EBX]
00c3fb8b  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c3fb8e  51  PUSH ECX
00c3fb8f  50  PUSH EAX
00c3fb90  52  PUSH EDX
00c3fb91  e8cae489ff  CALL 0x004de060
00c3fb96  83c40c  ADD ESP,0xc
00c3fb99  8bce  MOV ECX,ESI
00c3fb9b  50  PUSH EAX
00c3fb9c  e84f7eb9ff  CALL 0x007d79f0
00c3fba1  83c304  ADD EBX,0x4
00c3fba4  8bcb  MOV ECX,EBX
00c3fba6  e85563ffff  CALL 0x00c35f00
00c3fbab  89442438  MOV dword ptr [ESP + 0x38],EAX
00c3fbaf  8b4308  MOV EAX,dword ptr [EBX + 0x8]
00c3fbb2  8b08  MOV ECX,dword ptr [EAX]
00c3fbb4  894c2434  MOV dword ptr [ESP + 0x34],ECX
00c3fbb8  8bcb  MOV ECX,EBX
00c3fbba  e85164ffff  CALL 0x00c36010
00c3fbbf  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00c3fbc3  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00c3fbc6  8b18  MOV EBX,dword ptr [EAX]
00c3fbc8  8b02  MOV EAX,dword ptr [EDX]
00c3fbca  89442438  MOV dword ptr [ESP + 0x38],EAX
00c3fbce  e83d64ffff  CALL 0x00c36010
00c3fbd3  8b08  MOV ECX,dword ptr [EAX]
00c3fbd5  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c3fbd8  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00c3fbdc  52  PUSH EDX
00c3fbdd  894c2440  MOV dword ptr [ESP + 0x40],ECX
00c3fbe1  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c3fbe4  50  PUSH EAX
00c3fbe5  51  PUSH ECX
00c3fbe6  e875e489ff  CALL 0x004de060
00c3fbeb  83c40c  ADD ESP,0xc
00c3fbee  8bce  MOV ECX,ESI
00c3fbf0  50  PUSH EAX
00c3fbf1  e8fa7db9ff  CALL 0x007d79f0
00c3fbf6  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c3fbf9  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00c3fbfd  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c3fc00  52  PUSH EDX
00c3fc01  50  PUSH EAX
00c3fc02  51  PUSH ECX
00c3fc03  e858e489ff  CALL 0x004de060
00c3fc08  83c40c  ADD ESP,0xc
00c3fc0b  8bce  MOV ECX,ESI
00c3fc0d  50  PUSH EAX
00c3fc0e  e8dd7db9ff  CALL 0x007d79f0
00c3fc13  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c3fc16  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c3fc19  52  PUSH EDX
00c3fc1a  53  PUSH EBX
00c3fc1b  50  PUSH EAX
00c3fc1c  e83fe489ff  CALL 0x004de060
00c3fc21  83c40c  ADD ESP,0xc
00c3fc24  8bce  MOV ECX,ESI
00c3fc26  50  PUSH EAX
00c3fc27  e8c47db9ff  CALL 0x007d79f0
00c3fc2c  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c3fc2f  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
00c3fc33  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c3fc36  51  PUSH ECX
00c3fc37  52  PUSH EDX
00c3fc38  50  PUSH EAX
00c3fc39  e822e489ff  CALL 0x004de060
00c3fc3e  83c40c  ADD ESP,0xc
00c3fc41  8bce  MOV ECX,ESI
00c3fc43  50  PUSH EAX
00c3fc44  e8a77db9ff  CALL 0x007d79f0
00c3fc49  83c501  ADD EBP,0x1
00c3fc4c  3b6c2410  CMP EBP,dword ptr [ESP + 0x10]
00c3fc50  0f8c2affffff  JL 0x00c3fb80
00c3fc56  8bce  MOV ECX,ESI
00c3fc58  e8137eb9ff  CALL 0x007d7a70
00c3fc5d  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c3fc60  5d  POP EBP
00c3fc61  5b  POP EBX
00c3fc62  5f  POP EDI
00c3fc63  5e  POP ESI
00c3fc64  83c420  ADD ESP,0x20
00c3fc67  c21000  RET 0x10
00c3fc6a  5f  POP EDI
00c3fc6b  32c0  XOR AL,AL
00c3fc6d  5e  POP ESI
00c3fc6e  83c420  ADD ESP,0x20
00c3fc71  c21000  RET 0x10
Owned instructions=316 owned bytes=868 gap/nonowned bytes=0

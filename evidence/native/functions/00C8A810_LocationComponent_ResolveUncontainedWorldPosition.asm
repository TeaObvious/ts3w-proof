# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined LocationComponent_ResolveUncontainedWorldPosition(void * this, float * param_1, void * param_2, uint * param_3)
Owned ranges: [[00c8a810, 00c8abd3]]

00c8a810  55  PUSH EBP
00c8a811  8bec  MOV EBP,ESP
00c8a813  83e4f0  AND ESP,0xfffffff0
00c8a816  83ec64  SUB ESP,0x64
00c8a819  53  PUSH EBX
00c8a81a  56  PUSH ESI
00c8a81b  8bf1  MOV ESI,ECX
00c8a81d  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c8a820  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c8a823  8bd0  MOV EDX,EAX
00c8a825  0bd1  OR EDX,ECX
00c8a827  57  PUSH EDI
00c8a828  8b7d10  MOV EDI,dword ptr [EBP + 0x10]
00c8a82b  7473  JZ 0x00c8a8a0
00c8a82d  33db  XOR EBX,EBX
00c8a82f  53  PUSH EBX
00c8a830  51  PUSH ECX
00c8a831  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00c8a834  50  PUSH EAX
00c8a835  e8d67ffdff  CALL 0x00c62810
00c8a83a  3bc3  CMP EAX,EBX
00c8a83c  7432  JZ 0x00c8a870
00c8a83e  385874  CMP byte ptr [EAX + 0x74],BL
00c8a841  742d  JZ 0x00c8a870
00c8a843  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00c8a846  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
00c8a849  0f29442440  MOVAPS xmmword ptr [ESP + 0x40],XMM0
00c8a84e  d9442448  FLD float ptr [ESP + 0x48]
00c8a852  83ec08  SUB ESP,0x8
00c8a855  d95c2404  FSTP float ptr [ESP + 0x4]
00c8a859  0f29442438  MOVAPS xmmword ptr [ESP + 0x38],XMM0
00c8a85e  d9442438  FLD float ptr [ESP + 0x38]
00c8a862  8bc8  MOV ECX,EAX
00c8a864  d91c24  FSTP float ptr [ESP]
00c8a867  e874ebafff  CALL 0x007893e0
00c8a86c  84c0  TEST AL,AL
00c8a86e  7530  JNZ 0x00c8a8a0
00c8a870  830f04  OR dword ptr [EDI],0x4
00c8a873  0f57c0  XORPS XMM0,XMM0
00c8a876  81662c7fcfffff  AND dword ptr [ESI + 0x2c],0xffffcf7f
00c8a87d  895e08  MOV dword ptr [ESI + 0x8],EBX
00c8a880  895e0c  MOV dword ptr [ESI + 0xc],EBX
00c8a883  f30f114610  MOVSS dword ptr [ESI + 0x10],XMM0
00c8a888  f30f114614  MOVSS dword ptr [ESI + 0x14],XMM0
00c8a88d  f30f114624  MOVSS dword ptr [ESI + 0x24],XMM0
00c8a892  c74618ffffff7f  MOV dword ptr [ESI + 0x18],0x7fffffff
00c8a899  c74620ffffffff  MOV dword ptr [ESI + 0x20],0xffffffff
00c8a8a0  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00c8a8a3  0f2802  MOVAPS XMM0,xmmword ptr [EDX]
00c8a8a6  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00c8a8a9  0f29442440  MOVAPS xmmword ptr [ESP + 0x40],XMM0
00c8a8ae  d9442448  FLD float ptr [ESP + 0x48]
00c8a8b2  83ec08  SUB ESP,0x8
00c8a8b5  d95c2404  FSTP float ptr [ESP + 0x4]
00c8a8b9  0f29442438  MOVAPS xmmword ptr [ESP + 0x38],XMM0
00c8a8be  d9442438  FLD float ptr [ESP + 0x38]
00c8a8c2  d91c24  FSTP float ptr [ESP]
00c8a8c5  e806dffdff  CALL 0x00c687d0
00c8a8ca  8bd8  MOV EBX,EAX
00c8a8cc  33c0  XOR EAX,EAX
00c8a8ce  3bd8  CMP EBX,EAX
00c8a8d0  895c2420  MOV dword ptr [ESP + 0x20],EBX
00c8a8d4  0f84b9020000  JZ 0x00c8ab93
00c8a8da  384374  CMP byte ptr [EBX + 0x74],AL
00c8a8dd  0f84e8020000  JZ 0x00c8abcb
00c8a8e3  53  PUSH EBX
00c8a8e4  8bce  MOV ECX,ESI
00c8a8e6  e8d5ecffff  CALL 0x00c895c0
00c8a8eb  8b4348  MOV EAX,dword ptr [EBX + 0x48]
00c8a8ee  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c8a8f1  3bd0  CMP EDX,EAX
00c8a8f3  8b4b4c  MOV ECX,dword ptr [EBX + 0x4c]
00c8a8f6  7507  JNZ 0x00c8a8ff
00c8a8f8  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00c8a8fb  3bd1  CMP EDX,ECX
00c8a8fd  7409  JZ 0x00c8a908
00c8a8ff  894608  MOV dword ptr [ESI + 0x8],EAX
00c8a902  894e0c  MOV dword ptr [ESI + 0xc],ECX
00c8a905  830f04  OR dword ptr [EDI],0x4
00c8a908  8b462c  MOV EAX,dword ptr [ESI + 0x2c]
00c8a90b  a810  TEST AL,0x10
00c8a90d  7507  JNZ 0x00c8a916
00c8a90f  c1e807  SHR EAX,0x7
00c8a912  a801  TEST AL,0x1
00c8a914  7552  JNZ 0x00c8a968
00c8a916  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c8a919  0f57c0  XORPS XMM0,XMM0
00c8a91c  8d442414  LEA EAX,[ESP + 0x14]
00c8a920  50  PUSH EAX
00c8a921  51  PUSH ECX
00c8a922  53  PUSH EBX
00c8a923  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00c8a929  e872e0e7ff  CALL 0x00b089a0
00c8a92e  83c40c  ADD ESP,0xc
00c8a931  84c0  TEST AL,AL
00c8a933  7433  JZ 0x00c8a968
00c8a935  f30f10442414  MOVSS XMM0,dword ptr [ESP + 0x14]
00c8a93b  f30f590550bc0701  MULSS XMM0,dword ptr [0x0107bc50]
00c8a943  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00c8a949  d944241c  FLD float ptr [ESP + 0x1c]
00c8a94d  db5c2418  FISTP dword ptr [ESP + 0x18]
00c8a951  f30f2a442418  CVTSI2SS XMM0,dword ptr [ESP + 0x18]
00c8a957  f30f59054cbc0701  MULSS XMM0,dword ptr [0x0107bc4c]
00c8a95f  83662cef  AND dword ptr [ESI + 0x2c],0xffffffef
00c8a963  f30f114628  MOVSS dword ptr [ESI + 0x28],XMM0
00c8a968  8b462c  MOV EAX,dword ptr [ESI + 0x2c]
00c8a96b  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00c8a973  8bd0  MOV EDX,EAX
00c8a975  c1ea07  SHR EDX,0x7
00c8a978  f6c201  TEST DL,0x1
00c8a97b  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00c8a981  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00c8a987  c744242c00000000  MOV dword ptr [ESP + 0x2c],0x0
00c8a98f  7443  JZ 0x00c8a9d4
00c8a991  a900010000  TEST EAX,0x100
00c8a996  f30f104610  MOVSS XMM0,dword ptr [ESI + 0x10]
00c8a99b  8b4e18  MOV ECX,dword ptr [ESI + 0x18]
00c8a99e  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00c8a9a4  f30f104614  MOVSS XMM0,dword ptr [ESI + 0x14]
00c8a9a9  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00c8a9af  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00c8a9b3  740a  JZ 0x00c8a9bf
00c8a9b5  830f01  OR dword ptr [EDI],0x1
00c8a9b8  81662cfffeffff  AND dword ptr [ESI + 0x2c],0xfffffeff
00c8a9bf  f7462c00020000  TEST dword ptr [ESI + 0x2c],0x200
00c8a9c6  742d  JZ 0x00c8a9f5
00c8a9c8  830f08  OR dword ptr [EDI],0x8
00c8a9cb  81662cfffdffff  AND dword ptr [ESI + 0x2c],0xfffffdff
00c8a9d2  eb21  JMP 0x00c8a9f5
00c8a9d4  d94628  FLD float ptr [ESI + 0x28]
00c8a9d7  8d5624  LEA EDX,[ESI + 0x24]
00c8a9da  52  PUSH EDX
00c8a9db  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c8a9de  8d442428  LEA EAX,[ESP + 0x28]
00c8a9e2  50  PUSH EAX
00c8a9e3  51  PUSH ECX
00c8a9e4  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00c8a9e7  d91c24  FSTP float ptr [ESP]
00c8a9ea  51  PUSH ECX
00c8a9eb  53  PUSH EBX
00c8a9ec  52  PUSH EDX
00c8a9ed  e8fe61e8ff  CALL 0x00b10bf0
00c8a9f2  83c418  ADD ESP,0x18
00c8a9f5  8b562c  MOV EDX,dword ptr [ESI + 0x2c]
00c8a9f8  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00c8a9fe  8bca  MOV ECX,EDX
00c8aa00  c1e905  SHR ECX,0x5
00c8aa03  80e101  AND CL,0x1
00c8aa06  0f2e4610  UCOMISS XMM0,dword ptr [ESI + 0x10]
00c8aa0a  9f  LAHF
00c8aa0b  f6c444  TEST AH,0x44
00c8aa0e  884c2412  MOV byte ptr [ESP + 0x12],CL
00c8aa12  7a14  JP 0x00c8aa28
00c8aa14  f30f10442428  MOVSS XMM0,dword ptr [ESP + 0x28]
00c8aa1a  0f2e4614  UCOMISS XMM0,dword ptr [ESI + 0x14]
00c8aa1e  9f  LAHF
00c8aa1f  f6c444  TEST AH,0x44
00c8aa22  7a04  JP 0x00c8aa28
00c8aa24  32db  XOR BL,BL
00c8aa26  eb02  JMP 0x00c8aa2a
00c8aa28  b301  MOV BL,0x1
00c8aa2a  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c8aa2e  3b4618  CMP EAX,dword ptr [ESI + 0x18]
00c8aa31  0f95c0  SETNZ AL
00c8aa34  84db  TEST BL,BL
00c8aa36  88442413  MOV byte ptr [ESP + 0x13],AL
00c8aa3a  7504  JNZ 0x00c8aa40
00c8aa3c  84c0  TEST AL,AL
00c8aa3e  744f  JZ 0x00c8aa8f
00c8aa40  f7c202000000  TEST EDX,0x2
00c8aa46  7418  JZ 0x00c8aa60
00c8aa48  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c8aa4b  51  PUSH ECX
00c8aa4c  e8af43e8ff  CALL 0x00b0ee00
00c8aa51  8a4c2416  MOV CL,byte ptr [ESP + 0x16]
00c8aa55  8a442417  MOV AL,byte ptr [ESP + 0x17]
00c8aa59  83c404  ADD ESP,0x4
00c8aa5c  83762c02  XOR dword ptr [ESI + 0x2c],0x2
00c8aa60  84db  TEST BL,BL
00c8aa62  7419  JZ 0x00c8aa7d
00c8aa64  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00c8aa6a  f30f114610  MOVSS dword ptr [ESI + 0x10],XMM0
00c8aa6f  f30f10442428  MOVSS XMM0,dword ptr [ESP + 0x28]
00c8aa75  f30f114614  MOVSS dword ptr [ESI + 0x14],XMM0
00c8aa7a  830f01  OR dword ptr [EDI],0x1
00c8aa7d  84c0  TEST AL,AL
00c8aa7f  740e  JZ 0x00c8aa8f
00c8aa81  84c9  TEST CL,CL
00c8aa83  750a  JNZ 0x00c8aa8f
00c8aa85  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00c8aa89  895618  MOV dword ptr [ESI + 0x18],EDX
00c8aa8c  830f08  OR dword ptr [EDI],0x8
00c8aa8f  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00c8aa92  8b5c2420  MOV EBX,dword ptr [ESP + 0x20]
00c8aa96  8d442440  LEA EAX,[ESP + 0x40]
00c8aa9a  50  PUSH EAX
00c8aa9b  51  PUSH ECX
00c8aa9c  8bcb  MOV ECX,EBX
00c8aa9e  e8fdc6e2ff  CALL 0x00ab71a0
00c8aaa3  0f28442440  MOVAPS XMM0,xmmword ptr [ESP + 0x40]
00c8aaa8  8b8b98020000  MOV ECX,dword ptr [EBX + 0x298]
00c8aaae  85c9  TEST ECX,ECX
00c8aab0  8b5618  MOV EDX,dword ptr [ESI + 0x18]
00c8aab3  0f29442450  MOVAPS xmmword ptr [ESP + 0x50],XMM0
00c8aab8  0f29442460  MOVAPS xmmword ptr [ESP + 0x60],XMM0
00c8aabd  f30f10442450  MOVSS XMM0,dword ptr [ESP + 0x50]
00c8aac3  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00c8aac9  f30f10442468  MOVSS XMM0,dword ptr [ESP + 0x68]
00c8aacf  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00c8aad5  89542438  MOV dword ptr [ESP + 0x38],EDX
00c8aad9  743b  JZ 0x00c8ab16
00c8aadb  807c241200  CMP byte ptr [ESP + 0x12],0x0
00c8aae0  7404  JZ 0x00c8aae6
00c8aae2  33c0  XOR EAX,EAX
00c8aae4  eb11  JMP 0x00c8aaf7
00c8aae6  6a00  PUSH 0x0
00c8aae8  6a02  PUSH 0x2
00c8aaea  8d442438  LEA EAX,[ESP + 0x38]
00c8aaee  50  PUSH EAX
00c8aaef  e8ccd7ebff  CALL 0x00b482c0
00c8aaf4  0fb7c0  MOVZX EAX,AX
00c8aaf7  0fbfc0  MOVSX EAX,AX
00c8aafa  3b4620  CMP EAX,dword ptr [ESI + 0x20]
00c8aafd  740e  JZ 0x00c8ab0d
00c8aaff  894620  MOV dword ptr [ESI + 0x20],EAX
00c8ab02  830f10  OR dword ptr [EDI],0x10
00c8ab05  53  PUSH EBX
00c8ab06  8bce  MOV ECX,ESI
00c8ab08  e883f3ffff  CALL 0x00c89e90
00c8ab0d  6a00  PUSH 0x0
00c8ab0f  8bce  MOV ECX,ESI
00c8ab11  e81af9ffff  CALL 0x00c8a430
00c8ab16  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c8ab19  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c8ab1c  51  PUSH ECX
00c8ab1d  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00c8ab20  52  PUSH EDX
00c8ab21  e8ea80fdff  CALL 0x00c62c10
00c8ab26  84c0  TEST AL,AL
00c8ab28  7509  JNZ 0x00c8ab33
00c8ab2a  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00c8ab2d  80784400  CMP byte ptr [EAX + 0x44],0x0
00c8ab31  7416  JZ 0x00c8ab49
00c8ab33  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c8ab36  8b412c  MOV EAX,dword ptr [ECX + 0x2c]
00c8ab39  8505fca01e01  TEST dword ptr [0x011ea0fc],EAX
00c8ab3f  751e  JNZ 0x00c8ab5f
00c8ab41  8505909e1e01  TEST dword ptr [0x011e9e90],EAX
00c8ab47  7516  JNZ 0x00c8ab5f
00c8ab49  807e3600  CMP byte ptr [ESI + 0x36],0x0
00c8ab4d  747c  JZ 0x00c8abcb
00c8ab4f  c6463600  MOV byte ptr [ESI + 0x36],0x0
00c8ab53  830f20  OR dword ptr [EDI],0x20
00c8ab56  5f  POP EDI
00c8ab57  5e  POP ESI
00c8ab58  5b  POP EBX
00c8ab59  8be5  MOV ESP,EBP
00c8ab5b  5d  POP EBP
00c8ab5c  c20c00  RET 0xc
00c8ab5f  8b8b90020000  MOV ECX,dword ptr [EBX + 0x290]
00c8ab65  85c9  TEST ECX,ECX
00c8ab67  7462  JZ 0x00c8abcb
00c8ab69  837e20ff  CMP dword ptr [ESI + 0x20],-0x1
00c8ab6d  750e  JNZ 0x00c8ab7d
00c8ab6f  8d542430  LEA EDX,[ESP + 0x30]
00c8ab73  52  PUSH EDX
00c8ab74  e82724e0ff  CALL 0x00a8cfa0
00c8ab79  84c0  TEST AL,AL
00c8ab7b  7402  JZ 0x00c8ab7f
00c8ab7d  b001  MOV AL,0x1
00c8ab7f  3a4636  CMP AL,byte ptr [ESI + 0x36]
00c8ab82  7447  JZ 0x00c8abcb
00c8ab84  884636  MOV byte ptr [ESI + 0x36],AL
00c8ab87  830f20  OR dword ptr [EDI],0x20
00c8ab8a  5f  POP EDI
00c8ab8b  5e  POP ESI
00c8ab8c  5b  POP EBX
00c8ab8d  8be5  MOV ESP,EBP
00c8ab8f  5d  POP EBP
00c8ab90  c20c00  RET 0xc
00c8ab93  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c8ab96  0b4e0c  OR ECX,dword ptr [ESI + 0xc]
00c8ab99  742d  JZ 0x00c8abc8
00c8ab9b  0f57c0  XORPS XMM0,XMM0
00c8ab9e  81662c7fcfffff  AND dword ptr [ESI + 0x2c],0xffffcf7f
00c8aba5  894608  MOV dword ptr [ESI + 0x8],EAX
00c8aba8  89460c  MOV dword ptr [ESI + 0xc],EAX
00c8abab  f30f114610  MOVSS dword ptr [ESI + 0x10],XMM0
00c8abb0  f30f114614  MOVSS dword ptr [ESI + 0x14],XMM0
00c8abb5  f30f114624  MOVSS dword ptr [ESI + 0x24],XMM0
00c8abba  c74618ffffff7f  MOV dword ptr [ESI + 0x18],0x7fffffff
00c8abc1  c74620ffffffff  MOV dword ptr [ESI + 0x20],0xffffffff
00c8abc8  830f04  OR dword ptr [EDI],0x4
00c8abcb  5f  POP EDI
00c8abcc  5e  POP ESI
00c8abcd  5b  POP EBX
00c8abce  8be5  MOV ESP,EBP
00c8abd0  5d  POP EBP
00c8abd1  c20c00  RET 0xc

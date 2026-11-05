# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and referenced40-entry switch table.
Actual Ghidra function: ScriptCore.UserToolUtils::UserToolUtils_ProductGenericImpl
Paired actual annotated Ghidra pseudocode: 00CE9890_ScriptCore_UserToolUtils_UserToolUtils_ProductGenericImpl.c
Owned ranges: [[00ce9890, 00cea3ca]]
Envelope bytes=3036

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00ce9890  81ec8c000000  SUB ESP,0x8c
00ce9896  53  PUSH EBX
00ce9897  55  PUSH EBP
00ce9898  56  PUSH ESI
00ce9899  57  PUSH EDI
00ce989a  e8f1faa7ff  CALL 0x00769390
00ce989f  33ed  XOR EBP,EBP
00ce98a1  8bd8  MOV EBX,EAX
00ce98a3  68b04e0401  PUSH 0x1044eb0
00ce98a8  8d4c2418  LEA ECX,[ESP + 0x18]
00ce98ac  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00ce98b0  896c2418  MOV dword ptr [ESP + 0x18],EBP
00ce98b4  896c241c  MOV dword ptr [ESP + 0x1c],EBP
00ce98b8  896c2420  MOV dword ptr [ESP + 0x20],EBP
00ce98bc  c7442424b8160801  MOV dword ptr [ESP + 0x24],0x10816b8
00ce98c4  e8c71c72ff  CALL 0x0040b590
00ce98c9  3bdd  CMP EBX,EBP
00ce98cb  0f843a080000  JZ 0x00cea10b
00ce98d1  8bbc24a0000000  MOV EDI,dword ptr [ESP + 0xa0]
00ce98d8  8bc7  MOV EAX,EDI
00ce98da  25000000ff  AND EAX,0xff000000
00ce98df  3d00000045  CMP EAX,0x45000000
00ce98e4  0f8521080000  JNZ 0x00cea10b
00ce98ea  8b13  MOV EDX,dword ptr [EBX]
00ce98ec  8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
00ce98f2  57  PUSH EDI
00ce98f3  8bcb  MOV ECX,EBX
00ce98f5  ffd0  CALL EAX
00ce98f7  3bc5  CMP EAX,EBP
00ce98f9  0f840c080000  JZ 0x00cea10b
00ce98ff  8b10  MOV EDX,dword ptr [EAX]
00ce9901  8bc8  MOV ECX,EAX
00ce9903  8b420c  MOV EAX,dword ptr [EDX + 0xc]
00ce9906  68073b4ab1  PUSH 0xb14a3b07
00ce990b  ffd0  CALL EAX
00ce990d  8bf0  MOV ESI,EAX
00ce990f  3bf5  CMP ESI,EBP
00ce9911  0f84f4070000  JZ 0x00cea10b
00ce9917  8b8424a4000000  MOV EAX,dword ptr [ESP + 0xa4]
00ce991e  83f827  CMP EAX,0x27
00ce9921  0f87e4070000  JA 0x00cea10b
00ce9927  ff2485cca3ce00  JMP dword ptr [EAX*0x4 + 0xcea3cc]
00ce992e  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ce9931  8b8424ac000000  MOV EAX,dword ptr [ESP + 0xac]
00ce9938  8908  MOV dword ptr [EAX],ECX
00ce993a  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00ce993d  8b8c24b0000000  MOV ECX,dword ptr [ESP + 0xb0]
00ce9944  895004  MOV dword ptr [EAX + 0x4],EDX
00ce9947  8b4614  MOV EAX,dword ptr [ESI + 0x14]
00ce994a  8901  MOV dword ptr [ECX],EAX
00ce994c  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ce994f  8b8424b4000000  MOV EAX,dword ptr [ESP + 0xb4]
00ce9956  8910  MOV dword ptr [EAX],EDX
00ce9958  e9ae070000  JMP 0x00cea10b
00ce995d  8d4c2414  LEA ECX,[ESP + 0x14]
00ce9961  51  PUSH ECX
00ce9962  8bce  MOV ECX,ESI
00ce9964  e8079afaff  CALL 0x00c93370
00ce9969  e99d070000  JMP 0x00cea10b
00ce996e  8d542414  LEA EDX,[ESP + 0x14]
00ce9972  52  PUSH EDX
00ce9973  8bce  MOV ECX,ESI
00ce9975  e8569afaff  CALL 0x00c933d0
00ce997a  e98c070000  JMP 0x00cea10b
00ce997f  0fb64664  MOVZX EAX,byte ptr [ESI + 0x64]
00ce9983  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00ce998a  8901  MOV dword ptr [ECX],EAX
00ce998c  e97a070000  JMP 0x00cea10b
00ce9991  8b13  MOV EDX,dword ptr [EBX]
00ce9993  8b82d8000000  MOV EAX,dword ptr [EDX + 0xd8]
00ce9999  57  PUSH EDI
00ce999a  8bcb  MOV ECX,EBX
00ce999c  ffd0  CALL EAX
00ce999e  8b16  MOV EDX,dword ptr [ESI]
00ce99a0  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00ce99a3  8bce  MOV ECX,ESI
00ce99a5  ffd0  CALL EAX
00ce99a7  e95f070000  JMP 0x00cea10b
00ce99ac  56  PUSH ESI
00ce99ad  e8fe5c0000  CALL 0x00cef6b0
00ce99b2  8b8c24bc000000  MOV ECX,dword ptr [ESP + 0xbc]
00ce99b9  d919  FSTP float ptr [ECX]
00ce99bb  83c404  ADD ESP,0x4
00ce99be  e948070000  JMP 0x00cea10b
00ce99c3  d94670  FLD float ptr [ESI + 0x70]
00ce99c6  8b9424b8000000  MOV EDX,dword ptr [ESP + 0xb8]
00ce99cd  d91a  FSTP float ptr [EDX]
00ce99cf  e937070000  JMP 0x00cea10b
00ce99d4  8b4678  MOV EAX,dword ptr [ESI + 0x78]
00ce99d7  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00ce99de  8901  MOV dword ptr [ECX],EAX
00ce99e0  e926070000  JMP 0x00cea10b
00ce99e5  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00ce99ec  33d2  XOR EDX,EDX
00ce99ee  389684000000  CMP byte ptr [ESI + 0x84],DL
00ce99f4  0f95c2  SETNZ DL
00ce99f7  8910  MOV dword ptr [EAX],EDX
00ce99f9  e90d070000  JMP 0x00cea10b
00ce99fe  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00ce9a05  33c9  XOR ECX,ECX
00ce9a07  388e85000000  CMP byte ptr [ESI + 0x85],CL
00ce9a0d  0f95c1  SETNZ CL
00ce9a10  890a  MOV dword ptr [EDX],ECX
00ce9a12  e9f4060000  JMP 0x00cea10b
00ce9a17  56  PUSH ESI
00ce9a18  e80341afff  CALL 0x007ddb20
00ce9a1d  83c404  ADD ESP,0x4
00ce9a20  3bc5  CMP EAX,EBP
00ce9a22  0f84e3060000  JZ 0x00cea10b
00ce9a28  8b80ac000000  MOV EAX,dword ptr [EAX + 0xac]
00ce9a2e  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00ce9a35  8901  MOV dword ptr [ECX],EAX
00ce9a37  e9cf060000  JMP 0x00cea10b
00ce9a3c  56  PUSH ESI
00ce9a3d  e8de40afff  CALL 0x007ddb20
00ce9a42  83c404  ADD ESP,0x4
00ce9a45  3bc5  CMP EAX,EBP
00ce9a47  0f84be060000  JZ 0x00cea10b
00ce9a4d  8b90b0000000  MOV EDX,dword ptr [EAX + 0xb0]
00ce9a53  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00ce9a5a  8910  MOV dword ptr [EAX],EDX
00ce9a5c  e9aa060000  JMP 0x00cea10b
00ce9a61  56  PUSH ESI
00ce9a62  e8b940afff  CALL 0x007ddb20
00ce9a67  83c404  ADD ESP,0x4
00ce9a6a  3bc5  CMP EAX,EBP
00ce9a6c  0f8499060000  JZ 0x00cea10b
00ce9a72  8b88d0000000  MOV ECX,dword ptr [EAX + 0xd0]
00ce9a78  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00ce9a7f  890a  MOV dword ptr [EDX],ECX
00ce9a81  e985060000  JMP 0x00cea10b
00ce9a86  56  PUSH ESI
00ce9a87  e89440afff  CALL 0x007ddb20
00ce9a8c  83c404  ADD ESP,0x4
00ce9a8f  3bc5  CMP EAX,EBP
00ce9a91  0f8474060000  JZ 0x00cea10b
00ce9a97  8b90b8000000  MOV EDX,dword ptr [EAX + 0xb8]
00ce9a9d  8b8c24ac000000  MOV ECX,dword ptr [ESP + 0xac]
00ce9aa4  8911  MOV dword ptr [ECX],EDX
00ce9aa6  8b80bc000000  MOV EAX,dword ptr [EAX + 0xbc]
00ce9aac  894104  MOV dword ptr [ECX + 0x4],EAX
00ce9aaf  e957060000  JMP 0x00cea10b
00ce9ab4  56  PUSH ESI
00ce9ab5  e86640afff  CALL 0x007ddb20
00ce9aba  83c404  ADD ESP,0x4
00ce9abd  3bc5  CMP EAX,EBP
00ce9abf  0f8446060000  JZ 0x00cea10b
00ce9ac5  8b90c0000000  MOV EDX,dword ptr [EAX + 0xc0]
00ce9acb  8b8c24ac000000  MOV ECX,dword ptr [ESP + 0xac]
00ce9ad2  8911  MOV dword ptr [ECX],EDX
00ce9ad4  8b80c4000000  MOV EAX,dword ptr [EAX + 0xc4]
00ce9ada  894104  MOV dword ptr [ECX + 0x4],EAX
00ce9add  e929060000  JMP 0x00cea10b
00ce9ae2  56  PUSH ESI
00ce9ae3  e83840afff  CALL 0x007ddb20
00ce9ae8  83c404  ADD ESP,0x4
00ce9aeb  3bc5  CMP EAX,EBP
00ce9aed  0f8418060000  JZ 0x00cea10b
00ce9af3  8b90c8000000  MOV EDX,dword ptr [EAX + 0xc8]
00ce9af9  8b8c24ac000000  MOV ECX,dword ptr [ESP + 0xac]
00ce9b00  8911  MOV dword ptr [ECX],EDX
00ce9b02  8b80cc000000  MOV EAX,dword ptr [EAX + 0xcc]
00ce9b08  894104  MOV dword ptr [ECX + 0x4],EAX
00ce9b0b  e9fb050000  JMP 0x00cea10b
00ce9b10  56  PUSH ESI
00ce9b11  e86ac3ffff  CALL 0x00ce5e80
00ce9b16  83c404  ADD ESP,0x4
00ce9b19  3bc5  CMP EAX,EBP
00ce9b1b  7414  JZ 0x00ce9b31
00ce9b1d  8b8888000000  MOV ECX,dword ptr [EAX + 0x88]
00ce9b23  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00ce9b2a  890a  MOV dword ptr [EDX],ECX
00ce9b2c  e9da050000  JMP 0x00cea10b
00ce9b31  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00ce9b38  8928  MOV dword ptr [EAX],EBP
00ce9b3a  e9cc050000  JMP 0x00cea10b
00ce9b3f  56  PUSH ESI
00ce9b40  e83bc3ffff  CALL 0x00ce5e80
00ce9b45  83c404  ADD ESP,0x4
00ce9b48  3bc5  CMP EAX,EBP
00ce9b4a  74e5  JZ 0x00ce9b31
00ce9b4c  8b88a0000000  MOV ECX,dword ptr [EAX + 0xa0]
00ce9b52  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00ce9b59  890a  MOV dword ptr [EDX],ECX
00ce9b5b  e9ab050000  JMP 0x00cea10b
00ce9b60  8bbc24a8000000  MOV EDI,dword ptr [ESP + 0xa8]
00ce9b67  56  PUSH ESI
00ce9b68  892f  MOV dword ptr [EDI],EBP
00ce9b6a  e8b13fafff  CALL 0x007ddb20
00ce9b6f  83c404  ADD ESP,0x4
00ce9b72  3bc5  CMP EAX,EBP
00ce9b74  740e  JZ 0x00ce9b84
00ce9b76  8bc8  MOV ECX,EAX
00ce9b78  e863e8faff  CALL 0x00c983e0
00ce9b7d  8907  MOV dword ptr [EDI],EAX
00ce9b7f  e987050000  JMP 0x00cea10b
00ce9b84  56  PUSH ESI
00ce9b85  e8f6c2ffff  CALL 0x00ce5e80
00ce9b8a  83c404  ADD ESP,0x4
00ce9b8d  3bc5  CMP EAX,EBP
00ce9b8f  740e  JZ 0x00ce9b9f
00ce9b91  8bc8  MOV ECX,EAX
00ce9b93  e81805fbff  CALL 0x00c9a0b0
00ce9b98  8907  MOV dword ptr [EDI],EAX
00ce9b9a  e96c050000  JMP 0x00cea10b
00ce9b9f  56  PUSH ESI
00ce9ba0  e8db69e4ff  CALL 0x00b30580
00ce9ba5  83c404  ADD ESP,0x4
00ce9ba8  3bc5  CMP EAX,EBP
00ce9baa  740e  JZ 0x00ce9bba
00ce9bac  8bc8  MOV ECX,EAX
00ce9bae  e80daffaff  CALL 0x00c94ac0
00ce9bb3  8907  MOV dword ptr [EDI],EAX
00ce9bb5  e951050000  JMP 0x00cea10b
00ce9bba  56  PUSH ESI
00ce9bbb  e8e0c2ffff  CALL 0x00ce5ea0
00ce9bc0  83c404  ADD ESP,0x4
00ce9bc3  3bc5  CMP EAX,EBP
00ce9bc5  740e  JZ 0x00ce9bd5
00ce9bc7  8bc8  MOV ECX,EAX
00ce9bc9  e822c8faff  CALL 0x00c963f0
00ce9bce  8907  MOV dword ptr [EDI],EAX
00ce9bd0  e936050000  JMP 0x00cea10b
00ce9bd5  56  PUSH ESI
00ce9bd6  e8e5c2ffff  CALL 0x00ce5ec0
00ce9bdb  83c404  ADD ESP,0x4
00ce9bde  3bc5  CMP EAX,EBP
00ce9be0  740e  JZ 0x00ce9bf0
00ce9be2  8bc8  MOV ECX,EAX
00ce9be4  e8b7d3faff  CALL 0x00c96fa0
00ce9be9  8907  MOV dword ptr [EDI],EAX
00ce9beb  e91b050000  JMP 0x00cea10b
00ce9bf0  56  PUSH ESI
00ce9bf1  e8eac2ffff  CALL 0x00ce5ee0
00ce9bf6  83c404  ADD ESP,0x4
00ce9bf9  3bc5  CMP EAX,EBP
00ce9bfb  0f840a050000  JZ 0x00cea10b
00ce9c01  8bc8  MOV ECX,EAX
00ce9c03  e8f8a1faff  CALL 0x00c93e00
00ce9c08  8907  MOV dword ptr [EDI],EAX
00ce9c0a  e9fc040000  JMP 0x00cea10b
00ce9c0f  8bbc24a8000000  MOV EDI,dword ptr [ESP + 0xa8]
00ce9c16  56  PUSH ESI
00ce9c17  892f  MOV dword ptr [EDI],EBP
00ce9c19  e8023fafff  CALL 0x007ddb20
00ce9c1e  83c404  ADD ESP,0x4
00ce9c21  3bc5  CMP EAX,EBP
00ce9c23  741a  JZ 0x00ce9c3f
00ce9c25  8bc8  MOV ECX,EAX
00ce9c27  e884e2faff  CALL 0x00c97eb0
00ce9c2c  85c0  TEST EAX,EAX
00ce9c2e  0f86d7040000  JBE 0x00cea10b
00ce9c34  c70701000000  MOV dword ptr [EDI],0x1
00ce9c3a  e9cc040000  JMP 0x00cea10b
00ce9c3f  56  PUSH ESI
00ce9c40  e83bc2ffff  CALL 0x00ce5e80
00ce9c45  83c404  ADD ESP,0x4
00ce9c48  3bc5  CMP EAX,EBP
00ce9c4a  741a  JZ 0x00ce9c66
00ce9c4c  8bc8  MOV ECX,EAX
00ce9c4e  e87dfefaff  CALL 0x00c99ad0
00ce9c53  85c0  TEST EAX,EAX
00ce9c55  0f86b0040000  JBE 0x00cea10b
00ce9c5b  c70701000000  MOV dword ptr [EDI],0x1
00ce9c61  e9a5040000  JMP 0x00cea10b
00ce9c66  56  PUSH ESI
00ce9c67  e8d435faff  CALL 0x00c8d240
00ce9c6c  83c404  ADD ESP,0x4
00ce9c6f  3bc5  CMP EAX,EBP
00ce9c71  7416  JZ 0x00ce9c89
00ce9c73  8bc8  MOV ECX,EAX
00ce9c75  e826b8faff  CALL 0x00c954a0
00ce9c7a  85c0  TEST EAX,EAX
00ce9c7c  760b  JBE 0x00ce9c89
00ce9c7e  c70701000000  MOV dword ptr [EDI],0x1
00ce9c84  e982040000  JMP 0x00cea10b
00ce9c89  56  PUSH ESI
00ce9c8a  e8f168e4ff  CALL 0x00b30580
00ce9c8f  83c404  ADD ESP,0x4
00ce9c92  3bc5  CMP EAX,EBP
00ce9c94  7416  JZ 0x00ce9cac
00ce9c96  8bc8  MOV ECX,EAX
00ce9c98  e8f3a8faff  CALL 0x00c94590
00ce9c9d  85c0  TEST EAX,EAX
00ce9c9f  760b  JBE 0x00ce9cac
00ce9ca1  c70701000000  MOV dword ptr [EDI],0x1
00ce9ca7  e95f040000  JMP 0x00cea10b
00ce9cac  56  PUSH ESI
00ce9cad  e8eec1ffff  CALL 0x00ce5ea0
00ce9cb2  83c404  ADD ESP,0x4
00ce9cb5  3bc5  CMP EAX,EBP
00ce9cb7  7416  JZ 0x00ce9ccf
00ce9cb9  8bc8  MOV ECX,EAX
00ce9cbb  e8c0c2faff  CALL 0x00c95f80
00ce9cc0  85c0  TEST EAX,EAX
00ce9cc2  760b  JBE 0x00ce9ccf
00ce9cc4  c70701000000  MOV dword ptr [EDI],0x1
00ce9cca  e93c040000  JMP 0x00cea10b
00ce9ccf  56  PUSH ESI
00ce9cd0  e8ebc1ffff  CALL 0x00ce5ec0
00ce9cd5  83c404  ADD ESP,0x4
00ce9cd8  3bc5  CMP EAX,EBP
00ce9cda  7416  JZ 0x00ce9cf2
00ce9cdc  8bc8  MOV ECX,EAX
00ce9cde  e8edcdfaff  CALL 0x00c96ad0
00ce9ce3  85c0  TEST EAX,EAX
00ce9ce5  760b  JBE 0x00ce9cf2
00ce9ce7  c70701000000  MOV dword ptr [EDI],0x1
00ce9ced  e919040000  JMP 0x00cea10b
00ce9cf2  56  PUSH ESI
00ce9cf3  e8e8c1ffff  CALL 0x00ce5ee0
00ce9cf8  83c404  ADD ESP,0x4
00ce9cfb  3bc5  CMP EAX,EBP
00ce9cfd  0f8408040000  JZ 0x00cea10b
00ce9d03  8bc8  MOV ECX,EAX
00ce9d05  e8369cfaff  CALL 0x00c93940
00ce9d0a  85c0  TEST EAX,EAX
00ce9d0c  0f86f9030000  JBE 0x00cea10b
00ce9d12  c70701000000  MOV dword ptr [EDI],0x1
00ce9d18  e9ee030000  JMP 0x00cea10b
00ce9d1d  8bbc24a8000000  MOV EDI,dword ptr [ESP + 0xa8]
00ce9d24  8b1f  MOV EBX,dword ptr [EDI]
00ce9d26  56  PUSH ESI
00ce9d27  c707ffffffff  MOV dword ptr [EDI],0xffffffff
00ce9d2d  e8ee3dafff  CALL 0x007ddb20
00ce9d32  83c404  ADD ESP,0x4
00ce9d35  3bc5  CMP EAX,EBP
00ce9d37  740f  JZ 0x00ce9d48
00ce9d39  53  PUSH EBX
00ce9d3a  8bc8  MOV ECX,EAX
00ce9d3c  e82fe0faff  CALL 0x00c97d70
00ce9d41  8907  MOV dword ptr [EDI],EAX
00ce9d43  e9c3030000  JMP 0x00cea10b
00ce9d48  56  PUSH ESI
00ce9d49  e832c1ffff  CALL 0x00ce5e80
00ce9d4e  83c404  ADD ESP,0x4
00ce9d51  3bc5  CMP EAX,EBP
00ce9d53  740f  JZ 0x00ce9d64
00ce9d55  53  PUSH EBX
00ce9d56  8bc8  MOV ECX,EAX
00ce9d58  e87300fbff  CALL 0x00c99dd0
00ce9d5d  8907  MOV dword ptr [EDI],EAX
00ce9d5f  e9a7030000  JMP 0x00cea10b
00ce9d64  56  PUSH ESI
00ce9d65  e81668e4ff  CALL 0x00b30580
00ce9d6a  83c404  ADD ESP,0x4
00ce9d6d  3bc5  CMP EAX,EBP
00ce9d6f  740f  JZ 0x00ce9d80
00ce9d71  53  PUSH EBX
00ce9d72  8bc8  MOV ECX,EAX
00ce9d74  e807aafaff  CALL 0x00c94780
00ce9d79  8907  MOV dword ptr [EDI],EAX
00ce9d7b  e98b030000  JMP 0x00cea10b
00ce9d80  56  PUSH ESI
00ce9d81  e81ac1ffff  CALL 0x00ce5ea0
00ce9d86  83c404  ADD ESP,0x4
00ce9d89  3bc5  CMP EAX,EBP
00ce9d8b  740f  JZ 0x00ce9d9c
00ce9d8d  53  PUSH EBX
00ce9d8e  8bc8  MOV ECX,EAX
00ce9d90  e8dbc3faff  CALL 0x00c96170
00ce9d95  8907  MOV dword ptr [EDI],EAX
00ce9d97  e96f030000  JMP 0x00cea10b
00ce9d9c  56  PUSH ESI
00ce9d9d  e81ec1ffff  CALL 0x00ce5ec0
00ce9da2  83c404  ADD ESP,0x4
00ce9da5  3bc5  CMP EAX,EBP
00ce9da7  740f  JZ 0x00ce9db8
00ce9da9  53  PUSH EBX
00ce9daa  8bc8  MOV ECX,EAX
00ce9dac  e80fcffaff  CALL 0x00c96cc0
00ce9db1  8907  MOV dword ptr [EDI],EAX
00ce9db3  e953030000  JMP 0x00cea10b
00ce9db8  56  PUSH ESI
00ce9db9  e822c1ffff  CALL 0x00ce5ee0
00ce9dbe  83c404  ADD ESP,0x4
00ce9dc1  3bc5  CMP EAX,EBP
00ce9dc3  0f8442030000  JZ 0x00cea10b
00ce9dc9  53  PUSH EBX
00ce9dca  8bc8  MOV ECX,EAX
00ce9dcc  e85f9dfaff  CALL 0x00c93b30
00ce9dd1  8907  MOV dword ptr [EDI],EAX
00ce9dd3  e933030000  JMP 0x00cea10b
00ce9dd8  8bbc24a8000000  MOV EDI,dword ptr [ESP + 0xa8]
00ce9ddf  8b1f  MOV EBX,dword ptr [EDI]
00ce9de1  56  PUSH ESI
00ce9de2  c707ffffffff  MOV dword ptr [EDI],0xffffffff
00ce9de8  e8333dafff  CALL 0x007ddb20
00ce9ded  83c404  ADD ESP,0x4
00ce9df0  3bc5  CMP EAX,EBP
00ce9df2  740f  JZ 0x00ce9e03
00ce9df4  53  PUSH EBX
00ce9df5  8bc8  MOV ECX,EAX
00ce9df7  e814e0faff  CALL 0x00c97e10
00ce9dfc  8907  MOV dword ptr [EDI],EAX
00ce9dfe  e908030000  JMP 0x00cea10b
00ce9e03  56  PUSH ESI
00ce9e04  e877c0ffff  CALL 0x00ce5e80
00ce9e09  83c404  ADD ESP,0x4
00ce9e0c  3bc5  CMP EAX,EBP
00ce9e0e  740f  JZ 0x00ce9e1f
00ce9e10  53  PUSH EBX
00ce9e11  8bc8  MOV ECX,EAX
00ce9e13  e87800fbff  CALL 0x00c99e90
00ce9e18  8907  MOV dword ptr [EDI],EAX
00ce9e1a  e9ec020000  JMP 0x00cea10b
00ce9e1f  56  PUSH ESI
00ce9e20  e85b67e4ff  CALL 0x00b30580
00ce9e25  83c404  ADD ESP,0x4
00ce9e28  3bc5  CMP EAX,EBP
00ce9e2a  740f  JZ 0x00ce9e3b
00ce9e2c  53  PUSH EBX
00ce9e2d  8bc8  MOV ECX,EAX
00ce9e2f  e8fca9faff  CALL 0x00c94830
00ce9e34  8907  MOV dword ptr [EDI],EAX
00ce9e36  e9d0020000  JMP 0x00cea10b
00ce9e3b  56  PUSH ESI
00ce9e3c  e85fc0ffff  CALL 0x00ce5ea0
00ce9e41  83c404  ADD ESP,0x4
00ce9e44  3bc5  CMP EAX,EBP
00ce9e46  740f  JZ 0x00ce9e57
00ce9e48  53  PUSH EBX
00ce9e49  8bc8  MOV ECX,EAX
00ce9e4b  e8d0c3faff  CALL 0x00c96220
00ce9e50  8907  MOV dword ptr [EDI],EAX
00ce9e52  e9b4020000  JMP 0x00cea10b
00ce9e57  56  PUSH ESI
00ce9e58  e863c0ffff  CALL 0x00ce5ec0
00ce9e5d  83c404  ADD ESP,0x4
00ce9e60  3bc5  CMP EAX,EBP
00ce9e62  740f  JZ 0x00ce9e73
00ce9e64  53  PUSH EBX
00ce9e65  8bc8  MOV ECX,EAX
00ce9e67  e804cffaff  CALL 0x00c96d70
00ce9e6c  8907  MOV dword ptr [EDI],EAX
00ce9e6e  e998020000  JMP 0x00cea10b
00ce9e73  56  PUSH ESI
00ce9e74  e867c0ffff  CALL 0x00ce5ee0
00ce9e79  83c404  ADD ESP,0x4
00ce9e7c  3bc5  CMP EAX,EBP
00ce9e7e  0f8487020000  JZ 0x00cea10b
00ce9e84  53  PUSH EBX
00ce9e85  8bc8  MOV ECX,EAX
00ce9e87  e8549dfaff  CALL 0x00c93be0
00ce9e8c  8907  MOV dword ptr [EDI],EAX
00ce9e8e  e978020000  JMP 0x00cea10b
00ce9e93  8bbc24a8000000  MOV EDI,dword ptr [ESP + 0xa8]
00ce9e9a  8b1f  MOV EBX,dword ptr [EDI]
00ce9e9c  56  PUSH ESI
00ce9e9d  892f  MOV dword ptr [EDI],EBP
00ce9e9f  e87c3cafff  CALL 0x007ddb20
00ce9ea4  83c404  ADD ESP,0x4
00ce9ea7  3bc5  CMP EAX,EBP
00ce9ea9  740f  JZ 0x00ce9eba
00ce9eab  53  PUSH EBX
00ce9eac  8bc8  MOV ECX,EAX
00ce9eae  e84de0faff  CALL 0x00c97f00
00ce9eb3  8907  MOV dword ptr [EDI],EAX
00ce9eb5  e951020000  JMP 0x00cea10b
00ce9eba  56  PUSH ESI
00ce9ebb  e8c0bfffff  CALL 0x00ce5e80
00ce9ec0  83c404  ADD ESP,0x4
00ce9ec3  3bc5  CMP EAX,EBP
00ce9ec5  740f  JZ 0x00ce9ed6
00ce9ec7  53  PUSH EBX
00ce9ec8  8bc8  MOV ECX,EAX
00ce9eca  e851fcfaff  CALL 0x00c99b20
00ce9ecf  8907  MOV dword ptr [EDI],EAX
00ce9ed1  e935020000  JMP 0x00cea10b
00ce9ed6  56  PUSH ESI
00ce9ed7  e8a466e4ff  CALL 0x00b30580
00ce9edc  83c404  ADD ESP,0x4
00ce9edf  3bc5  CMP EAX,EBP
00ce9ee1  740f  JZ 0x00ce9ef2
00ce9ee3  53  PUSH EBX
00ce9ee4  8bc8  MOV ECX,EAX
00ce9ee6  e8f5a6faff  CALL 0x00c945e0
00ce9eeb  8907  MOV dword ptr [EDI],EAX
00ce9eed  e919020000  JMP 0x00cea10b
00ce9ef2  56  PUSH ESI
00ce9ef3  e8a8bfffff  CALL 0x00ce5ea0
00ce9ef8  83c404  ADD ESP,0x4
00ce9efb  3bc5  CMP EAX,EBP
00ce9efd  740f  JZ 0x00ce9f0e
00ce9eff  53  PUSH EBX
00ce9f00  8bc8  MOV ECX,EAX
00ce9f02  e8c9c0faff  CALL 0x00c95fd0
00ce9f07  8907  MOV dword ptr [EDI],EAX
00ce9f09  e9fd010000  JMP 0x00cea10b
00ce9f0e  56  PUSH ESI
00ce9f0f  e8acbfffff  CALL 0x00ce5ec0
00ce9f14  83c404  ADD ESP,0x4
00ce9f17  3bc5  CMP EAX,EBP
00ce9f19  740f  JZ 0x00ce9f2a
00ce9f1b  53  PUSH EBX
00ce9f1c  8bc8  MOV ECX,EAX
00ce9f1e  e8fdcbfaff  CALL 0x00c96b20
00ce9f23  8907  MOV dword ptr [EDI],EAX
00ce9f25  e9e1010000  JMP 0x00cea10b
00ce9f2a  56  PUSH ESI
00ce9f2b  e8b0bfffff  CALL 0x00ce5ee0
00ce9f30  83c404  ADD ESP,0x4
00ce9f33  3bc5  CMP EAX,EBP
00ce9f35  0f84d0010000  JZ 0x00cea10b
00ce9f3b  53  PUSH EBX
00ce9f3c  8bc8  MOV ECX,EAX
00ce9f3e  e84d9afaff  CALL 0x00c93990
00ce9f43  8907  MOV dword ptr [EDI],EAX
00ce9f45  e9c1010000  JMP 0x00cea10b
00ce9f4a  8bbc24a8000000  MOV EDI,dword ptr [ESP + 0xa8]
00ce9f51  8b1f  MOV EBX,dword ptr [EDI]
00ce9f53  56  PUSH ESI
00ce9f54  892f  MOV dword ptr [EDI],EBP
00ce9f56  e8c53bafff  CALL 0x007ddb20
00ce9f5b  83c404  ADD ESP,0x4
00ce9f5e  85c0  TEST EAX,EAX
00ce9f60  7407  JZ 0x00ce9f69
00ce9f62  892f  MOV dword ptr [EDI],EBP
00ce9f64  e9a2010000  JMP 0x00cea10b
00ce9f69  56  PUSH ESI
00ce9f6a  e811bfffff  CALL 0x00ce5e80
00ce9f6f  83c404  ADD ESP,0x4
00ce9f72  3bc5  CMP EAX,EBP
00ce9f74  0f8491010000  JZ 0x00cea10b
00ce9f7a  53  PUSH EBX
00ce9f7b  8bc8  MOV ECX,EAX
00ce9f7d  e84efcfaff  CALL 0x00c99bd0
00ce9f82  8907  MOV dword ptr [EDI],EAX
00ce9f84  e982010000  JMP 0x00cea10b
00ce9f89  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00ce9f90  8b08  MOV ECX,dword ptr [EAX]
00ce9f92  51  PUSH ECX
00ce9f93  83c608  ADD ESI,0x8
00ce9f96  56  PUSH ESI
00ce9f97  8928  MOV dword ptr [EAX],EBP
00ce9f99  e80263e4ff  CALL 0x00b302a0
00ce9f9e  8bc8  MOV ECX,EAX
00ce9fa0  e89b7ae4ff  CALL 0x00b31a40
00ce9fa5  e961010000  JMP 0x00cea10b
00ce9faa  8bbc24a8000000  MOV EDI,dword ptr [ESP + 0xa8]
00ce9fb1  56  PUSH ESI
00ce9fb2  892f  MOV dword ptr [EDI],EBP
00ce9fb4  e847bfffff  CALL 0x00ce5f00
00ce9fb9  83c404  ADD ESP,0x4
00ce9fbc  3bc5  CMP EAX,EBP
00ce9fbe  0f8447010000  JZ 0x00cea10b
00ce9fc4  8b8088000000  MOV EAX,dword ptr [EAX + 0x88]
00ce9fca  50  PUSH EAX
00ce9fcb  e8c08af1ff  CALL 0x00c02a90
00ce9fd0  83c404  ADD ESP,0x4
00ce9fd3  84c0  TEST AL,AL
00ce9fd5  0f8430010000  JZ 0x00cea10b
00ce9fdb  c70701000000  MOV dword ptr [EDI],0x1
00ce9fe1  e925010000  JMP 0x00cea10b
00ce9fe6  56  PUSH ESI
00ce9fe7  e8343bafff  CALL 0x007ddb20
00ce9fec  8bf8  MOV EDI,EAX
00ce9fee  83c404  ADD ESP,0x4
00ce9ff1  3bfd  CMP EDI,EBP
00ce9ff3  0f8412010000  JZ 0x00cea10b
00ce9ff9  8bac24a8000000  MOV EBP,dword ptr [ESP + 0xa8]
00cea000  c7450000000000  MOV dword ptr [EBP],0x0
00cea007  e8745e7cff  CALL 0x004afe80
00cea00c  6a00  PUSH 0x0
00cea00e  6a00  PUSH 0x0
00cea010  6a00  PUSH 0x0
00cea012  8bf0  MOV ESI,EAX
00cea014  c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
00cea01c  8b1e  MOV EBX,dword ptr [ESI]
00cea01e  6a00  PUSH 0x0
00cea020  8d4c2420  LEA ECX,[ESP + 0x20]
00cea024  e8774fa6ff  CALL 0x0074efa0
00cea029  8b530c  MOV EDX,dword ptr [EBX + 0xc]
00cea02c  50  PUSH EAX
00cea02d  81c788000000  ADD EDI,0x88
00cea033  57  PUSH EDI
00cea034  8bce  MOV ECX,ESI
00cea036  ffd2  CALL EDX
00cea038  84c0  TEST AL,AL
00cea03a  0f84b8000000  JZ 0x00cea0f8
00cea040  8d442410  LEA EAX,[ESP + 0x10]
00cea044  50  PUSH EAX
00cea045  e8e632a8ff  CALL 0x0076d330
00cea04a  83c404  ADD ESP,0x4
00cea04d  50  PUSH EAX
00cea04e  8d4c2440  LEA ECX,[ESP + 0x40]
00cea052  e81933b1ff  CALL 0x007fd370
00cea057  33ff  XOR EDI,EDI
00cea059  897c2424  MOV dword ptr [ESP + 0x24],EDI
00cea05d  897c2428  MOV dword ptr [ESP + 0x28],EDI
00cea061  897c242c  MOV dword ptr [ESP + 0x2c],EDI
00cea065  897c2430  MOV dword ptr [ESP + 0x30],EDI
00cea069  e85259c4ff  CALL 0x0092f9c0
00cea06e  50  PUSH EAX
00cea06f  8d4c2470  LEA ECX,[ESP + 0x70]
00cea073  e8c8f9c4ff  CALL 0x00939a40
00cea078  8b74243c  MOV ESI,dword ptr [ESP + 0x3c]
00cea07c  8d4c246c  LEA ECX,[ESP + 0x6c]
00cea080  51  PUSH ECX
00cea081  8bce  MOV ECX,ESI
00cea083  e858c5c4ff  CALL 0x009365e0
00cea088  8d542424  LEA EDX,[ESP + 0x24]
00cea08c  52  PUSH EDX
00cea08d  6829f6e5a6  PUSH 0xa6e5f629
00cea092  8d442468  LEA EAX,[ESP + 0x68]
00cea096  50  PUSH EAX
00cea097  8d4c2478  LEA ECX,[ESP + 0x78]
00cea09b  e810fec4ff  CALL 0x00939eb0
00cea0a0  8bc8  MOV ECX,EAX
00cea0a2  e8e9f5c4ff  CALL 0x00939690
00cea0a7  84c0  TEST AL,AL
00cea0a9  7435  JZ 0x00cea0e0
00cea0ab  8b8424ac000000  MOV EAX,dword ptr [ESP + 0xac]
00cea0b2  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00cea0b6  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00cea0ba  8908  MOV dword ptr [EAX],ECX
00cea0bc  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00cea0c0  895004  MOV dword ptr [EAX + 0x4],EDX
00cea0c3  8b8424b0000000  MOV EAX,dword ptr [ESP + 0xb0]
00cea0ca  8b9424b4000000  MOV EDX,dword ptr [ESP + 0xb4]
00cea0d1  8908  MOV dword ptr [EAX],ECX
00cea0d3  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00cea0d7  8902  MOV dword ptr [EDX],EAX
00cea0d9  c7450001000000  MOV dword ptr [EBP],0x1
00cea0e0  8d4c246c  LEA ECX,[ESP + 0x6c]
00cea0e4  e8078c89ff  CALL 0x00582cf0
00cea0e9  3bf7  CMP ESI,EDI
00cea0eb  740d  JZ 0x00cea0fa
00cea0ed  8b16  MOV EDX,dword ptr [ESI]
00cea0ef  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00cea0f2  8bce  MOV ECX,ESI
00cea0f4  ffd0  CALL EAX
00cea0f6  eb02  JMP 0x00cea0fa
00cea0f8  33ff  XOR EDI,EDI
00cea0fa  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00cea0fe  3bcf  CMP ECX,EDI
00cea100  7407  JZ 0x00cea109
00cea102  8b11  MOV EDX,dword ptr [ECX]
00cea104  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00cea107  ffd0  CALL EAX
00cea109  33ed  XOR EBP,EBP
00cea10b  6a01  PUSH 0x1
00cea10d  6a10  PUSH 0x10
00cea10f  8d44241c  LEA EAX,[ESP + 0x1c]
00cea113  50  PUSH EAX
00cea114  6a09  PUSH 0x9
00cea116  bff4a6fb00  MOV EDI,0xfba6f4
00cea11b  6a13  PUSH 0x13
00cea11d  8d4c2454  LEA ECX,[ESP + 0x54]
00cea121  897c2454  MOV dword ptr [ESP + 0x54],EDI
00cea125  66896c245c  MOV word ptr [ESP + 0x5c],BP
00cea12a  66896c245e  MOV word ptr [ESP + 0x5e],BP
00cea12f  e88cb880ff  CALL 0x004f59c0
00cea134  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00cea138  8b11  MOV EDX,dword ptr [ECX]
00cea13a  8b5250  MOV EDX,dword ptr [EDX + 0x50]
00cea13d  8d442434  LEA EAX,[ESP + 0x34]
00cea141  50  PUSH EAX
00cea142  8d442444  LEA EAX,[ESP + 0x44]
00cea146  50  PUSH EAX
00cea147  ffd2  CALL EDX
00cea149  f644244804  TEST byte ptr [ESP + 0x48],0x4
00cea14e  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00cea152  897c2440  MOV dword ptr [ESP + 0x40],EDI
00cea156  740a  JZ 0x00cea162
00cea158  55  PUSH EBP
00cea159  8d4c2444  LEA ECX,[ESP + 0x44]
00cea15d  e8feb580ff  CALL 0x004f5760
00cea162  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00cea166  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00cea16a  2bc8  SUB ECX,EAX
00cea16c  83e1fe  AND ECX,0xfffffffe
00cea16f  83f902  CMP ECX,0x2
00cea172  7e0d  JLE 0x00cea181
00cea174  3bc5  CMP EAX,EBP
00cea176  7409  JZ 0x00cea181
00cea178  50  PUSH EAX
00cea179  e862a37fff  CALL 0x004e44e0
00cea17e  83c404  ADD ESP,0x4
00cea181  5f  POP EDI
00cea182  8bc6  MOV EAX,ESI
00cea184  5e  POP ESI
00cea185  5d  POP EBP
00cea186  5b  POP EBX
00cea187  81c48c000000  ADD ESP,0x8c
00cea18d  c3  RET
00cea18e  56  PUSH ESI
00cea18f  e88c39afff  CALL 0x007ddb20
00cea194  83c404  ADD ESP,0x4
00cea197  3bc5  CMP EAX,EBP
00cea199  0f846cffffff  JZ 0x00cea10b
00cea19f  05f8010000  ADD EAX,0x1f8
00cea1a4  50  PUSH EAX
00cea1a5  8d4c2418  LEA ECX,[ESP + 0x18]
00cea1a9  e8a2ec71ff  CALL 0x00408e50
00cea1ae  e958ffffff  JMP 0x00cea10b
00cea1b3  56  PUSH ESI
00cea1b4  e84730faff  CALL 0x00c8d200
00cea1b9  83c404  ADD ESP,0x4
00cea1bc  3bc5  CMP EAX,EBP
00cea1be  7414  JZ 0x00cea1d4
00cea1c0  8b80d4000000  MOV EAX,dword ptr [EAX + 0xd4]
00cea1c6  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00cea1cd  8901  MOV dword ptr [ECX],EAX
00cea1cf  e937ffffff  JMP 0x00cea10b
00cea1d4  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00cea1db  33c0  XOR EAX,EAX
00cea1dd  8901  MOV dword ptr [ECX],EAX
00cea1df  e927ffffff  JMP 0x00cea10b
00cea1e4  8b9680000000  MOV EDX,dword ptr [ESI + 0x80]
00cea1ea  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00cea1f1  8910  MOV dword ptr [EAX],EDX
00cea1f3  e913ffffff  JMP 0x00cea10b
00cea1f8  56  PUSH ESI
00cea1f9  e82239afff  CALL 0x007ddb20
00cea1fe  83c404  ADD ESP,0x4
00cea201  3bc5  CMP EAX,EBP
00cea203  7414  JZ 0x00cea219
00cea205  8b80e8000000  MOV EAX,dword ptr [EAX + 0xe8]
00cea20b  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00cea212  8901  MOV dword ptr [ECX],EAX
00cea214  e9f2feffff  JMP 0x00cea10b
00cea219  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00cea220  b801000000  MOV EAX,0x1
00cea225  8901  MOV dword ptr [ECX],EAX
00cea227  e9dffeffff  JMP 0x00cea10b
00cea22c  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00cea233  33d2  XOR EDX,EDX
00cea235  389687000000  CMP byte ptr [ESI + 0x87],DL
00cea23b  0f95c2  SETNZ DL
00cea23e  8910  MOV dword ptr [EAX],EDX
00cea240  e9c6feffff  JMP 0x00cea10b
00cea245  56  PUSH ESI
00cea246  e8d538afff  CALL 0x007ddb20
00cea24b  83c404  ADD ESP,0x4
00cea24e  3bc5  CMP EAX,EBP
00cea250  0f84b5feffff  JZ 0x00cea10b
00cea256  8b88a4000000  MOV ECX,dword ptr [EAX + 0xa4]
00cea25c  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00cea263  890a  MOV dword ptr [EDX],ECX
00cea265  e9a1feffff  JMP 0x00cea10b
00cea26a  56  PUSH ESI
00cea26b  32db  XOR BL,BL
00cea26d  e8ae38afff  CALL 0x007ddb20
00cea272  83c404  ADD ESP,0x4
00cea275  3bc5  CMP EAX,EBP
00cea277  740c  JZ 0x00cea285
00cea279  8b989c000000  MOV EBX,dword ptr [EAX + 0x9c]
00cea27f  c1eb02  SHR EBX,0x2
00cea282  80e301  AND BL,0x1
00cea285  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00cea28c  33c0  XOR EAX,EAX
00cea28e  84db  TEST BL,BL
00cea290  0f95c0  SETNZ AL
00cea293  8901  MOV dword ptr [ECX],EAX
00cea295  e971feffff  JMP 0x00cea10b
00cea29a  56  PUSH ESI
00cea29b  32db  XOR BL,BL
00cea29d  e87e38afff  CALL 0x007ddb20
00cea2a2  83c404  ADD ESP,0x4
00cea2a5  3bc5  CMP EAX,EBP
00cea2a7  740c  JZ 0x00cea2b5
00cea2a9  8b989c000000  MOV EBX,dword ptr [EAX + 0x9c]
00cea2af  c1eb03  SHR EBX,0x3
00cea2b2  80e301  AND BL,0x1
00cea2b5  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00cea2bc  33d2  XOR EDX,EDX
00cea2be  84db  TEST BL,BL
00cea2c0  0f95c2  SETNZ DL
00cea2c3  8910  MOV dword ptr [EAX],EDX
00cea2c5  e941feffff  JMP 0x00cea10b
00cea2ca  56  PUSH ESI
00cea2cb  e85038afff  CALL 0x007ddb20
00cea2d0  83c404  ADD ESP,0x4
00cea2d3  3bc5  CMP EAX,EBP
00cea2d5  0f8430feffff  JZ 0x00cea10b
00cea2db  8b9078010000  MOV EDX,dword ptr [EAX + 0x178]
00cea2e1  8b8c24ac000000  MOV ECX,dword ptr [ESP + 0xac]
00cea2e8  8911  MOV dword ptr [ECX],EDX
00cea2ea  8b907c010000  MOV EDX,dword ptr [EAX + 0x17c]
00cea2f0  895104  MOV dword ptr [ECX + 0x4],EDX
00cea2f3  8b8884010000  MOV ECX,dword ptr [EAX + 0x184]
00cea2f9  8b9424b0000000  MOV EDX,dword ptr [ESP + 0xb0]
00cea300  890a  MOV dword ptr [EDX],ECX
00cea302  8b8080010000  MOV EAX,dword ptr [EAX + 0x180]
00cea308  8b8c24b4000000  MOV ECX,dword ptr [ESP + 0xb4]
00cea30f  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00cea316  8901  MOV dword ptr [ECX],EAX
00cea318  c70201000000  MOV dword ptr [EDX],0x1
00cea31e  e9e8fdffff  JMP 0x00cea10b
00cea323  56  PUSH ESI
00cea324  32db  XOR BL,BL
00cea326  e8f537afff  CALL 0x007ddb20
00cea32b  83c404  ADD ESP,0x4
00cea32e  3bc5  CMP EAX,EBP
00cea330  740c  JZ 0x00cea33e
00cea332  8b989c000000  MOV EBX,dword ptr [EAX + 0x9c]
00cea338  c1eb04  SHR EBX,0x4
00cea33b  80e301  AND BL,0x1
00cea33e  8b8c24a8000000  MOV ECX,dword ptr [ESP + 0xa8]
00cea345  33c0  XOR EAX,EAX
00cea347  84db  TEST BL,BL
00cea349  0f95c0  SETNZ AL
00cea34c  8901  MOV dword ptr [ECX],EAX
00cea34e  e9b8fdffff  JMP 0x00cea10b
00cea353  56  PUSH ESI
00cea354  32db  XOR BL,BL
00cea356  e8c537afff  CALL 0x007ddb20
00cea35b  83c404  ADD ESP,0x4
00cea35e  3bc5  CMP EAX,EBP
00cea360  740c  JZ 0x00cea36e
00cea362  8b9898000000  MOV EBX,dword ptr [EAX + 0x98]
00cea368  c1eb1a  SHR EBX,0x1a
00cea36b  80e301  AND BL,0x1
00cea36e  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00cea375  33d2  XOR EDX,EDX
00cea377  84db  TEST BL,BL
00cea379  0f95c2  SETNZ DL
00cea37c  8910  MOV dword ptr [EAX],EDX
00cea37e  e988fdffff  JMP 0x00cea10b
00cea383  56  PUSH ESI
00cea384  32db  XOR BL,BL
00cea386  e89537afff  CALL 0x007ddb20
00cea38b  83c404  ADD ESP,0x4
00cea38e  3bc5  CMP EAX,EBP
00cea390  740c  JZ 0x00cea39e
00cea392  8b989c000000  MOV EBX,dword ptr [EAX + 0x9c]
00cea398  c1eb07  SHR EBX,0x7
00cea39b  80e301  AND BL,0x1
00cea39e  8b9424a8000000  MOV EDX,dword ptr [ESP + 0xa8]
00cea3a5  33c9  XOR ECX,ECX
00cea3a7  84db  TEST BL,BL
00cea3a9  0f95c1  SETNZ CL
00cea3ac  890a  MOV dword ptr [EDX],ECX
00cea3ae  e958fdffff  JMP 0x00cea10b
00cea3b3  8bce  MOV ECX,ESI
00cea3b5  e8068cfaff  CALL 0x00c92fc0
00cea3ba  8b8c24ac000000  MOV ECX,dword ptr [ESP + 0xac]
00cea3c1  8901  MOV dword ptr [ECX],EAX
00cea3c3  895104  MOV dword ptr [ECX + 0x4],EDX
00cea3c6  e940fdffff  JMP 0x00cea10b
00cea3cb  90  .byte nonowned alignment/gap
00cea3cc  2e99ce00  .dword switch target 00ce992e
00cea3d0  5d99ce00  .dword switch target 00ce995d
00cea3d4  6e99ce00  .dword switch target 00ce996e
00cea3d8  7f99ce00  .dword switch target 00ce997f
00cea3dc  9199ce00  .dword switch target 00ce9991
00cea3e0  ac99ce00  .dword switch target 00ce99ac
00cea3e4  c399ce00  .dword switch target 00ce99c3
00cea3e8  d499ce00  .dword switch target 00ce99d4
00cea3ec  e599ce00  .dword switch target 00ce99e5
00cea3f0  fe99ce00  .dword switch target 00ce99fe
00cea3f4  179ace00  .dword switch target 00ce9a17
00cea3f8  3c9ace00  .dword switch target 00ce9a3c
00cea3fc  619ace00  .dword switch target 00ce9a61
00cea400  869ace00  .dword switch target 00ce9a86
00cea404  e29ace00  .dword switch target 00ce9ae2
00cea408  109bce00  .dword switch target 00ce9b10
00cea40c  3f9bce00  .dword switch target 00ce9b3f
00cea410  609bce00  .dword switch target 00ce9b60
00cea414  0f9cce00  .dword switch target 00ce9c0f
00cea418  1d9dce00  .dword switch target 00ce9d1d
00cea41c  d89dce00  .dword switch target 00ce9dd8
00cea420  939ece00  .dword switch target 00ce9e93
00cea424  4a9fce00  .dword switch target 00ce9f4a
00cea428  e69fce00  .dword switch target 00ce9fe6
00cea42c  8ea1ce00  .dword switch target 00cea18e
00cea430  b3a1ce00  .dword switch target 00cea1b3
00cea434  899fce00  .dword switch target 00ce9f89
00cea438  aa9fce00  .dword switch target 00ce9faa
00cea43c  e4a1ce00  .dword switch target 00cea1e4
00cea440  f8a1ce00  .dword switch target 00cea1f8
00cea444  2ca2ce00  .dword switch target 00cea22c
00cea448  45a2ce00  .dword switch target 00cea245
00cea44c  6aa2ce00  .dword switch target 00cea26a
00cea450  9aa2ce00  .dword switch target 00cea29a
00cea454  caa2ce00  .dword switch target 00cea2ca
00cea458  23a3ce00  .dword switch target 00cea323
00cea45c  b49ace00  .dword switch target 00ce9ab4
00cea460  53a3ce00  .dword switch target 00cea353
00cea464  83a3ce00  .dword switch target 00cea383
00cea468  b3a3ce00  .dword switch target 00cea3b3
Owned instructions=841 owned bytes=2875 nonowned bytes=161

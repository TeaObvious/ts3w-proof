# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: Lot_ReleaseRetainedState
Paired actual annotated Ghidra pseudocode: 00ABF290_Lot_ReleaseRetainedState.c
Owned ranges: [[00abf290, 00abf615]]
Envelope bytes=902

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00abf290  83ec1c  SUB ESP,0x1c
00abf293  53  PUSH EBX
00abf294  55  PUSH EBP
00abf295  56  PUSH ESI
00abf296  57  PUSH EDI
00abf297  8bf1  MOV ESI,ECX
00abf299  33ff  XOR EDI,EDI
00abf29b  39be64030000  CMP dword ptr [ESI + 0x364],EDI
00abf2a1  743e  JZ 0x00abf2e1
00abf2a3  b870a9ab00  MOV EAX,0xaba970
00abf2a8  33c9  XOR ECX,ECX
00abf2aa  c74424140058fe00  MOV dword ptr [ESP + 0x14],0xfe5800
00abf2b2  33d2  XOR EDX,EDX
00abf2b4  8d5c2418  LEA EBX,[ESP + 0x18]
00abf2b8  8713  XCHG dword ptr [EBX],EDX
00abf2ba  57  PUSH EDI
00abf2bb  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00abf2bf  57  PUSH EDI
00abf2c0  8d4c241c  LEA ECX,[ESP + 0x1c]
00abf2c4  c744241c1ca10201  MOV dword ptr [ESP + 0x1c],0x102a11c
00abf2cc  89742428  MOV dword ptr [ESP + 0x28],ESI
00abf2d0  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00abf2d4  e837a8d1ff  CALL 0x007d9b10
00abf2d9  c7442414802bfa00  MOV dword ptr [ESP + 0x14],0xfa2b80
00abf2e1  8b86a4000000  MOV EAX,dword ptr [ESI + 0xa4]
00abf2e7  3bc7  CMP EAX,EDI
00abf2e9  742b  JZ 0x00abf316
00abf2eb  8b8eb4000000  MOV ECX,dword ptr [ESI + 0xb4]
00abf2f1  8b96b0000000  MOV EDX,dword ptr [ESI + 0xb0]
00abf2f7  51  PUSH ECX
00abf2f8  8b8eac000000  MOV ECX,dword ptr [ESI + 0xac]
00abf2fe  52  PUSH EDX
00abf2ff  8b96a8000000  MOV EDX,dword ptr [ESI + 0xa8]
00abf305  51  PUSH ECX
00abf306  52  PUSH EDX
00abf307  50  PUSH EAX
00abf308  e84399bcff  CALL 0x00688c50
00abf30d  83c414  ADD ESP,0x14
00abf310  89bea4000000  MOV dword ptr [ESI + 0xa4],EDI
00abf316  807e7400  CMP byte ptr [ESI + 0x74],0x0
00abf31a  0f8452020000  JZ 0x00abf572
00abf320  8b8eb4020000  MOV ECX,dword ptr [ESI + 0x2b4]
00abf326  3bcf  CMP ECX,EDI
00abf328  7405  JZ 0x00abf32f
00abf32a  e881820500  CALL 0x00b175b0
00abf32f  8b8eb8020000  MOV ECX,dword ptr [ESI + 0x2b8]
00abf335  3bcf  CMP ECX,EDI
00abf337  7405  JZ 0x00abf33e
00abf339  e8824d9fff  CALL 0x004b40c0
00abf33e  8b5e14  MOV EBX,dword ptr [ESI + 0x14]
00abf341  8b6e18  MOV EBP,dword ptr [ESI + 0x18]
00abf344  3bdd  CMP EBX,EBP
00abf346  7415  JZ 0x00abf35d
00abf348  8b03  MOV EAX,dword ptr [EBX]
00abf34a  57  PUSH EDI
00abf34b  50  PUSH EAX
00abf34c  6a0c  PUSH 0xc
00abf34e  e86d63e7ff  CALL 0x009356c0
00abf353  83c304  ADD EBX,0x4
00abf356  83c40c  ADD ESP,0xc
00abf359  3bdd  CMP EBX,EBP
00abf35b  75eb  JNZ 0x00abf348
00abf35d  8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
00abf363  3bcf  CMP ECX,EDI
00abf365  740e  JZ 0x00abf375
00abf367  8b11  MOV EDX,dword ptr [ECX]
00abf369  8b02  MOV EAX,dword ptr [EDX]
00abf36b  6a01  PUSH 0x1
00abf36d  ffd0  CALL EAX
00abf36f  89bed0020000  MOV dword ptr [ESI + 0x2d0],EDI
00abf375  8b8ee8020000  MOV ECX,dword ptr [ESI + 0x2e8]
00abf37b  3bcf  CMP ECX,EDI
00abf37d  7424  JZ 0x00abf3a3
00abf37f  8d4104  LEA EAX,[ECX + 0x4]
00abf382  89bee8020000  MOV dword ptr [ESI + 0x2e8],EDI
00abf388  8bd0  MOV EDX,EAX
00abf38a  83cbff  OR EBX,0xffffffff
00abf38d  f00fc11a  XADD.LOCK dword ptr [EDX],EBX
00abf391  4b  DEC EBX
00abf392  750f  JNZ 0x00abf3a3
00abf394  ba01000000  MOV EDX,0x1
00abf399  8710  XCHG dword ptr [EAX],EDX
00abf39b  8b01  MOV EAX,dword ptr [ECX]
00abf39d  8b10  MOV EDX,dword ptr [EAX]
00abf39f  6a01  PUSH 0x1
00abf3a1  ffd2  CALL EDX
00abf3a3  8b8e18030000  MOV ECX,dword ptr [ESI + 0x318]
00abf3a9  3bcf  CMP ECX,EDI
00abf3ab  7424  JZ 0x00abf3d1
00abf3ad  8d4104  LEA EAX,[ECX + 0x4]
00abf3b0  89be18030000  MOV dword ptr [ESI + 0x318],EDI
00abf3b6  8bd0  MOV EDX,EAX
00abf3b8  83cbff  OR EBX,0xffffffff
00abf3bb  f00fc11a  XADD.LOCK dword ptr [EDX],EBX
00abf3bf  4b  DEC EBX
00abf3c0  750f  JNZ 0x00abf3d1
00abf3c2  ba01000000  MOV EDX,0x1
00abf3c7  8710  XCHG dword ptr [EAX],EDX
00abf3c9  8b01  MOV EAX,dword ptr [ECX]
00abf3cb  8b10  MOV EDX,dword ptr [EAX]
00abf3cd  6a01  PUSH 0x1
00abf3cf  ffd2  CALL EDX
00abf3d1  8b8e1c030000  MOV ECX,dword ptr [ESI + 0x31c]
00abf3d7  3bcf  CMP ECX,EDI
00abf3d9  7424  JZ 0x00abf3ff
00abf3db  8d4104  LEA EAX,[ECX + 0x4]
00abf3de  89be1c030000  MOV dword ptr [ESI + 0x31c],EDI
00abf3e4  8bd0  MOV EDX,EAX
00abf3e6  83cbff  OR EBX,0xffffffff
00abf3e9  f00fc11a  XADD.LOCK dword ptr [EDX],EBX
00abf3ed  4b  DEC EBX
00abf3ee  750f  JNZ 0x00abf3ff
00abf3f0  ba01000000  MOV EDX,0x1
00abf3f5  8710  XCHG dword ptr [EAX],EDX
00abf3f7  8b01  MOV EAX,dword ptr [ECX]
00abf3f9  8b10  MOV EDX,dword ptr [EAX]
00abf3fb  6a01  PUSH 0x1
00abf3fd  ffd2  CALL EDX
00abf3ff  8bce  MOV ECX,ESI
00abf401  e8caf2ffff  CALL 0x00abe6d0
00abf406  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00abf40c  3bcf  CMP ECX,EDI
00abf40e  7425  JZ 0x00abf435
00abf410  e8abe9fcff  CALL 0x00a8ddc0
00abf415  8b9e90020000  MOV EBX,dword ptr [ESI + 0x290]
00abf41b  3bdf  CMP EBX,EDI
00abf41d  7410  JZ 0x00abf42f
00abf41f  8bcb  MOV ECX,EBX
00abf421  e8ca1afdff  CALL 0x00a90ef0
00abf426  53  PUSH EBX
00abf427  e8b450a2ff  CALL 0x004e44e0
00abf42c  83c404  ADD ESP,0x4
00abf42f  89be90020000  MOV dword ptr [ESI + 0x290],EDI
00abf435  c686c000000000  MOV byte ptr [ESI + 0xc0],0x0
00abf43c  c686c100000000  MOV byte ptr [ESI + 0xc1],0x0
00abf443  c686c200000000  MOV byte ptr [ESI + 0xc2],0x0
00abf44a  e8117abcff  CALL 0x00686e60
00abf44f  8be8  MOV EBP,EAX
00abf451  3bef  CMP EBP,EDI
00abf453  896c2410  MOV dword ptr [ESP + 0x10],EBP
00abf457  0f8409010000  JZ 0x00abf566
00abf45d  8b9e94030000  MOV EBX,dword ptr [ESI + 0x394]
00abf463  2b9e84030000  SUB EBX,dword ptr [ESI + 0x384]
00abf469  8b8688030000  MOV EAX,dword ptr [ESI + 0x388]
00abf46f  2b868c030000  SUB EAX,dword ptr [ESI + 0x38c]
00abf475  8b8e80030000  MOV ECX,dword ptr [ESI + 0x380]
00abf47b  2b8e78030000  SUB ECX,dword ptr [ESI + 0x378]
00abf481  c1fb02  SAR EBX,0x2
00abf484  83eb01  SUB EBX,0x1
00abf487  c1e306  SHL EBX,0x6
00abf48a  c1f802  SAR EAX,0x2
00abf48d  03d8  ADD EBX,EAX
00abf48f  c1f902  SAR ECX,0x2
00abf492  03d9  ADD EBX,ECX
00abf494  0f8498000000  JZ 0x00abf532
00abf49a  8d9b00000000  LEA EBX,[EBX]
00abf4a0  8b8e7c030000  MOV ECX,dword ptr [ESI + 0x37c]
00abf4a6  8b8678030000  MOV EAX,dword ptr [ESI + 0x378]
00abf4ac  2bc1  SUB EAX,ECX
00abf4ae  8bae84030000  MOV EBP,dword ptr [ESI + 0x384]
00abf4b4  c1f802  SAR EAX,0x2
00abf4b7  03c7  ADD EAX,EDI
00abf4b9  8bc8  MOV ECX,EAX
00abf4bb  8d8100000001  LEA EAX,[ECX + 0x1000000]
00abf4c1  99  CDQ
00abf4c2  83e23f  AND EDX,0x3f
00abf4c5  03c2  ADD EAX,EDX
00abf4c7  c1f806  SAR EAX,0x6
00abf4ca  2d00000400  SUB EAX,0x40000
00abf4cf  8bd0  MOV EDX,EAX
00abf4d1  8b448500  MOV EAX,dword ptr [EBP + EAX*0x4]
00abf4d5  c1e206  SHL EDX,0x6
00abf4d8  2bca  SUB ECX,EDX
00abf4da  833c8800  CMP dword ptr [EAX + ECX*0x4],0x0
00abf4de  7441  JZ 0x00abf521
00abf4e0  8b8e7c030000  MOV ECX,dword ptr [ESI + 0x37c]
00abf4e6  8b8678030000  MOV EAX,dword ptr [ESI + 0x378]
00abf4ec  2bc1  SUB EAX,ECX
00abf4ee  c1f802  SAR EAX,0x2
00abf4f1  03c7  ADD EAX,EDI
00abf4f3  8bc8  MOV ECX,EAX
00abf4f5  8d8100000001  LEA EAX,[ECX + 0x1000000]
00abf4fb  99  CDQ
00abf4fc  83e23f  AND EDX,0x3f
00abf4ff  03c2  ADD EAX,EDX
00abf501  c1f806  SAR EAX,0x6
00abf504  2d00000400  SUB EAX,0x40000
00abf509  8bd0  MOV EDX,EAX
00abf50b  8b448500  MOV EAX,dword ptr [EBP + EAX*0x4]
00abf50f  c1e206  SHL EDX,0x6
00abf512  2bca  SUB ECX,EDX
00abf514  8b0c88  MOV ECX,dword ptr [EAX + ECX*0x4]
00abf517  51  PUSH ECX
00abf518  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00abf51c  e8cf79bcff  CALL 0x00686ef0
00abf521  83c701  ADD EDI,0x1
00abf524  3bfb  CMP EDI,EBX
00abf526  0f8274ffffff  JC 0x00abf4a0
00abf52c  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00abf530  33ff  XOR EDI,EDI
00abf532  8d8e70030000  LEA ECX,[ESI + 0x370]
00abf538  e8b34cffff  CALL 0x00ab41f0
00abf53d  8b866c030000  MOV EAX,dword ptr [ESI + 0x36c]
00abf543  3bc7  CMP EAX,EDI
00abf545  7408  JZ 0x00abf54f
00abf547  50  PUSH EAX
00abf548  8bcd  MOV ECX,EBP
00abf54a  e8a179bcff  CALL 0x00686ef0
00abf54f  8b8e6c030000  MOV ECX,dword ptr [ESI + 0x36c]
00abf555  3bcf  CMP ECX,EDI
00abf557  740d  JZ 0x00abf566
00abf559  89be6c030000  MOV dword ptr [ESI + 0x36c],EDI
00abf55f  8b11  MOV EDX,dword ptr [ECX]
00abf561  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00abf564  ffd0  CALL EAX
00abf566  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00abf56a  51  PUSH ECX
00abf56b  8bce  MOV ECX,ESI
00abf56d  e83e231b00  CALL 0x00c718b0
00abf572  8b9edc020000  MOV EBX,dword ptr [ESI + 0x2dc]
00abf578  3bdf  CMP EBX,EDI
00abf57a  c6467400  MOV byte ptr [ESI + 0x74],0x0
00abf57e  7433  JZ 0x00abf5b3
00abf580  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00abf583  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00abf586  52  PUSH EDX
00abf587  50  PUSH EAX
00abf588  8bcb  MOV ECX,EBX
00abf58a  e811100700  CALL 0x00b305a0
00abf58f  bd01000000  MOV EBP,0x1
00abf594  396b08  CMP dword ptr [EBX + 0x8],EBP
00abf597  897b0c  MOV dword ptr [EBX + 0xc],EDI
00abf59a  760c  JBE 0x00abf5a8
00abf59c  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00abf59f  51  PUSH ECX
00abf5a0  e83b4fa2ff  CALL 0x004e44e0
00abf5a5  83c404  ADD ESP,0x4
00abf5a8  53  PUSH EBX
00abf5a9  e8324fa2ff  CALL 0x004e44e0
00abf5ae  83c404  ADD ESP,0x4
00abf5b1  eb05  JMP 0x00abf5b8
00abf5b3  bd01000000  MOV EBP,0x1
00abf5b8  89bedc020000  MOV dword ptr [ESI + 0x2dc],EDI
00abf5be  8b8e28040000  MOV ECX,dword ptr [ESI + 0x428]
00abf5c4  3bcf  CMP ECX,EDI
00abf5c6  741d  JZ 0x00abf5e5
00abf5c8  89be28040000  MOV dword ptr [ESI + 0x428],EDI
00abf5ce  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00abf5d1  83c0ff  ADD EAX,-0x1
00abf5d4  3bc7  CMP EAX,EDI
00abf5d6  894104  MOV dword ptr [ECX + 0x4],EAX
00abf5d9  750a  JNZ 0x00abf5e5
00abf5db  896904  MOV dword ptr [ECX + 0x4],EBP
00abf5de  8b11  MOV EDX,dword ptr [ECX]
00abf5e0  8b02  MOV EAX,dword ptr [EDX]
00abf5e2  55  PUSH EBP
00abf5e3  ffd0  CALL EAX
00abf5e5  8b8e2c040000  MOV ECX,dword ptr [ESI + 0x42c]
00abf5eb  3bcf  CMP ECX,EDI
00abf5ed  741d  JZ 0x00abf60c
00abf5ef  89be2c040000  MOV dword ptr [ESI + 0x42c],EDI
00abf5f5  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00abf5f8  83c0ff  ADD EAX,-0x1
00abf5fb  3bc7  CMP EAX,EDI
00abf5fd  894104  MOV dword ptr [ECX + 0x4],EAX
00abf600  750a  JNZ 0x00abf60c
00abf602  896904  MOV dword ptr [ECX + 0x4],EBP
00abf605  8b11  MOV EDX,dword ptr [ECX]
00abf607  8b02  MOV EAX,dword ptr [EDX]
00abf609  55  PUSH EBP
00abf60a  ffd0  CALL EAX
00abf60c  5f  POP EDI
00abf60d  5e  POP ESI
00abf60e  5d  POP EBP
00abf60f  5b  POP EBX
00abf610  83c41c  ADD ESP,0x1c
00abf613  c20400  RET 0x4
Owned instructions=277 owned bytes=902 nonowned bytes=0

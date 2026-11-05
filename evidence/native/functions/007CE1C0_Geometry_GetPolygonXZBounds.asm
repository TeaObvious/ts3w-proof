# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Geometry_GetPolygonXZBounds(int * param_1, float * param_2)
Owned ranges: [[007ce1c0, 007ce399] [007ce3a0, 007ce414]]

007ce1c0  8b542404  MOV EDX,dword ptr [ESP + 0x4]
007ce1c4  8b02  MOV EAX,dword ptr [EDX]
007ce1c6  83ec0c  SUB ESP,0xc
007ce1c9  3b4204  CMP EAX,dword ptr [EDX + 0x4]
007ce1cc  0f843d020000  JZ 0x007ce40f
007ce1d2  d900  FLD float ptr [EAX]
007ce1d4  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
007ce1d8  d919  FSTP float ptr [ECX]
007ce1da  8b02  MOV EAX,dword ptr [EDX]
007ce1dc  d94004  FLD float ptr [EAX + 0x4]
007ce1df  53  PUSH EBX
007ce1e0  d95904  FSTP float ptr [ECX + 0x4]
007ce1e3  55  PUSH EBP
007ce1e4  d901  FLD float ptr [ECX]
007ce1e6  8d6904  LEA EBP,[ECX + 0x4]
007ce1e9  d95908  FSTP float ptr [ECX + 0x8]
007ce1ec  56  PUSH ESI
007ce1ed  d94500  FLD float ptr [EBP]
007ce1f0  57  PUSH EDI
007ce1f1  8d790c  LEA EDI,[ECX + 0xc]
007ce1f4  d91f  FSTP float ptr [EDI]
007ce1f6  8b5a04  MOV EBX,dword ptr [EDX + 0x4]
007ce1f9  2b1a  SUB EBX,dword ptr [EDX]
007ce1fb  c744241001000000  MOV dword ptr [ESP + 0x10],0x1
007ce203  c1fb03  SAR EBX,0x3
007ce206  8d43ff  LEA EAX,[EBX + -0x1]
007ce209  83f804  CMP EAX,0x4
007ce20c  895c2418  MOV dword ptr [ESP + 0x18],EBX
007ce210  0f8c7c010000  JL 0x007ce392
007ce216  8b742410  MOV ESI,dword ptr [ESP + 0x10]
007ce21a  8b02  MOV EAX,dword ptr [EDX]
007ce21c  f30f1001  MOVSS XMM0,dword ptr [ECX]
007ce220  03f6  ADD ESI,ESI
007ce222  03f6  ADD ESI,ESI
007ce224  03f6  ADD ESI,ESI
007ce226  03c6  ADD EAX,ESI
007ce228  0f2f00  COMISS XMM0,dword ptr [EAX]
007ce22b  89742414  MOV dword ptr [ESP + 0x14],ESI
007ce22f  8bd0  MOV EDX,EAX
007ce231  7702  JA 0x007ce235
007ce233  8bd1  MOV EDX,ECX
007ce235  d902  FLD float ptr [EDX]
007ce237  8d5004  LEA EDX,[EAX + 0x4]
007ce23a  d919  FSTP float ptr [ECX]
007ce23c  f30f104500  MOVSS XMM0,dword ptr [EBP]
007ce241  0f2f02  COMISS XMM0,dword ptr [EDX]
007ce244  8bf2  MOV ESI,EDX
007ce246  7702  JA 0x007ce24a
007ce248  8bf5  MOV ESI,EBP
007ce24a  d906  FLD float ptr [ESI]
007ce24c  8d5908  LEA EBX,[ECX + 0x8]
007ce24f  d95d00  FSTP float ptr [EBP]
007ce252  f30f1000  MOVSS XMM0,dword ptr [EAX]
007ce256  0f2f03  COMISS XMM0,dword ptr [EBX]
007ce259  7702  JA 0x007ce25d
007ce25b  8bc3  MOV EAX,EBX
007ce25d  d900  FLD float ptr [EAX]
007ce25f  d91b  FSTP float ptr [EBX]
007ce261  f30f1002  MOVSS XMM0,dword ptr [EDX]
007ce265  0f2f07  COMISS XMM0,dword ptr [EDI]
007ce268  7702  JA 0x007ce26c
007ce26a  8bd7  MOV EDX,EDI
007ce26c  d902  FLD float ptr [EDX]
007ce26e  8b542420  MOV EDX,dword ptr [ESP + 0x20]
007ce272  f30f1001  MOVSS XMM0,dword ptr [ECX]
007ce276  d91f  FSTP float ptr [EDI]
007ce278  8b02  MOV EAX,dword ptr [EDX]
007ce27a  8b542414  MOV EDX,dword ptr [ESP + 0x14]
007ce27e  0f2f440208  COMISS XMM0,dword ptr [EDX + EAX*0x1 + 0x8]
007ce283  8d440208  LEA EAX,[EDX + EAX*0x1 + 0x8]
007ce287  8bd0  MOV EDX,EAX
007ce289  7702  JA 0x007ce28d
007ce28b  8bd1  MOV EDX,ECX
007ce28d  d902  FLD float ptr [EDX]
007ce28f  8d5004  LEA EDX,[EAX + 0x4]
007ce292  d919  FSTP float ptr [ECX]
007ce294  f30f104500  MOVSS XMM0,dword ptr [EBP]
007ce299  0f2f02  COMISS XMM0,dword ptr [EDX]
007ce29c  8bf2  MOV ESI,EDX
007ce29e  7702  JA 0x007ce2a2
007ce2a0  8bf5  MOV ESI,EBP
007ce2a2  d906  FLD float ptr [ESI]
007ce2a4  d95d00  FSTP float ptr [EBP]
007ce2a7  f30f1000  MOVSS XMM0,dword ptr [EAX]
007ce2ab  0f2f03  COMISS XMM0,dword ptr [EBX]
007ce2ae  7702  JA 0x007ce2b2
007ce2b0  8bc3  MOV EAX,EBX
007ce2b2  d900  FLD float ptr [EAX]
007ce2b4  d91b  FSTP float ptr [EBX]
007ce2b6  f30f1002  MOVSS XMM0,dword ptr [EDX]
007ce2ba  0f2f07  COMISS XMM0,dword ptr [EDI]
007ce2bd  7702  JA 0x007ce2c1
007ce2bf  8bd7  MOV EDX,EDI
007ce2c1  d902  FLD float ptr [EDX]
007ce2c3  8b442420  MOV EAX,dword ptr [ESP + 0x20]
007ce2c7  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
007ce2cb  d91f  FSTP float ptr [EDI]
007ce2cd  8b10  MOV EDX,dword ptr [EAX]
007ce2cf  f30f1001  MOVSS XMM0,dword ptr [ECX]
007ce2d3  83c318  ADD EBX,0x18
007ce2d6  0f2f4413f8  COMISS XMM0,dword ptr [EBX + EDX*0x1 + -0x8]
007ce2db  8d4413f8  LEA EAX,[EBX + EDX*0x1 + -0x8]
007ce2df  8bd0  MOV EDX,EAX
007ce2e1  7702  JA 0x007ce2e5
007ce2e3  8bd1  MOV EDX,ECX
007ce2e5  d902  FLD float ptr [EDX]
007ce2e7  8d5004  LEA EDX,[EAX + 0x4]
007ce2ea  d919  FSTP float ptr [ECX]
007ce2ec  f30f104500  MOVSS XMM0,dword ptr [EBP]
007ce2f1  0f2f02  COMISS XMM0,dword ptr [EDX]
007ce2f4  8bf2  MOV ESI,EDX
007ce2f6  7702  JA 0x007ce2fa
007ce2f8  8bf5  MOV ESI,EBP
007ce2fa  d906  FLD float ptr [ESI]
007ce2fc  8d7108  LEA ESI,[ECX + 0x8]
007ce2ff  d95d00  FSTP float ptr [EBP]
007ce302  f30f1000  MOVSS XMM0,dword ptr [EAX]
007ce306  0f2f06  COMISS XMM0,dword ptr [ESI]
007ce309  7702  JA 0x007ce30d
007ce30b  8bc6  MOV EAX,ESI
007ce30d  d900  FLD float ptr [EAX]
007ce30f  d91e  FSTP float ptr [ESI]
007ce311  f30f1002  MOVSS XMM0,dword ptr [EDX]
007ce315  0f2f07  COMISS XMM0,dword ptr [EDI]
007ce318  7702  JA 0x007ce31c
007ce31a  8bd7  MOV EDX,EDI
007ce31c  d902  FLD float ptr [EDX]
007ce31e  8b442420  MOV EAX,dword ptr [ESP + 0x20]
007ce322  f30f1001  MOVSS XMM0,dword ptr [ECX]
007ce326  d91f  FSTP float ptr [EDI]
007ce328  8b00  MOV EAX,dword ptr [EAX]
007ce32a  03c3  ADD EAX,EBX
007ce32c  0f2f00  COMISS XMM0,dword ptr [EAX]
007ce32f  8bd0  MOV EDX,EAX
007ce331  7702  JA 0x007ce335
007ce333  8bd1  MOV EDX,ECX
007ce335  d902  FLD float ptr [EDX]
007ce337  8d5004  LEA EDX,[EAX + 0x4]
007ce33a  d919  FSTP float ptr [ECX]
007ce33c  f30f104500  MOVSS XMM0,dword ptr [EBP]
007ce341  0f2f02  COMISS XMM0,dword ptr [EDX]
007ce344  8bf2  MOV ESI,EDX
007ce346  7702  JA 0x007ce34a
007ce348  8bf5  MOV ESI,EBP
007ce34a  d906  FLD float ptr [ESI]
007ce34c  8d7108  LEA ESI,[ECX + 0x8]
007ce34f  d95d00  FSTP float ptr [EBP]
007ce352  f30f1000  MOVSS XMM0,dword ptr [EAX]
007ce356  0f2f06  COMISS XMM0,dword ptr [ESI]
007ce359  7702  JA 0x007ce35d
007ce35b  8bc6  MOV EAX,ESI
007ce35d  d900  FLD float ptr [EAX]
007ce35f  d91e  FSTP float ptr [ESI]
007ce361  f30f1002  MOVSS XMM0,dword ptr [EDX]
007ce365  0f2f07  COMISS XMM0,dword ptr [EDI]
007ce368  7702  JA 0x007ce36c
007ce36a  8bd7  MOV EDX,EDI
007ce36c  d902  FLD float ptr [EDX]
007ce36e  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007ce372  8b542418  MOV EDX,dword ptr [ESP + 0x18]
007ce376  d91f  FSTP float ptr [EDI]
007ce378  83c004  ADD EAX,0x4
007ce37b  83c2fd  ADD EDX,-0x3
007ce37e  3bc2  CMP EAX,EDX
007ce380  8b542420  MOV EDX,dword ptr [ESP + 0x20]
007ce384  89442410  MOV dword ptr [ESP + 0x10],EAX
007ce388  0f8288feffff  JC 0x007ce216
007ce38e  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
007ce392  395c2410  CMP dword ptr [ESP + 0x10],EBX
007ce396  736d  JNC 0x007ce405
007ce398  eb0a  JMP 0x007ce3a4
007ce39a  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
007ce3a0  8b542420  MOV EDX,dword ptr [ESP + 0x20]
007ce3a4  8b12  MOV EDX,dword ptr [EDX]
007ce3a6  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007ce3aa  f30f1001  MOVSS XMM0,dword ptr [ECX]
007ce3ae  0f2f04c2  COMISS XMM0,dword ptr [EDX + EAX*0x8]
007ce3b2  8d04c2  LEA EAX,[EDX + EAX*0x8]
007ce3b5  8bd0  MOV EDX,EAX
007ce3b7  7702  JA 0x007ce3bb
007ce3b9  8bd1  MOV EDX,ECX
007ce3bb  d902  FLD float ptr [EDX]
007ce3bd  8d5004  LEA EDX,[EAX + 0x4]
007ce3c0  d919  FSTP float ptr [ECX]
007ce3c2  f30f104500  MOVSS XMM0,dword ptr [EBP]
007ce3c7  0f2f02  COMISS XMM0,dword ptr [EDX]
007ce3ca  8bf2  MOV ESI,EDX
007ce3cc  7702  JA 0x007ce3d0
007ce3ce  8bf5  MOV ESI,EBP
007ce3d0  d906  FLD float ptr [ESI]
007ce3d2  8d7108  LEA ESI,[ECX + 0x8]
007ce3d5  d95d00  FSTP float ptr [EBP]
007ce3d8  f30f1000  MOVSS XMM0,dword ptr [EAX]
007ce3dc  0f2f06  COMISS XMM0,dword ptr [ESI]
007ce3df  7702  JA 0x007ce3e3
007ce3e1  8bc6  MOV EAX,ESI
007ce3e3  d900  FLD float ptr [EAX]
007ce3e5  d91e  FSTP float ptr [ESI]
007ce3e7  f30f1002  MOVSS XMM0,dword ptr [EDX]
007ce3eb  0f2f07  COMISS XMM0,dword ptr [EDI]
007ce3ee  7702  JA 0x007ce3f2
007ce3f0  8bd7  MOV EDX,EDI
007ce3f2  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007ce3f6  d902  FLD float ptr [EDX]
007ce3f8  83c001  ADD EAX,0x1
007ce3fb  d91f  FSTP float ptr [EDI]
007ce3fd  3bc3  CMP EAX,EBX
007ce3ff  89442410  MOV dword ptr [ESP + 0x10],EAX
007ce403  729b  JC 0x007ce3a0
007ce405  5f  POP EDI
007ce406  5e  POP ESI
007ce407  5d  POP EBP
007ce408  b001  MOV AL,0x1
007ce40a  5b  POP EBX
007ce40b  83c40c  ADD ESP,0xc
007ce40e  c3  RET
007ce40f  32c0  XOR AL,AL
007ce411  83c40c  ADD ESP,0xc
007ce414  c3  RET

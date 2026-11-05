# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined LotGeometry_CollectPolygonQuarterCoverage(undefined4 * param_1, float * param_2, int param_3, undefined1 param_4, undefined4 * param_5, char param_6, char param_7)
Owned ranges: [[00ad1990, 00ad1cf1]]

00ad1990  83ec40  SUB ESP,0x40
00ad1993  807c245800  CMP byte ptr [ESP + 0x58],0x0
00ad1998  7509  JNZ 0x00ad19a3
00ad199a  8b442454  MOV EAX,dword ptr [ESP + 0x54]
00ad199e  8b08  MOV ECX,dword ptr [EAX]
00ad19a0  894804  MOV dword ptr [EAX + 0x4],ECX
00ad19a3  53  PUSH EBX
00ad19a4  55  PUSH EBP
00ad19a5  0cff  OR AL,0xff
00ad19a7  807c246400  CMP byte ptr [ESP + 0x64],0x0
00ad19ac  56  PUSH ESI
00ad19ad  8b742454  MOV ESI,dword ptr [ESP + 0x54]
00ad19b1  f30f104604  MOVSS XMM0,dword ptr [ESI + 0x4]
00ad19b6  57  PUSH EDI
00ad19b7  88442468  MOV byte ptr [ESP + 0x68],AL
00ad19bb  88442469  MOV byte ptr [ESP + 0x69],AL
00ad19bf  c644246a00  MOV byte ptr [ESP + 0x6a],0x0
00ad19c4  88442410  MOV byte ptr [ESP + 0x10],AL
00ad19c8  88442411  MOV byte ptr [ESP + 0x11],AL
00ad19cc  c644241200  MOV byte ptr [ESP + 0x12],0x0
00ad19d1  0f84e3000000  JZ 0x00ad1aba
00ad19d7  f30f5805a86b0601  ADDSS XMM0,dword ptr [0x01066ba8]
00ad19df  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00ad19e5  d944241c  FLD float ptr [ESP + 0x1c]
00ad19e9  db54246c  FIST dword ptr [ESP + 0x6c]
00ad19ed  db44246c  FILD dword ptr [ESP + 0x6c]
00ad19f1  dee9  FSUBP
00ad19f3  d95c2414  FSTP float ptr [ESP + 0x14]
00ad19f7  817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00ad19ff  8b44246c  MOV EAX,dword ptr [ESP + 0x6c]
00ad1a03  83d0ff  ADC EAX,-0x1
00ad1a06  f30f1006  MOVSS XMM0,dword ptr [ESI]
00ad1a0a  f30f5805a86b0601  ADDSS XMM0,dword ptr [0x01066ba8]
00ad1a12  8bc8  MOV ECX,EAX
00ad1a14  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad1a1a  d9442420  FLD float ptr [ESP + 0x20]
00ad1a1e  db54241c  FIST dword ptr [ESP + 0x1c]
00ad1a22  db44241c  FILD dword ptr [ESP + 0x1c]
00ad1a26  dee9  FSUBP
00ad1a28  d95c2418  FSTP float ptr [ESP + 0x18]
00ad1a2c  817c241801000080  CMP dword ptr [ESP + 0x18],0x80000001
00ad1a34  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ad1a38  83d0ff  ADC EAX,-0x1
00ad1a3b  8a542460  MOV DL,byte ptr [ESP + 0x60]
00ad1a3f  f30f10460c  MOVSS XMM0,dword ptr [ESI + 0xc]
00ad1a44  f30f5c05a86b0601  SUBSS XMM0,dword ptr [0x01066ba8]
00ad1a4c  88442468  MOV byte ptr [ESP + 0x68],AL
00ad1a50  884c2469  MOV byte ptr [ESP + 0x69],CL
00ad1a54  8854246a  MOV byte ptr [ESP + 0x6a],DL
00ad1a58  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad1a5e  d9442420  FLD float ptr [ESP + 0x20]
00ad1a62  db54246c  FIST dword ptr [ESP + 0x6c]
00ad1a66  db44246c  FILD dword ptr [ESP + 0x6c]
00ad1a6a  dee1  FSUBRP
00ad1a6c  d95c2414  FSTP float ptr [ESP + 0x14]
00ad1a70  817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00ad1a78  8b44246c  MOV EAX,dword ptr [ESP + 0x6c]
00ad1a7c  83d8ff  SBB EAX,-0x1
00ad1a7f  f30f104608  MOVSS XMM0,dword ptr [ESI + 0x8]
00ad1a84  f30f5c05a86b0601  SUBSS XMM0,dword ptr [0x01066ba8]
00ad1a8c  8bc8  MOV ECX,EAX
00ad1a8e  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad1a94  d9442420  FLD float ptr [ESP + 0x20]
00ad1a98  db542418  FIST dword ptr [ESP + 0x18]
00ad1a9c  db442418  FILD dword ptr [ESP + 0x18]
00ad1aa0  dee1  FSUBRP
00ad1aa2  d95c241c  FSTP float ptr [ESP + 0x1c]
00ad1aa6  817c241c01000080  CMP dword ptr [ESP + 0x1c],0x80000001
00ad1aae  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00ad1ab2  83d8ff  SBB EAX,-0x1
00ad1ab5  e9be000000  JMP 0x00ad1b78
00ad1aba  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad1ac0  d9442420  FLD float ptr [ESP + 0x20]
00ad1ac4  db54246c  FIST dword ptr [ESP + 0x6c]
00ad1ac8  db44246c  FILD dword ptr [ESP + 0x6c]
00ad1acc  dee9  FSUBP
00ad1ace  d95c2414  FSTP float ptr [ESP + 0x14]
00ad1ad2  817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00ad1ada  8b44246c  MOV EAX,dword ptr [ESP + 0x6c]
00ad1ade  83d0ff  ADC EAX,-0x1
00ad1ae1  f30f1006  MOVSS XMM0,dword ptr [ESI]
00ad1ae5  8bc8  MOV ECX,EAX
00ad1ae7  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad1aed  d9442420  FLD float ptr [ESP + 0x20]
00ad1af1  db542418  FIST dword ptr [ESP + 0x18]
00ad1af5  db442418  FILD dword ptr [ESP + 0x18]
00ad1af9  dee9  FSUBP
00ad1afb  d95c241c  FSTP float ptr [ESP + 0x1c]
00ad1aff  817c241c01000080  CMP dword ptr [ESP + 0x1c],0x80000001
00ad1b07  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00ad1b0b  83d0ff  ADC EAX,-0x1
00ad1b0e  8a542460  MOV DL,byte ptr [ESP + 0x60]
00ad1b12  f30f10460c  MOVSS XMM0,dword ptr [ESI + 0xc]
00ad1b17  88442468  MOV byte ptr [ESP + 0x68],AL
00ad1b1b  884c2469  MOV byte ptr [ESP + 0x69],CL
00ad1b1f  8854246a  MOV byte ptr [ESP + 0x6a],DL
00ad1b23  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad1b29  d9442420  FLD float ptr [ESP + 0x20]
00ad1b2d  db54246c  FIST dword ptr [ESP + 0x6c]
00ad1b31  db44246c  FILD dword ptr [ESP + 0x6c]
00ad1b35  dee1  FSUBRP
00ad1b37  d95c2414  FSTP float ptr [ESP + 0x14]
00ad1b3b  817c241401000080  CMP dword ptr [ESP + 0x14],0x80000001
00ad1b43  8b44246c  MOV EAX,dword ptr [ESP + 0x6c]
00ad1b47  83d8ff  SBB EAX,-0x1
00ad1b4a  f30f104608  MOVSS XMM0,dword ptr [ESI + 0x8]
00ad1b4f  8bc8  MOV ECX,EAX
00ad1b51  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
00ad1b57  d9442420  FLD float ptr [ESP + 0x20]
00ad1b5b  db542418  FIST dword ptr [ESP + 0x18]
00ad1b5f  db442418  FILD dword ptr [ESP + 0x18]
00ad1b63  dee1  FSUBRP
00ad1b65  d95c241c  FSTP float ptr [ESP + 0x1c]
00ad1b69  817c241c01000080  CMP dword ptr [ESP + 0x1c],0x80000001
00ad1b71  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00ad1b75  83d8ff  SBB EAX,-0x1
00ad1b78  88542412  MOV byte ptr [ESP + 0x12],DL
00ad1b7c  8a542468  MOV DL,byte ptr [ESP + 0x68]
00ad1b80  2c01  SUB AL,0x1
00ad1b82  80e901  SUB CL,0x1
00ad1b85  84d2  TEST DL,DL
00ad1b87  884c2411  MOV byte ptr [ESP + 0x11],CL
00ad1b8b  88442410  MOV byte ptr [ESP + 0x10],AL
00ad1b8f  7d06  JGE 0x00ad1b97
00ad1b91  32d2  XOR DL,DL
00ad1b93  88542468  MOV byte ptr [ESP + 0x68],DL
00ad1b97  8b7c245c  MOV EDI,dword ptr [ESP + 0x5c]
00ad1b9b  8b9f74010000  MOV EBX,dword ptr [EDI + 0x174]
00ad1ba1  0fbed2  MOVSX EDX,DL
00ad1ba4  3bd3  CMP EDX,EBX
00ad1ba6  7c09  JL 0x00ad1bb1
00ad1ba8  8ad3  MOV DL,BL
00ad1baa  80ea01  SUB DL,0x1
00ad1bad  88542468  MOV byte ptr [ESP + 0x68],DL
00ad1bb1  8a542469  MOV DL,byte ptr [ESP + 0x69]
00ad1bb5  84d2  TEST DL,DL
00ad1bb7  7d06  JGE 0x00ad1bbf
00ad1bb9  32d2  XOR DL,DL
00ad1bbb  88542469  MOV byte ptr [ESP + 0x69],DL
00ad1bbf  8baf78010000  MOV EBP,dword ptr [EDI + 0x178]
00ad1bc5  0fbed2  MOVSX EDX,DL
00ad1bc8  3bd5  CMP EDX,EBP
00ad1bca  7c0d  JL 0x00ad1bd9
00ad1bcc  8a9778010000  MOV DL,byte ptr [EDI + 0x178]
00ad1bd2  80ea01  SUB DL,0x1
00ad1bd5  88542469  MOV byte ptr [ESP + 0x69],DL
00ad1bd9  84c0  TEST AL,AL
00ad1bdb  7d06  JGE 0x00ad1be3
00ad1bdd  32c0  XOR AL,AL
00ad1bdf  88442410  MOV byte ptr [ESP + 0x10],AL
00ad1be3  0fbec0  MOVSX EAX,AL
00ad1be6  3bc3  CMP EAX,EBX
00ad1be8  7c09  JL 0x00ad1bf3
00ad1bea  8ad3  MOV DL,BL
00ad1bec  80ea01  SUB DL,0x1
00ad1bef  88542410  MOV byte ptr [ESP + 0x10],DL
00ad1bf3  84c9  TEST CL,CL
00ad1bf5  7d06  JGE 0x00ad1bfd
00ad1bf7  32c9  XOR CL,CL
00ad1bf9  884c2411  MOV byte ptr [ESP + 0x11],CL
00ad1bfd  0fbec1  MOVSX EAX,CL
00ad1c00  3bc5  CMP EAX,EBP
00ad1c02  7c0d  JL 0x00ad1c11
00ad1c04  8a8f78010000  MOV CL,byte ptr [EDI + 0x178]
00ad1c0a  80e901  SUB CL,0x1
00ad1c0d  884c2411  MOV byte ptr [ESP + 0x11],CL
00ad1c11  8d542410  LEA EDX,[ESP + 0x10]
00ad1c15  33ed  XOR EBP,EBP
00ad1c17  52  PUSH EDX
00ad1c18  8d44246c  LEA EAX,[ESP + 0x6c]
00ad1c1c  50  PUSH EAX
00ad1c1d  8d4c242c  LEA ECX,[ESP + 0x2c]
00ad1c21  896c2438  MOV dword ptr [ESP + 0x38],EBP
00ad1c25  896c243c  MOV dword ptr [ESP + 0x3c],EBP
00ad1c29  896c2440  MOV dword ptr [ESP + 0x40],EBP
00ad1c2d  c7442444406c0601  MOV dword ptr [ESP + 0x44],0x1066c40
00ad1c35  e8b64f0200  CALL 0x00af6bf0
00ad1c3a  8d4c2424  LEA ECX,[ESP + 0x24]
00ad1c3e  e84d480200  CALL 0x00af6490
00ad1c43  84c0  TEST AL,AL
00ad1c45  0f858e000000  JNZ 0x00ad1cd9
00ad1c4b  8b5c2454  MOV EBX,dword ptr [ESP + 0x54]
00ad1c4f  90  NOP
00ad1c50  8d4c2424  LEA ECX,[ESP + 0x24]
00ad1c54  e887480200  CALL 0x00af64e0
00ad1c59  8d4c2430  LEA ECX,[ESP + 0x30]
00ad1c5d  8bf8  MOV EDI,EAX
00ad1c5f  51  PUSH ECX
00ad1c60  8bcf  MOV ECX,EDI
00ad1c62  e8a910ffff  CALL 0x00ac2d10
00ad1c67  8d542440  LEA EDX,[ESP + 0x40]
00ad1c6b  52  PUSH EDX
00ad1c6c  8d442434  LEA EAX,[ESP + 0x34]
00ad1c70  50  PUSH EAX
00ad1c71  e84ac5cfff  CALL 0x007ce1c0
00ad1c76  56  PUSH ESI
00ad1c77  53  PUSH EBX
00ad1c78  8d4c2450  LEA ECX,[ESP + 0x50]
00ad1c7c  51  PUSH ECX
00ad1c7d  8d542444  LEA EDX,[ESP + 0x44]
00ad1c81  52  PUSH EDX
00ad1c82  e819cecfff  CALL 0x007ceaa0
00ad1c87  83c418  ADD ESP,0x18
00ad1c8a  84c0  TEST AL,AL
00ad1c8c  7431  JZ 0x00ad1cbf
00ad1c8e  8b4c2464  MOV ECX,dword ptr [ESP + 0x64]
00ad1c92  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00ad1c95  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00ad1c98  731e  JNC 0x00ad1cb8
00ad1c9a  3bc5  CMP EAX,EBP
00ad1c9c  8d5004  LEA EDX,[EAX + 0x4]
00ad1c9f  895104  MOV dword ptr [ECX + 0x4],EDX
00ad1ca2  741b  JZ 0x00ad1cbf
00ad1ca4  668b0f  MOV CX,word ptr [EDI]
00ad1ca7  668908  MOV word ptr [EAX],CX
00ad1caa  8a5702  MOV DL,byte ptr [EDI + 0x2]
00ad1cad  885002  MOV byte ptr [EAX + 0x2],DL
00ad1cb0  8a4f03  MOV CL,byte ptr [EDI + 0x3]
00ad1cb3  884803  MOV byte ptr [EAX + 0x3],CL
00ad1cb6  eb07  JMP 0x00ad1cbf
00ad1cb8  57  PUSH EDI
00ad1cb9  50  PUSH EAX
00ad1cba  e8f197f7ff  CALL 0x00a4b4b0
00ad1cbf  8d4c2424  LEA ECX,[ESP + 0x24]
00ad1cc3  e8d8470200  CALL 0x00af64a0
00ad1cc8  8d4c2424  LEA ECX,[ESP + 0x24]
00ad1ccc  e8bf470200  CALL 0x00af6490
00ad1cd1  84c0  TEST AL,AL
00ad1cd3  0f8477ffffff  JZ 0x00ad1c50
00ad1cd9  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00ad1cdd  5f  POP EDI
00ad1cde  5e  POP ESI
00ad1cdf  3bc5  CMP EAX,EBP
00ad1ce1  5d  POP EBP
00ad1ce2  5b  POP EBX
00ad1ce3  7409  JZ 0x00ad1cee
00ad1ce5  50  PUSH EAX
00ad1ce6  e8f527a1ff  CALL 0x004e44e0
00ad1ceb  83c404  ADD ESP,0x4
00ad1cee  83c440  ADD ESP,0x40
00ad1cf1  c3  RET

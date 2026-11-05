# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: JazzMachine_ReadResource
Paired actual annotated Ghidra pseudocode: 007FEAD0_JazzMachine_ReadResource.c
Owned ranges: [[007fead0, 007feb7c] [007feb80, 007fee4f]]
Envelope bytes=896

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fead0  51  PUSH ECX
007fead1  53  PUSH EBX
007fead2  56  PUSH ESI
007fead3  57  PUSH EDI
007fead4  8bf9  MOV EDI,ECX
007fead6  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
007feada  8b4104  MOV EAX,dword ptr [ECX + 0x4]
007feadd  85c0  TEST EAX,EAX
007feadf  7405  JZ 0x007feae6
007feae1  8b7008  MOV ESI,dword ptr [EAX + 0x8]
007feae4  eb02  JMP 0x007feae8
007feae6  33f6  XOR ESI,ESI
007feae8  8b01  MOV EAX,dword ptr [ECX]
007feaea  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
007feaed  ffd2  CALL EDX
007feaef  8bd8  MOV EBX,EAX
007feaf1  53  PUSH EBX
007feaf2  8bcf  MOV ECX,EDI
007feaf4  895c2410  MOV dword ptr [ESP + 0x10],EBX
007feaf8  e8e330f3ff  CALL 0x00731be0
007feafd  83fb0c  CMP EBX,0xc
007feb00  7309  JNC 0x007feb0b
007feb02  5f  POP EDI
007feb03  5e  POP ESI
007feb04  32c0  XOR AL,AL
007feb06  5b  POP EBX
007feb07  59  POP ECX
007feb08  c20c00  RET 0xc
007feb0b  807c241c00  CMP byte ptr [ESP + 0x1c],0x0
007feb10  740d  JZ 0x007feb1f
007feb12  c1eb02  SHR EBX,0x2
007feb15  53  PUSH EBX
007feb16  56  PUSH ESI
007feb17  e85445fdff  CALL 0x007d3070
007feb1c  83c408  ADD ESP,0x8
007feb1f  8d4604  LEA EAX,[ESI + 0x4]
007feb22  8944241c  MOV dword ptr [ESP + 0x1c],EAX
007feb26  8b00  MOV EAX,dword ptr [EAX]
007feb28  3d00020000  CMP EAX,0x200
007feb2d  72d3  JC 0x007feb02
007feb2f  3dff020000  CMP EAX,0x2ff
007feb34  77cc  JA 0x007feb02
007feb36  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007feb39  83c60c  ADD ESI,0xc
007feb3c  89472c  MOV dword ptr [EDI + 0x2c],EAX
007feb3f  8b1e  MOV EBX,dword ptr [ESI]
007feb41  83c604  ADD ESI,0x4
007feb44  85db  TEST EBX,EBX
007feb46  55  PUSH EBP
007feb47  8b6c241c  MOV EBP,dword ptr [ESP + 0x1c]
007feb4b  7425  JZ 0x007feb72
007feb4d  8d4900  LEA ECX,[ECX]
007feb50  8b0e  MOV ECX,dword ptr [ESI]
007feb52  51  PUSH ECX
007feb53  8bcd  MOV ECX,EBP
007feb55  e8d67af2ff  CALL 0x00726630
007feb5a  85c0  TEST EAX,EAX
007feb5c  0f8490000000  JZ 0x007febf2
007feb62  50  PUSH EAX
007feb63  8bcf  MOV ECX,EDI
007feb65  e826f6ffff  CALL 0x007fe190
007feb6a  83c604  ADD ESI,0x4
007feb6d  83eb01  SUB EBX,0x1
007feb70  75de  JNZ 0x007feb50
007feb72  8b1e  MOV EBX,dword ptr [ESI]
007feb74  83c604  ADD ESI,0x4
007feb77  85db  TEST EBX,EBX
007feb79  7423  JZ 0x007feb9e
007feb7b  eb03  JMP 0x007feb80
007feb7d  8d4900  LEA ECX,[ECX]
 ; previous instruction is nonowned alignment
007feb80  8b16  MOV EDX,dword ptr [ESI]
007feb82  52  PUSH EDX
007feb83  8bcd  MOV ECX,EBP
007feb85  e8a67af2ff  CALL 0x00726630
007feb8a  85c0  TEST EAX,EAX
007feb8c  7464  JZ 0x007febf2
007feb8e  50  PUSH EAX
007feb8f  8bcf  MOV ECX,EDI
007feb91  e87af6ffff  CALL 0x007fe210
007feb96  83c604  ADD ESI,0x4
007feb99  83eb01  SUB EBX,0x1
007feb9c  75e2  JNZ 0x007feb80
007feb9e  8b1e  MOV EBX,dword ptr [ESI]
007feba0  83c604  ADD ESI,0x4
007feba3  85db  TEST EBX,EBX
007feba5  741e  JZ 0x007febc5
007feba7  8b06  MOV EAX,dword ptr [ESI]
007feba9  50  PUSH EAX
007febaa  8bcd  MOV ECX,EBP
007febac  e87f7af2ff  CALL 0x00726630
007febb1  85c0  TEST EAX,EAX
007febb3  743d  JZ 0x007febf2
007febb5  50  PUSH EAX
007febb6  8bcf  MOV ECX,EDI
007febb8  e8b3edffff  CALL 0x007fd970
007febbd  83c604  ADD ESI,0x4
007febc0  83eb01  SUB EBX,0x1
007febc3  75e2  JNZ 0x007feba7
007febc5  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
007febc9  8b4104  MOV EAX,dword ptr [ECX + 0x4]
007febcc  85c0  TEST EAX,EAX
007febce  8b1e  MOV EBX,dword ptr [ESI]
007febd0  7405  JZ 0x007febd7
007febd2  8b4008  MOV EAX,dword ptr [EAX + 0x8]
007febd5  eb02  JMP 0x007febd9
007febd7  33c0  XOR EAX,EAX
007febd9  8b542410  MOV EDX,dword ptr [ESP + 0x10]
007febdd  8d0c9500000000  LEA ECX,[EDX*0x4 + 0x0]
007febe4  2bce  SUB ECX,ESI
007febe6  03c8  ADD ECX,EAX
007febe8  c1f902  SAR ECX,0x2
007febeb  8d145b  LEA EDX,[EBX + EBX*0x2]
007febee  3bca  CMP ECX,EDX
007febf0  7f0a  JG 0x007febfc
007febf2  5d  POP EBP
007febf3  5f  POP EDI
007febf4  5e  POP ESI
007febf5  32c0  XOR AL,AL
007febf7  5b  POP EBX
007febf8  59  POP ECX
007febf9  c20c00  RET 0xc
007febfc  83c604  ADD ESI,0x4
007febff  85db  TEST EBX,EBX
007fec01  742c  JZ 0x007fec2f
007fec03  8b06  MOV EAX,dword ptr [ESI]
007fec05  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
007fec08  83c604  ADD ESI,0x4
007fec0b  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007fec0e  83c604  ADD ESI,0x4
007fec11  83c604  ADD ESI,0x4
007fec14  85c0  TEST EAX,EAX
007fec16  7412  JZ 0x007fec2a
007fec18  85c9  TEST ECX,ECX
007fec1a  740e  JZ 0x007fec2a
007fec1c  85d2  TEST EDX,EDX
007fec1e  740a  JZ 0x007fec2a
007fec20  52  PUSH EDX
007fec21  51  PUSH ECX
007fec22  50  PUSH EAX
007fec23  8bcf  MOV ECX,EDI
007fec25  e876feffff  CALL 0x007feaa0
007fec2a  83eb01  SUB EBX,0x1
007fec2d  75d4  JNZ 0x007fec03
007fec2f  8b442420  MOV EAX,dword ptr [ESP + 0x20]
007fec33  813801020000  CMP dword ptr [EAX],0x201
007fec39  7603  JBE 0x007fec3e
007fec3b  83c604  ADD ESI,0x4
007fec3e  8b0e  MOV ECX,dword ptr [ESI]
007fec40  83c604  ADD ESI,0x4
007fec43  894f3c  MOV dword ptr [EDI + 0x3c],ECX
007fec46  8b06  MOV EAX,dword ptr [ESI]
007fec48  85c0  TEST EAX,EAX
007fec4a  7411  JZ 0x007fec5d
007fec4c  83f8fe  CMP EAX,-0x2
007fec4f  7509  JNZ 0x007fec5a
007fec51  c7473410270000  MOV dword ptr [EDI + 0x34],0x2710
007fec58  eb03  JMP 0x007fec5d
007fec5a  894734  MOV dword ptr [EDI + 0x34],EAX
007fec5d  83c604  ADD ESI,0x4
007fec60  8b36  MOV ESI,dword ptr [ESI]
007fec62  83fe06  CMP ESI,0x6
007fec65  7403  JZ 0x007fec6a
007fec67  897738  MOV dword ptr [EDI + 0x38],ESI
007fec6a  683455fe00  PUSH 0xfe5534
007fec6f  8bcf  MOV ECX,EDI
007fec71  e88aedffff  CALL 0x007fda00
007fec76  85c0  TEST EAX,EAX
007fec78  0f84da000000  JZ 0x007fed58
007fec7e  682855fe00  PUSH 0xfe5528
007fec83  8bcf  MOV ECX,EDI
007fec85  e8c6edffff  CALL 0x007fda50
007fec8a  85c0  TEST EAX,EAX
007fec8c  755d  JNZ 0x007feceb
007fec8e  50  PUSH EAX
007fec8f  50  PUSH EAX
007fec90  50  PUSH EAX
007fec91  50  PUSH EAX
007fec92  68a07d0001  PUSH 0x1007da0
007fec97  6a40  PUSH 0x40
007fec99  e86258ceff  CALL 0x004e4500
007fec9e  83c418  ADD ESP,0x18
007feca1  85c0  TEST EAX,EAX
007feca3  7409  JZ 0x007fecae
007feca5  8bc8  MOV ECX,EAX
007feca7  e874e8ffff  CALL 0x007fd520
007fecac  eb02  JMP 0x007fecb0
007fecae  33c0  XOR EAX,EAX
007fecb0  50  PUSH EAX
007fecb1  8d4c2424  LEA ECX,[ESP + 0x24]
007fecb5  e8b6e6ffff  CALL 0x007fd370
007fecba  8b742420  MOV ESI,dword ptr [ESP + 0x20]
007fecbe  682855fe00  PUSH 0xfe5528
007fecc3  8bce  MOV ECX,ESI
007fecc5  e8b6f5ffff  CALL 0x007fe280
007fecca  68f75f13a4  PUSH 0xa4135ff7
007feccf  8bce  MOV ECX,ESI
007fecd1  e86ae4ffff  CALL 0x007fd140
007fecd6  56  PUSH ESI
007fecd7  8bcf  MOV ECX,EDI
007fecd9  e832f5ffff  CALL 0x007fe210
007fecde  85f6  TEST ESI,ESI
007fece0  7409  JZ 0x007feceb
007fece2  8b16  MOV EDX,dword ptr [ESI]
007fece4  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007fece7  8bce  MOV ECX,ESI
007fece9  ffd0  CALL EAX
007feceb  680855fe00  PUSH 0xfe5508
007fecf0  8bcf  MOV ECX,EDI
007fecf2  e859edffff  CALL 0x007fda50
007fecf7  85c0  TEST EAX,EAX
007fecf9  755d  JNZ 0x007fed58
007fecfb  50  PUSH EAX
007fecfc  50  PUSH EAX
007fecfd  50  PUSH EAX
007fecfe  50  PUSH EAX
007fecff  68a07d0001  PUSH 0x1007da0
007fed04  6a40  PUSH 0x40
007fed06  e8f557ceff  CALL 0x004e4500
007fed0b  83c418  ADD ESP,0x18
007fed0e  85c0  TEST EAX,EAX
007fed10  7409  JZ 0x007fed1b
007fed12  8bc8  MOV ECX,EAX
007fed14  e807e8ffff  CALL 0x007fd520
007fed19  eb02  JMP 0x007fed1d
007fed1b  33c0  XOR EAX,EAX
007fed1d  50  PUSH EAX
007fed1e  8d4c2424  LEA ECX,[ESP + 0x24]
007fed22  e849e6ffff  CALL 0x007fd370
007fed27  8b742420  MOV ESI,dword ptr [ESP + 0x20]
007fed2b  680855fe00  PUSH 0xfe5508
007fed30  8bce  MOV ECX,ESI
007fed32  e849f5ffff  CALL 0x007fe280
007fed37  68cc16b5e7  PUSH 0xe7b516cc
007fed3c  8bce  MOV ECX,ESI
007fed3e  e8fde3ffff  CALL 0x007fd140
007fed43  56  PUSH ESI
007fed44  8bcf  MOV ECX,EDI
007fed46  e8c5f4ffff  CALL 0x007fe210
007fed4b  85f6  TEST ESI,ESI
007fed4d  7409  JZ 0x007fed58
007fed4f  8b16  MOV EDX,dword ptr [ESI]
007fed51  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007fed54  8bce  MOV ECX,ESI
007fed56  ffd0  CALL EAX
007fed58  6810d0fc00  PUSH 0xfcd010
007fed5d  8bcf  MOV ECX,EDI
007fed5f  e89cecffff  CALL 0x007fda00
007fed64  85c0  TEST EAX,EAX
007fed66  0f84da000000  JZ 0x007fee46
007fed6c  68580d0201  PUSH 0x1020d58
007fed71  8bcf  MOV ECX,EDI
007fed73  e8d8ecffff  CALL 0x007fda50
007fed78  85c0  TEST EAX,EAX
007fed7a  755d  JNZ 0x007fedd9
007fed7c  50  PUSH EAX
007fed7d  50  PUSH EAX
007fed7e  50  PUSH EAX
007fed7f  50  PUSH EAX
007fed80  68a07d0001  PUSH 0x1007da0
007fed85  6a40  PUSH 0x40
007fed87  e87457ceff  CALL 0x004e4500
007fed8c  83c418  ADD ESP,0x18
007fed8f  85c0  TEST EAX,EAX
007fed91  7409  JZ 0x007fed9c
007fed93  8bc8  MOV ECX,EAX
007fed95  e886e7ffff  CALL 0x007fd520
007fed9a  eb02  JMP 0x007fed9e
007fed9c  33c0  XOR EAX,EAX
007fed9e  50  PUSH EAX
007fed9f  8d4c2424  LEA ECX,[ESP + 0x24]
007feda3  e8c8e5ffff  CALL 0x007fd370
007feda8  8b742420  MOV ESI,dword ptr [ESP + 0x20]
007fedac  68580d0201  PUSH 0x1020d58
007fedb1  8bce  MOV ECX,ESI
007fedb3  e8c8f4ffff  CALL 0x007fe280
007fedb8  68f75f13a4  PUSH 0xa4135ff7
007fedbd  8bce  MOV ECX,ESI
007fedbf  e87ce3ffff  CALL 0x007fd140
007fedc4  56  PUSH ESI
007fedc5  8bcf  MOV ECX,EDI
007fedc7  e844f4ffff  CALL 0x007fe210
007fedcc  85f6  TEST ESI,ESI
007fedce  7409  JZ 0x007fedd9
007fedd0  8b16  MOV EDX,dword ptr [ESI]
007fedd2  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007fedd5  8bce  MOV ECX,ESI
007fedd7  ffd0  CALL EAX
007fedd9  68440d0201  PUSH 0x1020d44
007fedde  8bcf  MOV ECX,EDI
007fede0  e86becffff  CALL 0x007fda50
007fede5  85c0  TEST EAX,EAX
007fede7  755d  JNZ 0x007fee46
007fede9  50  PUSH EAX
007fedea  50  PUSH EAX
007fedeb  50  PUSH EAX
007fedec  50  PUSH EAX
007feded  68a07d0001  PUSH 0x1007da0
007fedf2  6a40  PUSH 0x40
007fedf4  e80757ceff  CALL 0x004e4500
007fedf9  83c418  ADD ESP,0x18
007fedfc  85c0  TEST EAX,EAX
007fedfe  7409  JZ 0x007fee09
007fee00  8bc8  MOV ECX,EAX
007fee02  e819e7ffff  CALL 0x007fd520
007fee07  eb02  JMP 0x007fee0b
007fee09  33c0  XOR EAX,EAX
007fee0b  50  PUSH EAX
007fee0c  8d4c2424  LEA ECX,[ESP + 0x24]
007fee10  e85be5ffff  CALL 0x007fd370
007fee15  8b742420  MOV ESI,dword ptr [ESP + 0x20]
007fee19  68440d0201  PUSH 0x1020d44
007fee1e  8bce  MOV ECX,ESI
007fee20  e85bf4ffff  CALL 0x007fe280
007fee25  68cc16b5e7  PUSH 0xe7b516cc
007fee2a  8bce  MOV ECX,ESI
007fee2c  e80fe3ffff  CALL 0x007fd140
007fee31  56  PUSH ESI
007fee32  8bcf  MOV ECX,EDI
007fee34  e8d7f3ffff  CALL 0x007fe210
007fee39  85f6  TEST ESI,ESI
007fee3b  7409  JZ 0x007fee46
007fee3d  8b16  MOV EDX,dword ptr [ESI]
007fee3f  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007fee42  8bce  MOV ECX,ESI
007fee44  ffd0  CALL EAX
007fee46  5d  POP EBP
007fee47  5f  POP EDI
007fee48  5e  POP ESI
007fee49  b001  MOV AL,0x1
007fee4b  5b  POP EBX
007fee4c  59  POP ECX
007fee4d  c20c00  RET 0xc
Owned instructions=331 owned bytes=893 gap/nonowned bytes=3

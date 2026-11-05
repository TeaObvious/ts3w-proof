# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Lot_RefreshAttachedObjectFootprintHash
Paired actual annotated Ghidra pseudocode: 00ACD390_Lot_RefreshAttachedObjectFootprintHash.c
Owned ranges: [[00acd390, 00acd48d]]
Envelope bytes=254

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00acd390  83ec14  SUB ESP,0x14
00acd393  56  PUSH ESI
00acd394  8bf1  MOV ESI,ECX
00acd396  8b86e8020000  MOV EAX,dword ptr [ESI + 0x2e8]
00acd39c  85c0  TEST EAX,EAX
00acd39e  0f84e5000000  JZ 0x00acd489
00acd3a4  57  PUSH EDI
00acd3a5  50  PUSH EAX
00acd3a6  e8b55f0300  CALL 0x00b03360
00acd3ab  8bbee8020000  MOV EDI,dword ptr [ESI + 0x2e8]
00acd3b1  83c404  ADD ESP,0x4
00acd3b4  85ff  TEST EDI,EDI
00acd3b6  0f84cc000000  JZ 0x00acd488
00acd3bc  8b8e10030000  MOV ECX,dword ptr [ESI + 0x310]
00acd3c2  3bc8  CMP ECX,EAX
00acd3c4  750e  JNZ 0x00acd3d4
00acd3c6  8b8e14030000  MOV ECX,dword ptr [ESI + 0x314]
00acd3cc  3bca  CMP ECX,EDX
00acd3ce  0f84b4000000  JZ 0x00acd488
00acd3d4  898610030000  MOV dword ptr [ESI + 0x310],EAX
00acd3da  899614030000  MOV dword ptr [ESI + 0x314],EDX
00acd3e0  897c2408  MOV dword ptr [ESP + 0x8],EDI
00acd3e4  8d5704  LEA EDX,[EDI + 0x4]
00acd3e7  b801000000  MOV EAX,0x1
00acd3ec  f00fc102  XADD.LOCK dword ptr [EDX],EAX
00acd3f0  57  PUSH EDI
00acd3f1  8bce  MOV ECX,ESI
00acd3f3  e828f5ffff  CALL 0x00acc920
00acd3f8  57  PUSH EDI
00acd3f9  8bce  MOV ECX,ESI
00acd3fb  e8b0eeffff  CALL 0x00acc2b0
00acd400  83be9002000000  CMP dword ptr [ESI + 0x290],0x0
00acd407  c6862504000001  MOV byte ptr [ESI + 0x425],0x1
00acd40e  746f  JZ 0x00acd47f
00acd410  8d4c240c  LEA ECX,[ESP + 0xc]
00acd414  51  PUSH ECX
00acd415  56  PUSH ESI
00acd416  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00acd41e  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00acd426  c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
00acd42e  c7442420dc5f0601  MOV dword ptr [ESP + 0x20],0x1065fdc
00acd436  e8554d0000  CALL 0x00ad2190
00acd43b  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acd441  83c408  ADD ESP,0x8
00acd444  8d54240c  LEA EDX,[ESP + 0xc]
00acd448  52  PUSH EDX
00acd449  e8c2cbfcff  CALL 0x00a9a010
00acd44e  57  PUSH EDI
00acd44f  56  PUSH ESI
00acd450  e85bf91f00  CALL 0x00cccdb0
00acd455  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acd45b  83c408  ADD ESP,0x8
00acd45e  e87d46fcff  CALL 0x00a91ae0
00acd463  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acd469  e8129dfcff  CALL 0x00a97180
00acd46e  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00acd472  85c0  TEST EAX,EAX
00acd474  7409  JZ 0x00acd47f
00acd476  50  PUSH EAX
00acd477  e86470a1ff  CALL 0x004e44e0
00acd47c  83c404  ADD ESP,0x4
00acd47f  8d4c2408  LEA ECX,[ESP + 0x8]
00acd483  e8588ec7ff  CALL 0x007462e0
00acd488  5f  POP EDI
00acd489  5e  POP ESI
00acd48a  83c414  ADD ESP,0x14
00acd48d  c3  RET
Owned instructions=67 owned bytes=254 gap/nonowned bytes=0

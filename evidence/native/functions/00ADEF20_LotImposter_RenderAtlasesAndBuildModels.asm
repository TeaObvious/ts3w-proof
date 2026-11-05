# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: LotImposter_RenderAtlasesAndBuildModels
Paired actual annotated Ghidra pseudocode: 00ADEF20_LotImposter_RenderAtlasesAndBuildModels.c
Owned body: [[00adef20, 00adf14a]]
Envelope bytes=555

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00adef20  83ec18  SUB ESP,0x18
00adef23  53  PUSH EBX
00adef24  55  PUSH EBP
00adef25  56  PUSH ESI
00adef26  8bf1  MOV ESI,ECX
00adef28  8b5e0c  MOV EBX,dword ptr [ESI + 0xc]
00adef2b  8d6e08  LEA EBP,[ESI + 0x8]
00adef2e  57  PUSH EDI
00adef2f  8b7d00  MOV EDI,dword ptr [EBP]
00adef32  3bfb  CMP EDI,EBX
00adef34  7414  JZ 0x00adef4a
00adef36  8b0f  MOV ECX,dword ptr [EDI]
00adef38  85c9  TEST ECX,ECX
00adef3a  7407  JZ 0x00adef43
00adef3c  8b01  MOV EAX,dword ptr [ECX]
00adef3e  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00adef41  ffd2  CALL EDX
00adef43  83c704  ADD EDI,0x4
00adef46  3bfb  CMP EDI,EBX
00adef48  75ec  JNZ 0x00adef36
00adef4a  8b7e18  MOV EDI,dword ptr [ESI + 0x18]
00adef4d  8b5e1c  MOV EBX,dword ptr [ESI + 0x1c]
00adef50  3bfb  CMP EDI,EBX
00adef52  7414  JZ 0x00adef68
00adef54  8b0f  MOV ECX,dword ptr [EDI]
00adef56  85c9  TEST ECX,ECX
00adef58  7407  JZ 0x00adef61
00adef5a  8b01  MOV EAX,dword ptr [ECX]
00adef5c  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00adef5f  ffd2  CALL EDX
00adef61  83c704  ADD EDI,0x4
00adef64  3bfb  CMP EDI,EBX
00adef66  75ec  JNZ 0x00adef54
00adef68  8b7e28  MOV EDI,dword ptr [ESI + 0x28]
00adef6b  8b5e2c  MOV EBX,dword ptr [ESI + 0x2c]
00adef6e  3bfb  CMP EDI,EBX
00adef70  7414  JZ 0x00adef86
00adef72  8b0f  MOV ECX,dword ptr [EDI]
00adef74  85c9  TEST ECX,ECX
00adef76  7407  JZ 0x00adef7f
00adef78  8b01  MOV EAX,dword ptr [ECX]
00adef7a  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00adef7d  ffd2  CALL EDX
00adef7f  83c704  ADD EDI,0x4
00adef82  3bfb  CMP EDI,EBX
00adef84  75ec  JNZ 0x00adef72
00adef86  e865d596ff  CALL 0x0044c4f0
00adef8b  8bf8  MOV EDI,EAX
00adef8d  c74424188c5f0601  MOV dword ptr [ESP + 0x18],0x1065f8c
00adef95  33c0  XOR EAX,EAX
00adef97  8d4c241c  LEA ECX,[ESP + 0x1c]
00adef9b  8701  XCHG dword ptr [ECX],EAX
00adef9d  a164051d01  MOV EAX,[0x011d0564]
00adefa2  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00adefa5  89442414  MOV dword ptr [ESP + 0x14],EAX
00adefa9  6a00  PUSH 0x0
00adefab  89542424  MOV dword ptr [ESP + 0x24],EDX
00adefaf  8d44241c  LEA EAX,[ESP + 0x1c]
00adefb3  c744241c8c5f0601  MOV dword ptr [ESP + 0x1c],0x1065f8c
00adefbb  c744242801000000  MOV dword ptr [ESP + 0x28],0x1
00adefc3  8b17  MOV EDX,dword ptr [EDI]
00adefc5  8b5218  MOV EDX,dword ptr [EDX + 0x18]
00adefc8  50  PUSH EAX
00adefc9  681dbffa03  PUSH 0x3fabf1d
00adefce  8bcf  MOV ECX,EDI
00adefd0  ffd2  CALL EDX
00adefd2  6a00  PUSH 0x0
00adefd4  6a01  PUSH 0x1
00adefd6  c644241800  MOV byte ptr [ESP + 0x18],0x0
00adefdb  c644241900  MOV byte ptr [ESP + 0x19],0x0
00adefe0  c644241a00  MOV byte ptr [ESP + 0x1a],0x0
00adefe5  c644241b00  MOV byte ptr [ESP + 0x1b],0x0
00adefea  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
00adefee  53  PUSH EBX
00adefef  55  PUSH EBP
00adeff0  8d4650  LEA EAX,[ESI + 0x50]
00adeff3  50  PUSH EAX
00adeff4  8bce  MOV ECX,ESI
00adeff6  c70564051d0109000000  MOV dword ptr [0x011d0564],0x9
00adf000  e8ebfbffff  CALL 0x00adebf0
00adf005  6a00  PUSH 0x0
00adf007  6a02  PUSH 0x2
00adf009  53  PUSH EBX
00adf00a  55  PUSH EBP
00adf00b  8d8e98000000  LEA ECX,[ESI + 0x98]
00adf011  51  PUSH ECX
00adf012  8bce  MOV ECX,ESI
00adf014  e8d7fbffff  CALL 0x00adebf0
00adf019  6a00  PUSH 0x0
00adf01b  8d44241c  LEA EAX,[ESP + 0x1c]
00adf01f  c744242802000000  MOV dword ptr [ESP + 0x28],0x2
00adf027  8b17  MOV EDX,dword ptr [EDI]
00adf029  8b5218  MOV EDX,dword ptr [EDX + 0x18]
00adf02c  50  PUSH EAX
00adf02d  681dbffa03  PUSH 0x3fabf1d
00adf032  8bcf  MOV ECX,EDI
00adf034  ffd2  CALL EDX
00adf036  6a01  PUSH 0x1
00adf038  6a02  PUSH 0x2
00adf03a  c644241800  MOV byte ptr [ESP + 0x18],0x0
00adf03f  c644241900  MOV byte ptr [ESP + 0x19],0x0
00adf044  c644241a00  MOV byte ptr [ESP + 0x1a],0x0
00adf049  c644241bff  MOV byte ptr [ESP + 0x1b],0xff
00adf04e  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00adf052  50  PUSH EAX
00adf053  55  PUSH EBP
00adf054  8d4e68  LEA ECX,[ESI + 0x68]
00adf057  51  PUSH ECX
00adf058  8bce  MOV ECX,ESI
00adf05a  c70564051d010a000000  MOV dword ptr [0x011d0564],0xa
00adf064  e887fbffff  CALL 0x00adebf0
00adf069  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00adf06d  6a01  PUSH 0x1
00adf06f  6a04  PUSH 0x4
00adf071  52  PUSH EDX
00adf072  55  PUSH EBP
00adf073  8d86b0000000  LEA EAX,[ESI + 0xb0]
00adf079  50  PUSH EAX
00adf07a  8bce  MOV ECX,ESI
00adf07c  e86ffbffff  CALL 0x00adebf0
00adf081  6a00  PUSH 0x0
00adf083  8d44241c  LEA EAX,[ESP + 0x1c]
00adf087  50  PUSH EAX
00adf088  c744242c03000000  MOV dword ptr [ESP + 0x2c],0x3
00adf090  8b17  MOV EDX,dword ptr [EDI]
00adf092  681dbffa03  PUSH 0x3fabf1d
00adf097  8bcf  MOV ECX,EDI
00adf099  8b5218  MOV EDX,dword ptr [EDX + 0x18]
00adf09c  ffd2  CALL EDX
00adf09e  6a02  PUSH 0x2
00adf0a0  6a02  PUSH 0x2
00adf0a2  53  PUSH EBX
00adf0a3  8d4618  LEA EAX,[ESI + 0x18]
00adf0a6  50  PUSH EAX
00adf0a7  8d8680000000  LEA EAX,[ESI + 0x80]
00adf0ad  50  PUSH EAX
00adf0ae  8bce  MOV ECX,ESI
00adf0b0  c70564051d0109000000  MOV dword ptr [0x011d0564],0x9
00adf0ba  e831fbffff  CALL 0x00adebf0
00adf0bf  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00adf0c3  8ad8  MOV BL,AL
00adf0c5  6a00  PUSH 0x0
00adf0c7  890d64051d01  MOV dword ptr [0x011d0564],ECX
00adf0cd  8d44241c  LEA EAX,[ESP + 0x1c]
00adf0d1  c744242800000000  MOV dword ptr [ESP + 0x28],0x0
00adf0d9  8b17  MOV EDX,dword ptr [EDI]
00adf0db  8b5218  MOV EDX,dword ptr [EDX + 0x18]
00adf0de  50  PUSH EAX
00adf0df  681dbffa03  PUSH 0x3fabf1d
00adf0e4  8bcf  MOV ECX,EDI
00adf0e6  80e301  AND BL,0x1
00adf0e9  ffd2  CALL EDX
00adf0eb  68d4970601  PUSH 0x10697d4
00adf0f0  e82b21ccff  CALL 0x007a1220
00adf0f5  83c404  ADD ESP,0x4
00adf0f8  50  PUSH EAX
00adf0f9  55  PUSH EBP
00adf0fa  8d4638  LEA EAX,[ESI + 0x38]
00adf0fd  50  PUSH EAX
00adf0fe  8bce  MOV ECX,ESI
00adf100  e81be2ffff  CALL 0x00add320
00adf105  68c4970601  PUSH 0x10697c4
00adf10a  e81121ccff  CALL 0x007a1220
00adf10f  83c404  ADD ESP,0x4
00adf112  50  PUSH EAX
00adf113  8d4618  LEA EAX,[ESI + 0x18]
00adf116  50  PUSH EAX
00adf117  8d4e3c  LEA ECX,[ESI + 0x3c]
00adf11a  51  PUSH ECX
00adf11b  8bce  MOV ECX,ESI
00adf11d  e8fee1ffff  CALL 0x00add320
00adf122  68988f0601  PUSH 0x1068f98
00adf127  e8f420ccff  CALL 0x007a1220
00adf12c  50  PUSH EAX
00adf12d  8d4628  LEA EAX,[ESI + 0x28]
00adf130  50  PUSH EAX
00adf131  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00adf134  8d5640  LEA EDX,[ESI + 0x40]
00adf137  52  PUSH EDX
00adf138  50  PUSH EAX
00adf139  e862e5ffff  CALL 0x00add6a0
00adf13e  83c414  ADD ESP,0x14
00adf141  5f  POP EDI
00adf142  5e  POP ESI
00adf143  5d  POP EBP
00adf144  8ac3  MOV AL,BL
00adf146  5b  POP EBX
00adf147  83c418  ADD ESP,0x18
00adf14a  c3  RET

Owned instructions=189 owned bytes=555 nonowned bytes=0

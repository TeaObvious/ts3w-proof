# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00CE8830_ProductVector_MergeOrderedRanges.c
Owned ranges: [[00ce8830, 00ce88b5]]

00ce8830  53  PUSH EBX
00ce8831  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00ce8835  55  PUSH EBP
00ce8836  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00ce883a  56  PUSH ESI
00ce883b  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00ce883f  3bde  CMP EBX,ESI
00ce8841  57  PUSH EDI
00ce8842  7442  JZ 0x00ce8886
00ce8844  3b6c2420  CMP EBP,dword ptr [ESP + 0x20]
00ce8848  743c  JZ 0x00ce8886
00ce884a  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00ce884e  8b3b  MOV EDI,dword ptr [EBX]
00ce8850  8b4500  MOV EAX,dword ptr [EBP]
00ce8853  51  PUSH ECX
00ce8854  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ce8858  e8b3f9ffff  CALL 0x00ce8210
00ce885d  83c404  ADD ESP,0x4
00ce8860  84c0  TEST AL,AL
00ce8862  740e  JZ 0x00ce8872
00ce8864  8b5500  MOV EDX,dword ptr [EBP]
00ce8867  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00ce886b  8910  MOV dword ptr [EAX],EDX
00ce886d  83c504  ADD EBP,0x4
00ce8870  eb0b  JMP 0x00ce887d
00ce8872  8b0b  MOV ECX,dword ptr [EBX]
00ce8874  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00ce8878  890a  MOV dword ptr [EDX],ECX
00ce887a  83c304  ADD EBX,0x4
00ce887d  8344242404  ADD dword ptr [ESP + 0x24],0x4
00ce8882  3bde  CMP EBX,ESI
00ce8884  75be  JNZ 0x00ce8844
00ce8886  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00ce888a  8b3d8866f900  MOV EDI,dword ptr [0x00f96688]
00ce8890  2bf3  SUB ESI,EBX
00ce8892  56  PUSH ESI
00ce8893  53  PUSH EBX
00ce8894  50  PUSH EAX
00ce8895  ffd7  CALL EDI
00ce8897  c1fe02  SAR ESI,0x2
00ce889a  8d04b0  LEA EAX,[EAX + ESI*0x4]
00ce889d  8b74242c  MOV ESI,dword ptr [ESP + 0x2c]
00ce88a1  2bf5  SUB ESI,EBP
00ce88a3  56  PUSH ESI
00ce88a4  55  PUSH EBP
00ce88a5  50  PUSH EAX
00ce88a6  ffd7  CALL EDI
00ce88a8  83c418  ADD ESP,0x18
00ce88ab  c1fe02  SAR ESI,0x2
00ce88ae  5f  POP EDI
00ce88af  8d04b0  LEA EAX,[EAX + ESI*0x4]
00ce88b2  5e  POP ESI
00ce88b3  5d  POP EBP
00ce88b4  5b  POP EBX
00ce88b5  c3  RET

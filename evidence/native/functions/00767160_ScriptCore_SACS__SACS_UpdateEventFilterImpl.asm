# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ScriptCore_SACS__SACS_UpdateEventFilterImpl
Paired actual annotated Ghidra pseudocode: 00767160_ScriptCore_SACS__SACS_UpdateEventFilterImpl.c
Owned ranges: [[00767160, 007671cc]]
Envelope bytes=128

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00767160  51  PUSH ECX
00767161  e82a220000  CALL 0x00769390
00767166  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0076716a  8b10  MOV EDX,dword ptr [EAX]
0076716c  8b92cc000000  MOV EDX,dword ptr [EDX + 0xcc]
00767172  51  PUSH ECX
00767173  8bc8  MOV ECX,EAX
00767175  ffd2  CALL EDX
00767177  8bc8  MOV ECX,EAX
00767179  85c9  TEST ECX,ECX
0076717b  744e  JZ 0x007671cb
0076717d  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00767181  83f803  CMP EAX,0x3
00767184  c6042400  MOV byte ptr [ESP],0x0
00767188  7741  JA 0x007671cb
0076718a  ff2485d0717600  JMP dword ptr [EAX*0x4 + 0x7671d0]
00767191  c6042401  MOV byte ptr [ESP],0x1
00767195  8b0424  MOV EAX,dword ptr [ESP]
00767198  8b542414  MOV EDX,dword ptr [ESP + 0x14]
0076719c  50  PUSH EAX
0076719d  8b442414  MOV EAX,dword ptr [ESP + 0x14]
007671a1  52  PUSH EDX
007671a2  8b542414  MOV EDX,dword ptr [ESP + 0x14]
007671a6  50  PUSH EAX
007671a7  52  PUSH EDX
007671a8  e883ae0900  CALL 0x00802030
007671ad  59  POP ECX
007671ae  c3  RET
007671af  c6042401  MOV byte ptr [ESP],0x1
007671b3  8b0424  MOV EAX,dword ptr [ESP]
007671b6  8b542414  MOV EDX,dword ptr [ESP + 0x14]
007671ba  50  PUSH EAX
007671bb  8b442414  MOV EAX,dword ptr [ESP + 0x14]
007671bf  52  PUSH EDX
007671c0  8b542414  MOV EDX,dword ptr [ESP + 0x14]
007671c4  50  PUSH EAX
007671c5  52  PUSH EDX
007671c6  e8a5a60900  CALL 0x00801870
007671cb  59  POP ECX
007671cc  c3  RET
007671cd  8d  .byte (gap/alignment)
007671ce  49  .byte (gap/alignment)
007671cf  00  .byte (gap/alignment)
007671d0  91  .byte (gap/alignment)
007671d1  71  .byte (gap/alignment)
007671d2  76  .byte (gap/alignment)
007671d3  00  .byte (gap/alignment)
007671d4  95  .byte (gap/alignment)
007671d5  71  .byte (gap/alignment)
007671d6  76  .byte (gap/alignment)
007671d7  00  .byte (gap/alignment)
007671d8  af  .byte (gap/alignment)
007671d9  71  .byte (gap/alignment)
007671da  76  .byte (gap/alignment)
007671db  00  .byte (gap/alignment)
007671dc  b3  .byte (gap/alignment)
007671dd  71  .byte (gap/alignment)
007671de  76  .byte (gap/alignment)
007671df  00  .byte (gap/alignment)
Owned instructions=40 owned bytes=109 gap/nonowned bytes=19

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FUN_00726380(undefined4 * param_1)
Owned ranges: [[00726380, 007263cf]]

00726380  56  PUSH ESI
00726381  8bf1  MOV ESI,ECX
00726383  837e1800  CMP dword ptr [ESI + 0x18],0x0
00726387  7440  JZ 0x007263c9
00726389  57  PUSH EDI
0072638a  33ff  XOR EDI,EDI
0072638c  397e14  CMP dword ptr [ESI + 0x14],EDI
0072638f  761a  JBE 0x007263ab
00726391  8b4628  MOV EAX,dword ptr [ESI + 0x28]
00726394  8b0cb8  MOV ECX,dword ptr [EAX + EDI*0x4]
00726397  83e1fe  AND ECX,0xfffffffe
0072639a  7407  JZ 0x007263a3
0072639c  8b11  MOV EDX,dword ptr [ECX]
0072639e  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007263a1  ffd0  CALL EAX
007263a3  83c701  ADD EDI,0x1
007263a6  3b7e14  CMP EDI,dword ptr [ESI + 0x14]
007263a9  72e6  JC 0x00726391
007263ab  8b4e18  MOV ECX,dword ptr [ESI + 0x18]
007263ae  51  PUSH ECX
007263af  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
007263b5  e8b6fadbff  CALL 0x004e5e70
007263ba  8b16  MOV EDX,dword ptr [ESI]
007263bc  5f  POP EDI
007263bd  c7461800000000  MOV dword ptr [ESI + 0x18],0x0
007263c4  895604  MOV dword ptr [ESI + 0x4],EDX
007263c7  5e  POP ESI
007263c8  c3  RET
007263c9  8b06  MOV EAX,dword ptr [ESI]
007263cb  894604  MOV dword ptr [ESI + 0x4],EAX
007263ce  5e  POP ESI
007263cf  c3  RET

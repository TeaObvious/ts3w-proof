# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ToolWorld_CanCharge(void * this, float amount)
Owned ranges: [[00d395d0, 00d395ff]]

00d395d0  51  PUSH ECX
00d395d1  56  PUSH ESI
00d395d2  8bf1  MOV ESI,ECX
00d395d4  e8977da5ff  CALL 0x00791370
00d395d9  89442404  MOV dword ptr [ESP + 0x4],EAX
00d395dd  db442404  FILD dword ptr [ESP + 0x4]
00d395e1  d86620  FSUB float ptr [ESI + 0x20]
00d395e4  5e  POP ESI
00d395e5  d9442408  FLD float ptr [ESP + 0x8]
00d395e9  d9c9  FXCH
00d395eb  dff1  FCOMIP ST0,ST1
00d395ed  ddd8  FSTP ST0
00d395ef  7209  JC 0x00d395fa
00d395f1  b801000000  MOV EAX,0x1
00d395f6  59  POP ECX
00d395f7  c20400  RET 0x4
00d395fa  33c0  XOR EAX,EAX
00d395fc  59  POP ECX
00d395fd  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00793370, 0079341b]]
Actual pseudocode: 00793370_DetailedLotMonitor_PollLoadedLots.c
; Actual plate: Analyst PC1.67 bounded monitor poll. Physical ECX is monitor interface at allocation+0x0C; two opaque stack DWORDs are popped by every RET8 and are not read. Body80instructions172bytes ends0079341B; following4padding bytes and next3420 function excluded. Vtable01011968+4 selects this entry; constructor007894A0 installs that interface. Missing world manager completes false through0078ECB0(0) then returns AL0. A nonzero stored lot GUID resolves throughC62810(flag0); missing lot completes true. Otherwise interface at this-0C virtual+18 tests each selected lot; ALtrue triggers virtual+10 continuation, ALfalse or exhausted list completes true. Zero GUID scans C687A0(0) pointer range. Completion result is separate from this poll's AL. Decompiler signature/stack aliases are inferred, not a recovered prototype. No one-second backoff or failed-revision receipt policy is established here.

00793370  55  PUSH EBP
00793371  8be9  MOV EBP,ECX
00793373  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00793379  85c9  TEST ECX,ECX
0079337b  750f  JNZ 0x0079338c
0079337d  51  PUSH ECX
0079337e  8d4df4  LEA ECX,[EBP + -0xc] ; ECX monitor interface minus0C restores allocation receiver for completion; pushed0 becomes completion bool false.
00793381  e82ab9ffff  CALL 0x0078ecb0
00793386  32c0  XOR AL,AL
00793388  5d  POP EBP
00793389  c20800  RET 0x8
0079338c  8b450c  MOV EAX,dword ptr [EBP + 0xc] ; Stored GUID low/high at interface+0C/+10 = allocation+18/+1C; unrelated to two popped stack DWORDs.
0079338f  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00793392  53  PUSH EBX
00793393  56  PUSH ESI
00793394  8bf0  MOV ESI,EAX
00793396  0bf2  OR ESI,EDX
00793398  57  PUSH EDI
00793399  6a00  PUSH 0x0
0079339b  742f  JZ 0x007933cc
0079339d  52  PUSH EDX
0079339e  50  PUSH EAX
0079339f  e86cf44c00  CALL 0x00c62810
007933a4  85c0  TEST EAX,EAX
007933a6  744f  JZ 0x007933f7
007933a8  8b55f4  MOV EDX,dword ptr [EBP + -0xc]
007933ab  8d75f4  LEA ESI,[EBP + -0xc]
007933ae  50  PUSH EAX
007933af  8b4218  MOV EAX,dword ptr [EDX + 0x18]
007933b2  8bce  MOV ECX,ESI
007933b4  ffd0  CALL EAX ; Actual allocation vtable+18 predicate; only AL consumed. Complete target/body remains separate evidence.
007933b6  84c0  TEST AL,AL
007933b8  743d  JZ 0x007933f7
007933ba  8b16  MOV EDX,dword ptr [ESI]
007933bc  8b4210  MOV EAX,dword ptr [EDX + 0x10]
007933bf  8bce  MOV ECX,ESI
007933c1  ffd0  CALL EAX
007933c3  5f  POP EDI
007933c4  5e  POP ESI
007933c5  5b  POP EBX
007933c6  b001  MOV AL,0x1
007933c8  5d  POP EBP
007933c9  c20800  RET 0x8
007933cc  e8cf534d00  CALL 0x00c687a0
007933d1  8b30  MOV ESI,dword ptr [EAX]
007933d3  8b5804  MOV EBX,dword ptr [EAX + 0x4]
007933d6  3bf3  CMP ESI,EBX
007933d8  741d  JZ 0x007933f7
007933da  8d7df4  LEA EDI,[EBP + -0xc]
007933dd  8d4900  LEA ECX,[ECX]
007933e0  8b06  MOV EAX,dword ptr [ESI]
007933e2  8b17  MOV EDX,dword ptr [EDI]
007933e4  50  PUSH EAX
007933e5  8b4218  MOV EAX,dword ptr [EDX + 0x18]
007933e8  8bcf  MOV ECX,EDI
007933ea  ffd0  CALL EAX
007933ec  84c0  TEST AL,AL
007933ee  751a  JNZ 0x0079340a
007933f0  83c604  ADD ESI,0x4
007933f3  3bf3  CMP ESI,EBX
007933f5  75e9  JNZ 0x007933e0
007933f7  6a01  PUSH 0x1
007933f9  8d4df4  LEA ECX,[EBP + -0xc]
007933fc  e8afb8ffff  CALL 0x0078ecb0 ; Completion0078ECB0(1) after missinglot or no pendingpredicate; not GPU presentation timestamp.
00793401  5f  POP EDI
00793402  5e  POP ESI
00793403  5b  POP EBX
00793404  b001  MOV AL,0x1
00793406  5d  POP EBP
00793407  c20800  RET 0x8
0079340a  8b17  MOV EDX,dword ptr [EDI]
0079340c  8b4210  MOV EAX,dword ptr [EDX + 0x10]
0079340f  8bcf  MOV ECX,EDI
00793411  ffd0  CALL EAX
00793413  5f  POP EDI
00793414  5e  POP ESI
00793415  5b  POP EBX
00793416  b001  MOV AL,0x1
00793418  5d  POP EBP
00793419  c20800  RET 0x8 ; Final physical RET8 occupies3419..341B; body172bytes, padding starts341C.

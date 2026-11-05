# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00789710, 00789768]]
Actual pseudocode: 00789710_DetailedLotMonitor_HasPendingLot.c
; Actual plate: Analyst PC1.67 bounded pending predicate. Physical ECX is monitor allocation, one lot pointer stack DWORD; all three exits RET4. Body40instructions89bytes ends00789768, next7CC excluded. Constructor007894A0 installs allocation vtable01011984; +18 points here, used by00793370 with allocation receiver. Calls D43520 (AL lot+C2 readiness); only when zero calls AAFEF0 (AL lot+C1 requested). Requested and not ready returns AL1. Otherwise stored mask+20 zero returns AL0; nonzero mask consults monitor+24 request: absent calls allocation virtual+14 with lot GUID+48/+4C then returns AL1; present returns full EAX0/1 from request byte+1C==0. Mask semantics and deeper request producer/virtual target remain separate; not a recovered GPU completion or retry policy. Inferred signature retained; physical RET4 authoritative.

00789710  56  PUSH ESI
00789711  57  PUSH EDI
00789712  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00789716  8bf1  MOV ESI,ECX
00789718  8bcf  MOV ECX,EDI
0078971a  e8019e5b00  CALL 0x00d43520
0078971f  84c0  TEST AL,AL ; Only AL from actual lot+C2 getter is tested; ready path bypasses requested getter.
00789721  750b  JNZ 0x0078972e
00789723  8bcf  MOV ECX,EDI
00789725  e8c6673200  CALL 0x00aafef0
0078972a  84c0  TEST AL,AL ; Requested AL!=0 while readiness zero returns pending true, distinct from requested work being ready.
0078972c  751e  JNZ 0x0078974c
0078972e  837e2000  CMP dword ptr [ESI + 0x20],0x0
00789732  742e  JZ 0x00789762
00789734  8b4624  MOV EAX,dword ptr [ESI + 0x24]
00789737  85c0  TEST EAX,EAX
00789739  7518  JNZ 0x00789753
0078973b  8b4f4c  MOV ECX,dword ptr [EDI + 0x4c]
0078973e  8b06  MOV EAX,dword ptr [ESI]
00789740  8b5748  MOV EDX,dword ptr [EDI + 0x48]
00789743  8b4014  MOV EAX,dword ptr [EAX + 0x14]
00789746  51  PUSH ECX
00789747  52  PUSH EDX
00789748  8bce  MOV ECX,ESI
0078974a  ffd0  CALL EAX ; Allocation vtable+14 producer with stored lot GUID twoDWORDs; mask/request+24 lifetime remains separate authority.
0078974c  5f  POP EDI
0078974d  b001  MOV AL,0x1
0078974f  5e  POP ESI
00789750  c20400  RET 0x4
00789753  8a481c  MOV CL,byte ptr [EAX + 0x1c]
00789756  33c0  XOR EAX,EAX
00789758  84c9  TEST CL,CL
0078975a  5f  POP EDI
0078975b  0f94c0  SETZ AL ; SETZ AL after XOR EAX,EAX returns fullEAX0/1; sibling exits only define AL.
0078975e  5e  POP ESI
0078975f  c20400  RET 0x4
00789762  5f  POP EDI
00789763  32c0  XOR AL,AL
00789765  5e  POP ESI
00789766  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: FloorManager_CopyPatternKeysForCellId
; Owned ranges: [[00a8ee40, 00a8ee9e]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. Physical ECX floor manager plus cellUInt16 stackword and output64-byte pointer, RET8; no returnvalue contract. MOVZX zero-extends the wire cell ID toUInt32. Manager+D8 owns map; ID0 selects implicitdefaultquad+40. Nonzero ID queries reversemap+20 throughA8E780; missing iterator/end or null keyblock selects nullquad011EC8E0. Copies exactly16DWORDs/64bytes via REP MOVSD. FFFF receives ordinary unsigned lookup, not a reserved-ID failure. Full saved map storage indexes areUInt32 at producerAA5490; this query adapter isUInt16. No invented map-null guard or managed failure policy. Complete95ownedbytes; existing types/ABI/bytes preserved.

00a8ee40  83ec08  SUB ESP,0x8
00a8ee43  0fb754240c  MOVZX EDX,word ptr [ESP + 0xc]
00a8ee48  85d2  TEST EDX,EDX
00a8ee4a  8b81d8000000  MOV EAX,dword ptr [ECX + 0xd8]
00a8ee50  56  PUSH ESI
00a8ee51  57  PUSH EDI
00a8ee52  89542414  MOV dword ptr [ESP + 0x14],EDX
00a8ee56  7505  JNZ 0x00a8ee5d
00a8ee58  8d7040  LEA ESI,[EAX + 0x40]
00a8ee5b  eb26  JMP 0x00a8ee83
00a8ee5d  8d7020  LEA ESI,[EAX + 0x20]
00a8ee60  8d442414  LEA EAX,[ESP + 0x14]
00a8ee64  50  PUSH EAX
00a8ee65  8d4c240c  LEA ECX,[ESP + 0xc]
00a8ee69  51  PUSH ECX
00a8ee6a  8bce  MOV ECX,ESI
00a8ee6c  e80ff9ffff  CALL 0x00a8e780
00a8ee71  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a8ee74  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00a8ee77  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a8ee7b  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00a8ee7e  7407  JZ 0x00a8ee87
00a8ee80  8d7008  LEA ESI,[EAX + 0x8]
00a8ee83  85f6  TEST ESI,ESI
00a8ee85  7505  JNZ 0x00a8ee8c
00a8ee87  bee0c81e01  MOV ESI,0x11ec8e0
00a8ee8c  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00a8ee90  b910000000  MOV ECX,0x10
00a8ee95  f3a5  MOVSD.REP ES:EDI,ESI
00a8ee97  5f  POP EDI
00a8ee98  5e  POP ESI
00a8ee99  83c408  ADD ESP,0x8
00a8ee9c  c20800  RET 0x8

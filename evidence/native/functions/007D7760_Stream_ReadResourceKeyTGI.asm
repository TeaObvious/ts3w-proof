# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Stream_ReadResourceKeyTGI(void * stream, void * outKey, uint endianFlag)
Owned ranges: [[007d7760, 007d77ab]]

007d7760  53  PUSH EBX
007d7761  55  PUSH EBP
007d7762  8b6c240c  MOV EBP,dword ptr [ESP + 0xc]
007d7766  56  PUSH ESI
007d7767  8b742418  MOV ESI,dword ptr [ESP + 0x18]
007d776b  57  PUSH EDI
007d776c  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
007d7770  56  PUSH ESI
007d7771  8d4708  LEA EAX,[EDI + 0x8]
007d7774  50  PUSH EAX
007d7775  55  PUSH EBP
007d7776  e80562d0ff  CALL 0x004dd980
007d777b  56  PUSH ESI
007d777c  8d4f0c  LEA ECX,[EDI + 0xc]
007d777f  51  PUSH ECX
007d7780  8ad8  MOV BL,AL
007d7782  55  PUSH EBP
007d7783  80e301  AND BL,0x1
007d7786  e8f561d0ff  CALL 0x004dd980
007d778b  56  PUSH ESI
007d778c  57  PUSH EDI
007d778d  55  PUSH EBP
007d778e  22d8  AND BL,AL
007d7790  e8eb61d0ff  CALL 0x004dd980
007d7795  56  PUSH ESI
007d7796  83c704  ADD EDI,0x4
007d7799  57  PUSH EDI
007d779a  55  PUSH EBP
007d779b  22d8  AND BL,AL
007d779d  e8de61d0ff  CALL 0x004dd980
007d77a2  83c430  ADD ESP,0x30
007d77a5  5f  POP EDI
007d77a6  5e  POP ESI
007d77a7  5d  POP EBP
007d77a8  22c3  AND AL,BL
007d77aa  5b  POP EBX
007d77ab  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsNextStateNode_TrySchedulePendingState(void)
Owned ranges: [[007f60f0, 007f613d]]

007f60f0  83c130  ADD ECX,0x30
007f60f3  53  PUSH EBX
007f60f4  8b19  MOV EBX,dword ptr [ECX]
007f60f6  85db  TEST EBX,EBX
007f60f8  7440  JZ 0x007f613a
007f60fa  56  PUSH ESI
007f60fb  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
007f60ff  85f6  TEST ESI,ESI
007f6101  7436  JZ 0x007f6139
007f6103  807e7200  CMP byte ptr [ESI + 0x72],0x0
007f6107  8b4610  MOV EAX,dword ptr [ESI + 0x10]
007f610a  752d  JNZ 0x007f6139
007f610c  85c0  TEST EAX,EAX
007f610e  7421  JZ 0x007f6131
007f6110  837e1800  CMP dword ptr [ESI + 0x18],0x0
007f6114  7404  JZ 0x007f611a
007f6116  3bc3  CMP EAX,EBX
007f6118  7417  JZ 0x007f6131
007f611a  57  PUSH EDI
007f611b  8b7840  MOV EDI,dword ptr [EAX + 0x40]
007f611e  8b403c  MOV EAX,dword ptr [EAX + 0x3c]
007f6121  51  PUSH ECX
007f6122  57  PUSH EDI
007f6123  50  PUSH EAX
007f6124  e847ffffff  CALL 0x007f6070
007f6129  83c40c  ADD ESP,0xc
007f612c  3bc7  CMP EAX,EDI
007f612e  5f  POP EDI
007f612f  7408  JZ 0x007f6139
007f6131  53  PUSH EBX
007f6132  8bce  MOV ECX,ESI
007f6134  e8b79c0000  CALL 0x007ffdf0
007f6139  5e  POP ESI
007f613a  5b  POP EBX
007f613b  c21000  RET 0x10

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneModel_RefreshBoundsOrCopyResourceFallback
Paired annotated actual pseudocode: 006F6020_SceneModel_RefreshBoundsOrCopyResourceFallback.c
Owned ranges: [[006f6020, 006f6057] [006f6060, 006f60ae]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006f6020  55  PUSH EBP
006f6021  8bec  MOV EBP,ESP
006f6023  83e4f0  AND ESP,0xfffffff0
006f6026  83ec14  SUB ESP,0x14
006f6029  53  PUSH EBX
006f602a  8b5d08  MOV EBX,dword ptr [EBP + 0x8]
006f602d  85db  TEST EBX,EBX
006f602f  56  PUSH ESI
006f6030  8bf1  MOV ESI,ECX
006f6032  57  PUSH EDI
006f6033  89742418  MOV dword ptr [ESP + 0x18],ESI
006f6037  746d  JZ 0x006f60a6
006f6039  53  PUSH EBX
006f603a  e811fdffff  CALL 0x006f5d50
006f603f  84c0  TEST AL,AL
006f6041  7563  JNZ 0x006f60a6
006f6043  8bcb  MOV ECX,EBX
006f6045  e8269cf1ff  CALL 0x0060fc70
006f604a  33ff  XOR EDI,EDI
006f604c  85c0  TEST EAX,EAX
006f604e  8944241c  MOV dword ptr [ESP + 0x1c],EAX
006f6052  7643  JBE 0x006f6097
006f6054  33db  XOR EBX,EBX
006f6056  eb08  JMP 0x006f6060
006f6058  8da4240000000090  GAP_BYTES (non-owned alignment inside full envelope)
006f6060  8b4508  MOV EAX,dword ptr [EBP + 0x8]
006f6063  8b4840  MOV ECX,dword ptr [EAX + 0x40]
006f6066  8bb688020000  MOV ESI,dword ptr [ESI + 0x288]
006f606c  8b0cb9  MOV ECX,dword ptr [ECX + EDI*0x4]
006f606f  03f3  ADD ESI,EBX
006f6071  e88a92f9ff  CALL 0x0068f300
006f6076  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
006f6079  0f2906  MOVAPS xmmword ptr [ESI],XMM0
006f607c  0f284010  MOVAPS XMM0,xmmword ptr [EAX + 0x10]
006f6080  83c701  ADD EDI,0x1
006f6083  83c340  ADD EBX,0x40
006f6086  3b7c241c  CMP EDI,dword ptr [ESP + 0x1c]
006f608a  0f294610  MOVAPS xmmword ptr [ESI + 0x10],XMM0
006f608e  8b742418  MOV ESI,dword ptr [ESP + 0x18]
006f6092  72cc  JC 0x006f6060
006f6094  8b5d08  MOV EBX,dword ptr [EBP + 0x8]
006f6097  8bcb  MOV ECX,EBX
006f6099  e832e4e0ff  CALL 0x005044d0
006f609e  50  PUSH EAX
006f609f  8bce  MOV ECX,ESI
006f60a1  e86a6b0000  CALL 0x006fcc10
006f60a6  5f  POP EDI
006f60a7  5e  POP ESI
006f60a8  5b  POP EBX
006f60a9  8be5  MOV ESP,EBP
006f60ab  5d  POP EBP
006f60ac  c20400  RET 0x4
Owned instructions=51 owned bytes=135 envelope bytes=143

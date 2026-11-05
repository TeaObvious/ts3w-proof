# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TreePrimitive_SetYawTranslation(void * this, undefined4 * param_1)
Owned ranges: [[007b7310, 007b734b]]

007b7310  55  PUSH EBP
007b7311  8bec  MOV EBP,ESP
007b7313  83e4f0  AND ESP,0xfffffff0
007b7316  83ec10  SUB ESP,0x10
007b7319  8b4508  MOV EAX,dword ptr [EBP + 0x8]
007b731c  0f284030  MOVAPS XMM0,xmmword ptr [EAX + 0x30]
007b7320  0f2901  MOVAPS xmmword ptr [ECX],XMM0
007b7323  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
007b7326  0f290424  MOVAPS xmmword ptr [ESP],XMM0
007b732a  f30f100424  MOVSS XMM0,dword ptr [ESP]
007b732f  f30f114140  MOVSS dword ptr [ECX + 0x40],XMM0
007b7334  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
007b7337  0f290424  MOVAPS xmmword ptr [ESP],XMM0
007b733b  f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
007b7341  f30f114144  MOVSS dword ptr [ECX + 0x44],XMM0
007b7346  8be5  MOV ESP,EBP
007b7348  5d  POP EBP
007b7349  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BlendGeometry_QuantizeVector(void * this, float param_1, float param_2, float param_3)
Owned ranges: [[005a2f50, 005a2fa3]]

005a2f50  f30f100588f4fd00  MOVSS XMM0,dword ptr [0x00fdf488]
005a2f58  f30f100d84f4fd00  MOVSS XMM1,dword ptr [0x00fdf484]
005a2f60  f30f10542404  MOVSS XMM2,dword ptr [ESP + 0x4]
005a2f66  f30f59d0  MULSS XMM2,XMM0
005a2f6a  f30f58d1  ADDSS XMM2,XMM1
005a2f6e  f30f2cc2  CVTTSS2SI EAX,XMM2
005a2f72  f30f10542408  MOVSS XMM2,dword ptr [ESP + 0x8]
005a2f78  f30f59d0  MULSS XMM2,XMM0
005a2f7c  f30f58d1  ADDSS XMM2,XMM1
005a2f80  f30f2cd2  CVTTSS2SI EDX,XMM2
005a2f84  f30f1054240c  MOVSS XMM2,dword ptr [ESP + 0xc]
005a2f8a  f30f59d0  MULSS XMM2,XMM0
005a2f8e  668901  MOV word ptr [ECX],AX
005a2f91  f30f58d1  ADDSS XMM2,XMM1
005a2f95  f30f2cc2  CVTTSS2SI EAX,XMM2
005a2f99  66895102  MOV word ptr [ECX + 0x2],DX
005a2f9d  66894104  MOV word ptr [ECX + 0x4],AX
005a2fa1  c20c00  RET 0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual complete original PC1.67 Ghidra Listing 00ab7040..00ab7102; Lot_LocalPositionToWorldVector
# ECX lot owner; two aligned four-float input/output pointer stack arguments; RET8. Captures input before output. FSIN/FCOS use lot+1A0 and store binary32; FCHS separately negates the x87 sine before its store. Horizontal output is X=z*sin+(cos*x+originX), Z=x*negativeSin+(cos*z+originZ), using lot+190/+198. ADDPS adds origin to cosine products before cross products; all four lanes are written. Registered World_GetWorldPosition0078EE40 calls this after ADC750. Transcendental rounding/control state and nonhorizontal lane meaning require their own callers.
00ab7040  55  PUSH EBP
00ab7041  8bec  MOV EBP,ESP
00ab7043  83e4f0  AND ESP,0xfffffff0
00ab7046  83ec20  SUB ESP,0x20
00ab7049  d981a0010000  FLD float ptr [ECX + 0x1a0]
00ab704f  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00ab7052  d9c0  FLD ST0
00ab7054  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
00ab7057  d9fe  FSIN
00ab7059  0f28c8  MOVAPS XMM1,XMM0
00ab705c  0fc6c812  SHUFPS XMM1,XMM0,0x12
00ab7060  0fc6c808  SHUFPS XMM1,XMM0,0x8
00ab7064  d9542408  FST float ptr [ESP + 0x8]
00ab7068  d9c9  FXCH
00ab706a  d9ff  FCOS
00ab706c  f30f10542408  MOVSS XMM2,dword ptr [ESP + 0x8]
00ab7072  f30f1154241c  MOVSS dword ptr [ESP + 0x1c],XMM2
00ab7078  d95c2404  FSTP float ptr [ESP + 0x4]
00ab707c  d9e0  FCHS
00ab707e  d95c240c  FSTP float ptr [ESP + 0xc]
00ab7082  f30f1054240c  MOVSS XMM2,dword ptr [ESP + 0xc]
00ab7088  f30f11542418  MOVSS dword ptr [ESP + 0x18],XMM2
00ab708e  f30f1015cc4c0f01  MOVSS XMM2,dword ptr [0x010f4ccc]
00ab7096  f30f11542414  MOVSS dword ptr [ESP + 0x14],XMM2
00ab709c  f30f10542408  MOVSS XMM2,dword ptr [ESP + 0x8]
00ab70a2  f30f11542410  MOVSS dword ptr [ESP + 0x10],XMM2
00ab70a8  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
00ab70ad  0f59ca  MULPS XMM1,XMM2
00ab70b0  f30f10542404  MOVSS XMM2,dword ptr [ESP + 0x4]
00ab70b6  f30f1154241c  MOVSS dword ptr [ESP + 0x1c],XMM2
00ab70bc  f30f10542404  MOVSS XMM2,dword ptr [ESP + 0x4]
00ab70c2  f30f11542418  MOVSS dword ptr [ESP + 0x18],XMM2
00ab70c8  f30f1015f898f900  MOVSS XMM2,dword ptr [0x00f998f8]
00ab70d0  f30f11542414  MOVSS dword ptr [ESP + 0x14],XMM2
00ab70d6  f30f10542404  MOVSS XMM2,dword ptr [ESP + 0x4]
00ab70dc  f30f11542410  MOVSS dword ptr [ESP + 0x10],XMM2
00ab70e2  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
00ab70e7  0f59d0  MULPS XMM2,XMM0
00ab70ea  0f288190010000  MOVAPS XMM0,xmmword ptr [ECX + 0x190]
00ab70f1  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00ab70f4  0f58d0  ADDPS XMM2,XMM0
00ab70f7  0f58ca  ADDPS XMM1,XMM2
00ab70fa  0f2909  MOVAPS xmmword ptr [ECX],XMM1
00ab70fd  8be5  MOV ESP,EBP
00ab70ff  5d  POP EBP
00ab7100  c20800  RET 0x8

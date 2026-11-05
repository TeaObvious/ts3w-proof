# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cfa570 ObjectTool_DirectionToRawYaw
# Body [[00cfa570, 00cfa5d6]]; owned bytes=103
# Four stack words, RET10hex; first lot word unused here, dx at+8, dz at+C, float output pointer+10. AL0 writes0 for absolute-sum<or unordered against .01. FPATAN(-dz,dx), adds float3FC90FDC, storesFloat32; extended sum<0 then ADDSS40C90FDC to stored value. Ambient x87 precision/control remains inherited.
00cfa570  d9442408  FLD float ptr [ESP + 0x8]
00cfa574  d9c0  FLD ST0
00cfa576  d9e1  FABS
00cfa578  d944240c  FLD float ptr [ESP + 0xc]
00cfa57c  d9c0  FLD ST0
00cfa57e  d9e1  FABS
00cfa580  dec2  FADDP ST2,ST0
00cfa582  d905ece60601  FLD float ptr [0x0106e6ec]
00cfa588  d9ca  FXCH ST2
00cfa58a  dff2  FCOMIP ST0,ST2
00cfa58c  ddd9  FSTP ST1
00cfa58e  7233  JC 0x00cfa5c3
00cfa590  d9e0  FCHS
00cfa592  d9c9  FXCH
00cfa594  d9f3  FPATAN
00cfa596  d8052c400801  FADD float ptr [0x0108402c]
00cfa59c  d9542408  FST float ptr [ESP + 0x8]
00cfa5a0  d9ee  FLDZ
00cfa5a2  f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
00cfa5a8  dff1  FCOMIP ST0,ST1
00cfa5aa  ddd8  FSTP ST0
00cfa5ac  7608  JBE 0x00cfa5b6
00cfa5ae  f30f580528400801  ADDSS XMM0,dword ptr [0x01084028]
00cfa5b6  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00cfa5ba  f30f1100  MOVSS dword ptr [EAX],XMM0
00cfa5be  b001  MOV AL,0x1
00cfa5c0  c21000  RET 0x10
00cfa5c3  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00cfa5c7  ddd9  FSTP ST1
00cfa5c9  0f57c0  XORPS XMM0,XMM0
00cfa5cc  ddd8  FSTP ST0
00cfa5ce  f30f1101  MOVSS dword ptr [ECX],XMM0
00cfa5d2  32c0  XOR AL,AL
00cfa5d4  c21000  RET 0x10

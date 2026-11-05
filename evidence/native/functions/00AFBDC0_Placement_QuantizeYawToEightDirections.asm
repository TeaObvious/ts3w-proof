# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00afbdc0 Placement_QuantizeYawToEightDirections
# Body [[00afbdc0, 00afbdfa]]; owned bytes=59
# One float stack word, cdecl/plainRET, x87ST0 result. DIVSS by storedFloat32 bits3F490FDA, Float32 quotient store, FISTP under ambientCW, signed remainder8 then integer-times-step x87 result. Nearest/even is a supported host profile, not mode-setting native behavior.
00afbdc0  51  PUSH ECX
00afbdc1  f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
00afbdc7  f30f5e05d4451801  DIVSS XMM0,dword ptr [0x011845d4]
00afbdcf  f30f110424  MOVSS dword ptr [ESP],XMM0
00afbdd4  d90424  FLD float ptr [ESP]
00afbdd7  db5c2408  FISTP dword ptr [ESP + 0x8]
00afbddb  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00afbddf  2507000080  AND EAX,0x80000007
00afbde4  7905  JNS 0x00afbdeb
00afbde6  48  DEC EAX
00afbde7  83c8f8  OR EAX,0xfffffff8
00afbdea  40  INC EAX
00afbdeb  89442408  MOV dword ptr [ESP + 0x8],EAX
00afbdef  db442408  FILD dword ptr [ESP + 0x8]
00afbdf3  d80dd4451801  FMUL float ptr [0x011845d4]
00afbdf9  59  POP ECX
00afbdfa  c3  RET

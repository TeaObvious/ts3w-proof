# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00d0e9f0 RoofPitch_Construct
# Body [[00d0e9f0, 00d0ea5d]]; owned bytes=110
00d0e9f0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00d0e9f4  56  PUSH ESI
00d0e9f5  50  PUSH EAX
00d0e9f6  8bf1  MOV ESI,ECX
00d0e9f8  e8d34afcff  CALL 0x00cd34d0
00d0e9fd  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00d0ea05  c706b04c0801  MOV dword ptr [ESI],0x1084cb0
00d0ea0b  c74608ac310801  MOV dword ptr [ESI + 0x8],0x10831ac
00d0ea12  33c0  XOR EAX,EAX
00d0ea14  894634  MOV dword ptr [ESI + 0x34],EAX
00d0ea17  f30f114648  MOVSS dword ptr [ESI + 0x48],XMM0
00d0ea1c  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00d0ea24  f30f11464c  MOVSS dword ptr [ESI + 0x4c],XMM0
00d0ea29  c74654084d0801  MOV dword ptr [ESI + 0x54],0x1084d08
00d0ea30  894644  MOV dword ptr [ESI + 0x44],EAX
00d0ea33  894650  MOV dword ptr [ESI + 0x50],EAX
00d0ea36  c7464001000000  MOV dword ptr [ESI + 0x40],0x1
00d0ea3d  c7463c00d91401  MOV dword ptr [ESI + 0x3c],0x114d900
00d0ea44  884658  MOV byte ptr [ESI + 0x58],AL
00d0ea47  884659  MOV byte ptr [ESI + 0x59],AL
00d0ea4a  c7465cffffffff  MOV dword ptr [ESI + 0x5c],0xffffffff
00d0ea51  c746689cffffff  MOV dword ptr [ESI + 0x68],0xffffff9c
00d0ea58  8bc6  MOV EAX,ESI
00d0ea5a  5e  POP ESI
00d0ea5b  c20400  RET 0x4

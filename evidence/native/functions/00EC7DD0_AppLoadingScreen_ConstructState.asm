# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_ConstructState Entry 00ec7dd0
OWNED_RANGE 00ec7dd0:00ec7f0f
00ec7dd0: 53  PUSH EBX
00ec7dd1: 56  PUSH ESI
00ec7dd2: 57  PUSH EDI
00ec7dd3: 8bf1  MOV ESI,ECX
00ec7dd5: e8b6e264ff  CALL 0x00516090
00ec7dda: f30f1005c82b0601  MOVSS XMM0,dword ptr [0x01062bc8]
00ec7de2: f30f118650020000  MOVSS dword ptr [ESI + 0x250],XMM0
00ec7dea: f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00ec7df2: 33db  XOR EBX,EBX
00ec7df4: f30f118654020000  MOVSS dword ptr [ESI + 0x254],XMM0
00ec7dfc: f30f10059c2bfa00  MOVSS XMM0,dword ptr [0x00fa2b9c]
00ec7e04: f30f118658020000  MOVSS dword ptr [ESI + 0x258],XMM0
00ec7e0c: 0f57c0  XORPS XMM0,XMM0
00ec7e0f: c706505a0f01  MOV dword ptr [ESI],0x10f5a50
00ec7e15: c7460428590f01  MOV dword ptr [ESI + 0x4],0x10f5928
00ec7e1c: 899e5c020000  MOV dword ptr [ESI + 0x25c],EBX
00ec7e22: f30f118660020000  MOVSS dword ptr [ESI + 0x260],XMM0
00ec7e2a: 899e64020000  MOV dword ptr [ESI + 0x264],EBX
00ec7e30: 899e68020000  MOV dword ptr [ESI + 0x268],EBX
00ec7e36: 899e6c020000  MOV dword ptr [ESI + 0x26c],EBX
00ec7e3c: 899e74020000  MOV dword ptr [ESI + 0x274],EBX
00ec7e42: 899e78020000  MOV dword ptr [ESI + 0x278],EBX
00ec7e48: 899e7c020000  MOV dword ptr [ESI + 0x27c],EBX
00ec7e4e: 899e80020000  MOV dword ptr [ESI + 0x280],EBX
00ec7e54: 899e84020000  MOV dword ptr [ESI + 0x284],EBX
00ec7e5a: 899e88020000  MOV dword ptr [ESI + 0x288],EBX
00ec7e60: 899e8c020000  MOV dword ptr [ESI + 0x28c],EBX
00ec7e66: 899e90020000  MOV dword ptr [ESI + 0x290],EBX
00ec7e6c: 8d7e04  LEA EDI,[ESI + 0x4]
00ec7e6f: b804590f01  MOV EAX,0x10f5904
00ec7e74: 898694020000  MOV dword ptr [ESI + 0x294],EAX
00ec7e7a: 53  PUSH EBX
00ec7e7b: 899e98020000  MOV dword ptr [ESI + 0x298],EBX
00ec7e81: 899e9c020000  MOV dword ptr [ESI + 0x29c],EBX
00ec7e87: 899ea0020000  MOV dword ptr [ESI + 0x2a0],EBX
00ec7e8d: 6a05  PUSH 0x5
00ec7e8f: 8d8ea8020000  LEA ECX,[ESI + 0x2a8]
00ec7e95: 8986a4020000  MOV dword ptr [ESI + 0x2a4],EAX
00ec7e9b: e810bb62ff  CALL 0x004f39b0
00ec7ea0: 53  PUSH EBX
00ec7ea1: 6a05  PUSH 0x5
00ec7ea3: 8d8ec0020000  LEA ECX,[ESI + 0x2c0]
00ec7ea9: e802bb62ff  CALL 0x004f39b0
00ec7eae: 0f57c0  XORPS XMM0,XMM0
00ec7eb1: 6aff  PUSH -0x1
00ec7eb3: 8d8edc020000  LEA ECX,[ESI + 0x2dc]
00ec7eb9: f30f1186d8020000  MOVSS dword ptr [ESI + 0x2d8],XMM0
00ec7ec1: e82a2b63ff  CALL 0x004fa9f0
00ec7ec6: 0f57c0  XORPS XMM0,XMM0
00ec7ec9: 6878769495  PUSH 0x95947678
00ec7ece: 8bcf  MOV ECX,EDI
00ec7ed0: 889ee0020000  MOV byte ptr [ESI + 0x2e0],BL
00ec7ed6: c686e102000001  MOV byte ptr [ESI + 0x2e1],0x1
00ec7edd: 889ee2020000  MOV byte ptr [ESI + 0x2e2],BL
00ec7ee3: f30f1186e4020000  MOVSS dword ptr [ESI + 0x2e4],XMM0
00ec7eeb: f30f1186e8020000  MOVSS dword ptr [ESI + 0x2e8],XMM0
00ec7ef3: 899ef0020000  MOV dword ptr [ESI + 0x2f0],EBX
00ec7ef9: 899ef4020000  MOV dword ptr [ESI + 0x2f4],EBX
00ec7eff: 889ef8020000  MOV byte ptr [ESI + 0x2f8],BL
00ec7f05: e876bb64ff  CALL 0x00513a80
00ec7f0a: 5f  POP EDI
00ec7f0b: 8bc6  MOV EAX,ESI
00ec7f0d: 5e  POP ESI
00ec7f0e: 5b  POP EBX
00ec7f0f: c3  RET
Total instructions: 65; owned bytes: 320

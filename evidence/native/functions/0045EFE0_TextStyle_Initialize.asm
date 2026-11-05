# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined2 * TextStyle_Initialize(undefined2 * param_1)
Owned ranges: [[0045efe0, 0045f085]]

0045efe0  56  PUSH ESI
0045efe1  8bf1  MOV ESI,ECX
0045efe3  e898feffff  CALL 0x0045ee80
0045efe8  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
0045eff0  33c0  XOR EAX,EAX
0045eff2  83c9ff  OR ECX,0xffffffff
0045eff5  f30f118668020000  MOVSS dword ptr [ESI + 0x268],XMM0
0045effd  0f57c0  XORPS XMM0,XMM0
0045f000  898628020000  MOV dword ptr [ESI + 0x228],EAX
0045f006  898634020000  MOV dword ptr [ESI + 0x234],EAX
0045f00c  898638020000  MOV dword ptr [ESI + 0x238],EAX
0045f012  89863c020000  MOV dword ptr [ESI + 0x23c],EAX
0045f018  898640020000  MOV dword ptr [ESI + 0x240],EAX
0045f01e  898644020000  MOV dword ptr [ESI + 0x244],EAX
0045f024  898648020000  MOV dword ptr [ESI + 0x248],EAX
0045f02a  89864c020000  MOV dword ptr [ESI + 0x24c],EAX
0045f030  898654020000  MOV dword ptr [ESI + 0x254],EAX
0045f036  898658020000  MOV dword ptr [ESI + 0x258],EAX
0045f03c  89865c020000  MOV dword ptr [ESI + 0x25c],EAX
0045f042  898660020000  MOV dword ptr [ESI + 0x260],EAX
0045f048  898664020000  MOV dword ptr [ESI + 0x264],EAX
0045f04e  898e24020000  MOV dword ptr [ESI + 0x224],ECX
0045f054  898e2c020000  MOV dword ptr [ESI + 0x22c],ECX
0045f05a  898e30020000  MOV dword ptr [ESI + 0x230],ECX
0045f060  c7865002000004000000  MOV dword ptr [ESI + 0x250],0x4
0045f06a  f30f11866c020000  MOVSS dword ptr [ESI + 0x26c],XMM0
0045f072  f30f118670020000  MOVSS dword ptr [ESI + 0x270],XMM0
0045f07a  f30f118674020000  MOVSS dword ptr [ESI + 0x274],XMM0
0045f082  8bc6  MOV EAX,ESI
0045f084  5e  POP ESI
0045f085  c3  RET

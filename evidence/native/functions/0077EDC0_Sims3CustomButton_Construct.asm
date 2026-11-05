# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077EDC0_Sims3CustomButton_Construct.c
Owned ranges: [[0077edc0, 0077ee0a]]

0077edc0  56  PUSH ESI
0077edc1  8bf1  MOV ESI,ECX
0077edc3  e8b8b9d9ff  CALL 0x0051a780
0077edc8  c786e002000094b30301  MOV dword ptr [ESI + 0x2e0],0x103b394
0077edd2  c70600f50001  MOV dword ptr [ESI],0x100f500
0077edd8  c74604d8f30001  MOV dword ptr [ESI + 0x4],0x100f3d8
0077eddf  c7865002000060f30001  MOV dword ptr [ESI + 0x250],0x100f360
0077ede9  c786e002000044f30001  MOV dword ptr [ESI + 0x2e0],0x100f344
0077edf3  c786e402000000000000  MOV dword ptr [ESI + 0x2e4],0x0
0077edfd  c786e802000001000000  MOV dword ptr [ESI + 0x2e8],0x1
0077ee07  8bc6  MOV EAX,ESI
0077ee09  5e  POP ESI
0077ee0a  c3  RET

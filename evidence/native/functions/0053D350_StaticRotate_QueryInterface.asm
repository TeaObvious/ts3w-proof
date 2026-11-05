# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053D350_StaticRotate_QueryInterface.c
Owned ranges: [[0053d350, 0053d368]]

0053d350  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0053d354  3d55687d03  CMP EAX,0x37d6855
0053d359  7409  JZ 0x0053d364
0053d35b  89442404  MOV dword ptr [ESP + 0x4],EAX
0053d35f  e91c78fcff  JMP 0x00504b80
0053d364  8bc1  MOV EAX,ECX
0053d366  c20400  RET 0x4

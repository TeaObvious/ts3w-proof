# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004ec520, 004ec531]]
Signature: undefined RefPackCodec_Initialize(void * this, undefined4 param_1)

004ec520  8bc1  MOV EAX,ECX
004ec522  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004ec526  c70058a0fb00  MOV dword ptr [EAX],0xfba058
004ec52c  894804  MOV dword ptr [EAX + 0x4],ECX
004ec52f  c20400  RET 0x4

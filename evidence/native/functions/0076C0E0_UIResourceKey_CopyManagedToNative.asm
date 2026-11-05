# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[0076c0e0, 0076c0fc]]
Signature: undefined4 * UIResourceKey_CopyManagedToNative(void * this, undefined4 * outputKey)

0076c0e0  8b442404  MOV EAX,dword ptr [ESP + 0x4] ; EAX captures caller-owned output pointer; all10 instructions retain it throughRET4.
0076c0e4  8b5108  MOV EDX,dword ptr [ECX + 0x8]
0076c0e7  8910  MOV dword ptr [EAX],EDX
0076c0e9  8b510c  MOV EDX,dword ptr [ECX + 0xc]
0076c0ec  895004  MOV dword ptr [EAX + 0x4],EDX
0076c0ef  8b11  MOV EDX,dword ptr [ECX] ; After copying instance lanes, read original managed TypeId/GroupId; input/output overlap is not guarded.
0076c0f1  8b4904  MOV ECX,dword ptr [ECX + 0x4]
0076c0f4  895008  MOV dword ptr [EAX + 0x8],EDX
0076c0f7  89480c  MOV dword ptr [EAX + 0xc],ECX
0076c0fa  c20400  RET 0x4 ; RET4 consumes only output-pointer stackword; EAX is same output pointer, consumed by783090.

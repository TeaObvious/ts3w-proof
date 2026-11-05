# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsManager_InitializeState(undefined4 * param_1)
Owned ranges: [[007fcbc0, 007fcc1a]]

007fcbc0  8bc1  MOV EAX,ECX
007fcbc2  33c9  XOR ECX,ECX
007fcbc4  8908  MOV dword ptr [EAX],ECX
007fcbc6  894804  MOV dword ptr [EAX + 0x4],ECX
007fcbc9  894808  MOV dword ptr [EAX + 0x8],ECX
007fcbcc  c7400c90030201  MOV dword ptr [EAX + 0xc],0x1020390
007fcbd3  8b10  MOV EDX,dword ptr [EAX]
007fcbd5  895010  MOV dword ptr [EAX + 0x10],EDX
007fcbd8  894814  MOV dword ptr [EAX + 0x14],ECX
007fcbdb  884818  MOV byte ptr [EAX + 0x18],CL
007fcbde  884819  MOV byte ptr [EAX + 0x19],CL
007fcbe1  89481c  MOV dword ptr [EAX + 0x1c],ECX
007fcbe4  894820  MOV dword ptr [EAX + 0x20],ECX
007fcbe7  894824  MOV dword ptr [EAX + 0x24],ECX
007fcbea  c7402878030201  MOV dword ptr [EAX + 0x28],0x1020378
007fcbf1  89482c  MOV dword ptr [EAX + 0x2c],ECX
007fcbf4  894830  MOV dword ptr [EAX + 0x30],ECX
007fcbf7  894834  MOV dword ptr [EAX + 0x34],ECX
007fcbfa  c740385c030201  MOV dword ptr [EAX + 0x38],0x102035c
007fcc01  c7403c3c000000  MOV dword ptr [EAX + 0x3c],0x3c
007fcc08  c7404010000000  MOV dword ptr [EAX + 0x40],0x10
007fcc0f  c7404423000000  MOV dword ptr [EAX + 0x44],0x23
007fcc16  c6404801  MOV byte ptr [EAX + 0x48],0x1
007fcc1a  c3  RET

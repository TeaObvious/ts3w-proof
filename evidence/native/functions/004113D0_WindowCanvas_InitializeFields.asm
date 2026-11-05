# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body.
Actual annotated Ghidra pseudocode: 004113D0_WindowCanvas_InitializeFields.c
Owned ranges: [[004113d0, 00411489]]

004113d0  8bc1  MOV EAX,ECX
004113d2  33c9  XOR ECX,ECX
004113d4  c70080b3f900  MOV dword ptr [EAX],0xf9b380
004113da  c740040f000000  MOV dword ptr [EAX + 0x4],0xf
004113e1  c740082a000000  MOV dword ptr [EAX + 0x8],0x2a
004113e8  88480c  MOV byte ptr [EAX + 0xc],CL
004113eb  88480d  MOV byte ptr [EAX + 0xd],CL
004113ee  88480e  MOV byte ptr [EAX + 0xe],CL
004113f1  88480f  MOV byte ptr [EAX + 0xf],CL
004113f4  884810  MOV byte ptr [EAX + 0x10],CL
004113f7  884811  MOV byte ptr [EAX + 0x11],CL
004113fa  894814  MOV dword ptr [EAX + 0x14],ECX
004113fd  894818  MOV dword ptr [EAX + 0x18],ECX
00411400  88481c  MOV byte ptr [EAX + 0x1c],CL
00411403  894820  MOV dword ptr [EAX + 0x20],ECX
00411406  c7403064b3f900  MOV dword ptr [EAX + 0x30],0xf9b364
0041140d  c7402c568e1c01  MOV dword ptr [EAX + 0x2c],0x11c8e56
00411414  ba548e1c01  MOV EDX,0x11c8e54
00411419  895024  MOV dword ptr [EAX + 0x24],EDX
0041141c  895028  MOV dword ptr [EAX + 0x28],EDX
0041141f  894834  MOV dword ptr [EAX + 0x34],ECX
00411422  894838  MOV dword ptr [EAX + 0x38],ECX
00411425  89483c  MOV dword ptr [EAX + 0x3c],ECX
00411428  894840  MOV dword ptr [EAX + 0x40],ECX
0041142b  894844  MOV dword ptr [EAX + 0x44],ECX
0041142e  894848  MOV dword ptr [EAX + 0x48],ECX
00411431  c6404c01  MOV byte ptr [EAX + 0x4c],0x1
00411435  88484d  MOV byte ptr [EAX + 0x4d],CL
00411438  88484e  MOV byte ptr [EAX + 0x4e],CL
0041143b  88484f  MOV byte ptr [EAX + 0x4f],CL
0041143e  c74050d0070000  MOV dword ptr [EAX + 0x50],0x7d0
00411445  894854  MOV dword ptr [EAX + 0x54],ECX
00411448  894858  MOV dword ptr [EAX + 0x58],ECX
0041144b  89485c  MOV dword ptr [EAX + 0x5c],ECX
0041144e  894860  MOV dword ptr [EAX + 0x60],ECX
00411451  894864  MOV dword ptr [EAX + 0x64],ECX
00411454  894868  MOV dword ptr [EAX + 0x68],ECX
00411457  6689486c  MOV word ptr [EAX + 0x6c],CX
0041145b  894870  MOV dword ptr [EAX + 0x70],ECX
0041145e  894874  MOV dword ptr [EAX + 0x74],ECX
00411461  894878  MOV dword ptr [EAX + 0x78],ECX
00411464  89487c  MOV dword ptr [EAX + 0x7c],ECX
00411467  c780800000000000c800  MOV dword ptr [EAX + 0x80],0xc80000
00411471  898884000000  MOV dword ptr [EAX + 0x84],ECX
00411477  898888000000  MOV dword ptr [EAX + 0x88],ECX
0041147d  89888c000000  MOV dword ptr [EAX + 0x8c],ECX
00411483  898890000000  MOV dword ptr [EAX + 0x90],ECX
00411489  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097eec0 (CASPartResourceWrap_GetGuid)
Paired Ghidra pseudocode: 1097EEC0_CASPartResourceWrap_GetGuid.c
Window: [0x1097eec0, 0x1097ef10) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ef10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097eec0: 56 6a 10 6a 00 6a 11 ff 15 e4 b6 aa 10 8b f0 85
1097eed0: f6 74 32 56 ff 15 e8 b6 aa 10 85 c0 7c 25 8b 4c
1097eee0: 24 08 8b 51 28 8b 46 0c 89 10 8b 51 2c 89 50 04
1097eef0: 8b 51 30 89 50 08 8b 49 34 56 89 48 0c ff 15 ec
1097ef00: b6 aa 10 8b c6 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097eec0 <.text+0x97dec0>:
1097eec0:	56                                              	push   esi
1097eec1:	6a 10                                           	push   0x10
1097eec3:	6a 00                                           	push   0x0
1097eec5:	6a 11                                           	push   0x11
1097eec7:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
1097eecd:	8b f0                                           	mov    esi,eax
1097eecf:	85 f6                                           	test   esi,esi
1097eed1:	74 32                                           	je     0x1097ef05
1097eed3:	56                                              	push   esi
1097eed4:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
1097eeda:	85 c0                                           	test   eax,eax
1097eedc:	7c 25                                           	jl     0x1097ef03
1097eede:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097eee2:	8b 51 28                                        	mov    edx,DWORD PTR [ecx+0x28]
1097eee5:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
1097eee8:	89 10                                           	mov    DWORD PTR [eax],edx
1097eeea:	8b 51 2c                                        	mov    edx,DWORD PTR [ecx+0x2c]
1097eeed:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1097eef0:	8b 51 30                                        	mov    edx,DWORD PTR [ecx+0x30]
1097eef3:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1097eef6:	8b 49 34                                        	mov    ecx,DWORD PTR [ecx+0x34]
1097eef9:	56                                              	push   esi
1097eefa:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1097eefd:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
1097ef03:	8b c6                                           	mov    eax,esi
1097ef05:	5e                                              	pop    esi
1097ef06:	c3                                              	ret
1097ef07:	cc                                              	int3
1097ef08:	cc                                              	int3
1097ef09:	cc                                              	int3
1097ef0a:	cc                                              	int3
1097ef0b:	cc                                              	int3
1097ef0c:	cc                                              	int3
1097ef0d:	cc                                              	int3
1097ef0e:	cc                                              	int3
1097ef0f:	cc                                              	int3

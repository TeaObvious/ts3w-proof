# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580ea0 (World_LotGetCornersImpl)
Paired Ghidra pseudocode: 10580EA0_World_LotGetCornersImpl.c
Window: [0x10580ea0, 0x10580ee0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580ea0: 8b 44 24 0c 8b 4c 24 08 83 ec 30 56 57 50 51 8d
10580eb0: 54 24 10 52 e8 e7 bc ff ff 8b f0 8b 44 24 48 83
10580ec0: c4 0c b9 0c 00 00 00 8b f8 f3 a5 5f 5e 83 c4 30
10580ed0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580ea0 <.text+0x57fea0>:
10580ea0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10580ea4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10580ea8:	83 ec 30                                        	sub    esp,0x30
10580eab:	56                                              	push   esi
10580eac:	57                                              	push   edi
10580ead:	50                                              	push   eax
10580eae:	51                                              	push   ecx
10580eaf:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10580eb3:	52                                              	push   edx
10580eb4:	e8 e7 bc ff ff                                  	call   0x1057cba0
10580eb9:	8b f0                                           	mov    esi,eax
10580ebb:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
10580ebf:	83 c4 0c                                        	add    esp,0xc
10580ec2:	b9 0c 00 00 00                                  	mov    ecx,0xc
10580ec7:	8b f8                                           	mov    edi,eax
10580ec9:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10580ecb:	5f                                              	pop    edi
10580ecc:	5e                                              	pop    esi
10580ecd:	83 c4 30                                        	add    esp,0x30
10580ed0:	c3                                              	ret
10580ed1:	cc                                              	int3
10580ed2:	cc                                              	int3
10580ed3:	cc                                              	int3
10580ed4:	cc                                              	int3
10580ed5:	cc                                              	int3
10580ed6:	cc                                              	int3
10580ed7:	cc                                              	int3
10580ed8:	cc                                              	int3
10580ed9:	cc                                              	int3
10580eda:	cc                                              	int3
10580edb:	cc                                              	int3
10580edc:	cc                                              	int3
10580edd:	cc                                              	int3
10580ede:	cc                                              	int3
10580edf:	cc                                              	int3

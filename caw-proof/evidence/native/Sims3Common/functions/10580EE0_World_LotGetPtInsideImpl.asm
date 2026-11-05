# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580ee0 (World_LotGetPtInsideImpl)
Paired Ghidra pseudocode: 10580EE0_World_LotGetPtInsideImpl.c
Window: [0x10580ee0, 0x10580f20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580ee0: 8b 44 24 0c 8b 4c 24 08 83 ec 0c 50 51 8d 54 24
10580ef0: 08 52 e8 f9 bd ff ff 8b 10 8b 4c 24 1c 89 11 8b
10580f00: 50 04 8b 40 08 89 51 04 89 41 08 8b c1 83 c4 18
10580f10: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580ee0 <.text+0x57fee0>:
10580ee0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10580ee4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10580ee8:	83 ec 0c                                        	sub    esp,0xc
10580eeb:	50                                              	push   eax
10580eec:	51                                              	push   ecx
10580eed:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10580ef1:	52                                              	push   edx
10580ef2:	e8 f9 bd ff ff                                  	call   0x1057ccf0
10580ef7:	8b 10                                           	mov    edx,DWORD PTR [eax]
10580ef9:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10580efd:	89 11                                           	mov    DWORD PTR [ecx],edx
10580eff:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10580f02:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10580f05:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10580f08:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
10580f0b:	8b c1                                           	mov    eax,ecx
10580f0d:	83 c4 18                                        	add    esp,0x18
10580f10:	c3                                              	ret
10580f11:	cc                                              	int3
10580f12:	cc                                              	int3
10580f13:	cc                                              	int3
10580f14:	cc                                              	int3
10580f15:	cc                                              	int3
10580f16:	cc                                              	int3
10580f17:	cc                                              	int3
10580f18:	cc                                              	int3
10580f19:	cc                                              	int3
10580f1a:	cc                                              	int3
10580f1b:	cc                                              	int3
10580f1c:	cc                                              	int3
10580f1d:	cc                                              	int3
10580f1e:	cc                                              	int3
10580f1f:	cc                                              	int3

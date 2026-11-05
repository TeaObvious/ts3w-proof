# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3dd0 (CASUtils_SimOutfitGetPartImpl)
Paired Ghidra pseudocode: 103A3DD0_CASUtils_SimOutfitGetPartImpl.c
Window: [0x103a3dd0, 0x103a3e10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3e10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3dd0: 8b 44 24 0c 8b 4c 24 08 83 ec 48 56 57 50 51 8d
103a3de0: 54 24 10 52 e8 17 f7 ff ff 8b f0 8b 44 24 60 83
103a3df0: c4 0c b9 12 00 00 00 8b f8 f3 a5 5f 5e 83 c4 48
103a3e00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3dd0 <.text+0x3a2dd0>:
103a3dd0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a3dd4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a3dd8:	83 ec 48                                        	sub    esp,0x48
103a3ddb:	56                                              	push   esi
103a3ddc:	57                                              	push   edi
103a3ddd:	50                                              	push   eax
103a3dde:	51                                              	push   ecx
103a3ddf:	8d 54 24 10                                     	lea    edx,[esp+0x10]
103a3de3:	52                                              	push   edx
103a3de4:	e8 17 f7 ff ff                                  	call   0x103a3500
103a3de9:	8b f0                                           	mov    esi,eax
103a3deb:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
103a3def:	83 c4 0c                                        	add    esp,0xc
103a3df2:	b9 12 00 00 00                                  	mov    ecx,0x12
103a3df7:	8b f8                                           	mov    edi,eax
103a3df9:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a3dfb:	5f                                              	pop    edi
103a3dfc:	5e                                              	pop    esi
103a3dfd:	83 c4 48                                        	add    esp,0x48
103a3e00:	c3                                              	ret
103a3e01:	cc                                              	int3
103a3e02:	cc                                              	int3
103a3e03:	cc                                              	int3
103a3e04:	cc                                              	int3
103a3e05:	cc                                              	int3
103a3e06:	cc                                              	int3
103a3e07:	cc                                              	int3
103a3e08:	cc                                              	int3
103a3e09:	cc                                              	int3
103a3e0a:	cc                                              	int3
103a3e0b:	cc                                              	int3
103a3e0c:	cc                                              	int3
103a3e0d:	cc                                              	int3
103a3e0e:	cc                                              	int3
103a3e0f:	cc                                              	int3

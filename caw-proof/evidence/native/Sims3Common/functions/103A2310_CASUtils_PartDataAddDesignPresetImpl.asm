# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a2310 (CASUtils_PartDataAddDesignPresetImpl)
Paired Ghidra pseudocode: 103A2310_CASUtils_PartDataAddDesignPresetImpl.c
Window: [0x103a2310, 0x103a2340) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a2340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a2310: 8b 44 24 14 8b 4c 24 04 8b 54 24 08 50 83 ec 10
103a2320: 8b c4 89 08 8b 4c 24 20 89 50 04 8b 54 24 24 89
103a2330: 48 08 89 50 0c e8 c6 ce ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a2310 <.text+0x3a1310>:
103a2310:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a2314:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a2318:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a231c:	50                                              	push   eax
103a231d:	83 ec 10                                        	sub    esp,0x10
103a2320:	8b c4                                           	mov    eax,esp
103a2322:	89 08                                           	mov    DWORD PTR [eax],ecx
103a2324:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a2328:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a232b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a232f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a2332:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a2335:	e8 c6 ce ff ff                                  	call   0x1039f200
103a233a:	83 c4 14                                        	add    esp,0x14
103a233d:	c3                                              	ret
103a233e:	cc                                              	int3
103a233f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990ae0 (SimBuilderWrap_GetPartKey)
Paired Ghidra pseudocode: 10990AE0_SimBuilderWrap_GetPartKey.c
Window: [0x10990ae0, 0x10990b20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990ae0: 8b 44 24 0c 83 ec 10 50 8d 4c 24 04 51 8b 4c 24
10990af0: 20 e8 4a fd ff ff 8b 44 24 14 8b 54 24 08 8b 0c
10990b00: 24 89 10 8b 54 24 04 89 48 08 8b 4c 24 0c 89 50
10990b10: 0c 89 48 04 83 c4 10 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990ae0 <.text+0x98fae0>:
10990ae0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10990ae4:	83 ec 10                                        	sub    esp,0x10
10990ae7:	50                                              	push   eax
10990ae8:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10990aec:	51                                              	push   ecx
10990aed:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10990af1:	e8 4a fd ff ff                                  	call   0x10990840
10990af6:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10990afa:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10990afe:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
10990b01:	89 10                                           	mov    DWORD PTR [eax],edx
10990b03:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10990b07:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10990b0a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10990b0e:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10990b11:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10990b14:	83 c4 10                                        	add    esp,0x10
10990b17:	c3                                              	ret
10990b18:	cc                                              	int3
10990b19:	cc                                              	int3
10990b1a:	cc                                              	int3
10990b1b:	cc                                              	int3
10990b1c:	cc                                              	int3
10990b1d:	cc                                              	int3
10990b1e:	cc                                              	int3
10990b1f:	cc                                              	int3

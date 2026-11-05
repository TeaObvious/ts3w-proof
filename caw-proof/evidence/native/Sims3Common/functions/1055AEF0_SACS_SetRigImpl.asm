# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055aef0 (SACS_SetRigImpl)
Paired Ghidra pseudocode: 1055AEF0_SACS_SetRigImpl.c
Window: [0x1055aef0, 0x1055af30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055af30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055aef0: 8b 4c 24 0c 8b 54 24 10 83 ec 10 8b c4 89 08 8b
1055af00: 4c 24 24 89 50 04 8b 54 24 28 89 48 08 8b 4c 24
1055af10: 14 89 50 0c 8b 44 24 18 50 51 e8 c1 fc ff ff 83
1055af20: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055aef0 <.text+0x559ef0>:
1055aef0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055aef4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1055aef8:	83 ec 10                                        	sub    esp,0x10
1055aefb:	8b c4                                           	mov    eax,esp
1055aefd:	89 08                                           	mov    DWORD PTR [eax],ecx
1055aeff:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1055af03:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1055af06:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1055af0a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1055af0d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055af11:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1055af14:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1055af18:	50                                              	push   eax
1055af19:	51                                              	push   ecx
1055af1a:	e8 c1 fc ff ff                                  	call   0x1055abe0
1055af1f:	83 c4 18                                        	add    esp,0x18
1055af22:	c3                                              	ret
1055af23:	cc                                              	int3
1055af24:	cc                                              	int3
1055af25:	cc                                              	int3
1055af26:	cc                                              	int3
1055af27:	cc                                              	int3
1055af28:	cc                                              	int3
1055af29:	cc                                              	int3
1055af2a:	cc                                              	int3
1055af2b:	cc                                              	int3
1055af2c:	cc                                              	int3
1055af2d:	cc                                              	int3
1055af2e:	cc                                              	int3
1055af2f:	cc                                              	int3

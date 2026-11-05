# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3940 (CASUtils_KeySearchGetCurrentImpl)
Paired Ghidra pseudocode: 103A3940_CASUtils_KeySearchGetCurrentImpl.c
Window: [0x103a3940, 0x103a3980) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3940: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 4e ee
103a3950: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
103a3960: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
103a3970: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3940 <.text+0x3a2940>:
103a3940:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a3944:	83 ec 10                                        	sub    esp,0x10
103a3947:	50                                              	push   eax
103a3948:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
103a394c:	51                                              	push   ecx
103a394d:	e8 4e ee ff ff                                  	call   0x103a27a0
103a3952:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a3956:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a3958:	89 11                                           	mov    DWORD PTR [ecx],edx
103a395a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a395d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a3960:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a3963:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a3966:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a3969:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a396c:	8b c1                                           	mov    eax,ecx
103a396e:	83 c4 18                                        	add    esp,0x18
103a3971:	c3                                              	ret
103a3972:	cc                                              	int3
103a3973:	cc                                              	int3
103a3974:	cc                                              	int3
103a3975:	cc                                              	int3
103a3976:	cc                                              	int3
103a3977:	cc                                              	int3
103a3978:	cc                                              	int3
103a3979:	cc                                              	int3
103a397a:	cc                                              	int3
103a397b:	cc                                              	int3
103a397c:	cc                                              	int3
103a397d:	cc                                              	int3
103a397e:	cc                                              	int3
103a397f:	cc                                              	int3

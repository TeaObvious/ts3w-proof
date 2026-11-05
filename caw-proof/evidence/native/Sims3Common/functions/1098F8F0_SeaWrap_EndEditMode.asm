# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f8f0 (SeaWrap_EndEditMode)
Paired Ghidra pseudocode: 1098F8F0_SeaWrap_EndEditMode.c
Window: [0x1098f8f0, 0x1098f940) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f8f0: 83 ec 10 83 7c 24 18 00 74 0f 8b 4c 24 14 6a 00
1098f900: e8 7b 99 84 ff 83 c4 10 c3 8b 4c 24 20 8b 44 24
1098f910: 1c 8b 54 24 24 89 4c 24 04 8d 0c 24 89 04 24 8b
1098f920: 44 24 28 51 8b 4c 24 18 89 54 24 0c 89 44 24 10
1098f930: e8 4b 99 84 ff 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f8f0 <.text+0x98e8f0>:
1098f8f0:	83 ec 10                                        	sub    esp,0x10
1098f8f3:	83 7c 24 18 00                                  	cmp    DWORD PTR [esp+0x18],0x0
1098f8f8:	74 0f                                           	je     0x1098f909
1098f8fa:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098f8fe:	6a 00                                           	push   0x0
1098f900:	e8 7b 99 84 ff                                  	call   0x101d9280
1098f905:	83 c4 10                                        	add    esp,0x10
1098f908:	c3                                              	ret
1098f909:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1098f90d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098f911:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1098f915:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1098f919:	8d 0c 24                                        	lea    ecx,[esp]
1098f91c:	89 04 24                                        	mov    DWORD PTR [esp],eax
1098f91f:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1098f923:	51                                              	push   ecx
1098f924:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098f928:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1098f92c:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1098f930:	e8 4b 99 84 ff                                  	call   0x101d9280
1098f935:	83 c4 10                                        	add    esp,0x10
1098f938:	c3                                              	ret
1098f939:	cc                                              	int3
1098f93a:	cc                                              	int3
1098f93b:	cc                                              	int3
1098f93c:	cc                                              	int3
1098f93d:	cc                                              	int3
1098f93e:	cc                                              	int3
1098f93f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f940 (SeaWrap_RebuildWaterGeometry)
Paired Ghidra pseudocode: 1098F940_SeaWrap_RebuildWaterGeometry.c
Window: [0x1098f940, 0x1098f980) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f940: 8b 4c 24 04 83 ec 10 85 c9 74 28 8b 44 24 18 8b
1098f950: 54 24 1c 89 04 24 8b 44 24 20 89 44 24 08 89 54
1098f960: 24 04 8b 54 24 24 8d 04 24 50 89 54 24 10 e8 4d
1098f970: 99 84 ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f940 <.text+0x98e940>:
1098f940:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098f944:	83 ec 10                                        	sub    esp,0x10
1098f947:	85 c9                                           	test   ecx,ecx
1098f949:	74 28                                           	je     0x1098f973
1098f94b:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098f94f:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1098f953:	89 04 24                                        	mov    DWORD PTR [esp],eax
1098f956:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1098f95a:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1098f95e:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1098f962:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1098f966:	8d 04 24                                        	lea    eax,[esp]
1098f969:	50                                              	push   eax
1098f96a:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1098f96e:	e8 4d 99 84 ff                                  	call   0x101d92c0
1098f973:	83 c4 10                                        	add    esp,0x10
1098f976:	c3                                              	ret
1098f977:	cc                                              	int3
1098f978:	cc                                              	int3
1098f979:	cc                                              	int3
1098f97a:	cc                                              	int3
1098f97b:	cc                                              	int3
1098f97c:	cc                                              	int3
1098f97d:	cc                                              	int3
1098f97e:	cc                                              	int3
1098f97f:	cc                                              	int3

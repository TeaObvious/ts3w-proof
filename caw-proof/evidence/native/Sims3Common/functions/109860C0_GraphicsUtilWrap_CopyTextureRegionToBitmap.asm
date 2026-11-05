# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109860c0 (GraphicsUtilWrap_CopyTextureRegionToBitmap)
Paired Ghidra pseudocode: 109860C0_GraphicsUtilWrap_CopyTextureRegionToBitmap.c
Window: [0x109860c0, 0x10986110) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109860c0: 83 ec 10 8b 4c 24 1c 8b 44 24 18 8b 54 24 20 89
109860d0: 04 24 8b 44 24 24 89 4c 24 04 8b 4c 24 34 51 8b
109860e0: 4c 24 2c 89 54 24 0c 8b 54 24 34 52 89 44 24 14
109860f0: 8b 44 24 34 50 8b 44 24 20 51 8d 54 24 10 52 50
10986100: e8 2b fe ff ff 83 c4 28 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109860c0 <.text+0x9850c0>:
109860c0:	83 ec 10                                        	sub    esp,0x10
109860c3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109860c7:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
109860cb:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
109860cf:	89 04 24                                        	mov    DWORD PTR [esp],eax
109860d2:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
109860d6:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
109860da:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
109860de:	51                                              	push   ecx
109860df:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
109860e3:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
109860e7:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
109860eb:	52                                              	push   edx
109860ec:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
109860f0:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
109860f4:	50                                              	push   eax
109860f5:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109860f9:	51                                              	push   ecx
109860fa:	8d 54 24 10                                     	lea    edx,[esp+0x10]
109860fe:	52                                              	push   edx
109860ff:	50                                              	push   eax
10986100:	e8 2b fe ff ff                                  	call   0x10985f30
10986105:	83 c4 28                                        	add    esp,0x28
10986108:	c3                                              	ret
10986109:	cc                                              	int3
1098610a:	cc                                              	int3
1098610b:	cc                                              	int3
1098610c:	cc                                              	int3
1098610d:	cc                                              	int3
1098610e:	cc                                              	int3
1098610f:	cc                                              	int3

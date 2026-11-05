# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109862a0 (GraphicsUtilWrap_DrawCircle)
Paired Ghidra pseudocode: 109862A0_GraphicsUtilWrap_DrawCircle.c
Window: [0x109862a0, 0x109862e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109862e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109862a0: 55 8b ec 83 e4 f0 8b 4d 10 d9 45 0c 8b 55 08 83
109862b0: ec 40 83 7d 14 00 0f 95 c0 50 51 51 d9 1c 24 52
109862c0: 8d 44 24 10 50 e8 96 9e ff ff 83 c4 08 50 e8 ed
109862d0: c2 c3 ff 83 c4 10 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
109862a0 <.text+0x9852a0>:
109862a0:	55                                              	push   ebp
109862a1:	8b ec                                           	mov    ebp,esp
109862a3:	83 e4 f0                                        	and    esp,0xfffffff0
109862a6:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
109862a9:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
109862ac:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
109862af:	83 ec 40                                        	sub    esp,0x40
109862b2:	83 7d 14 00                                     	cmp    DWORD PTR [ebp+0x14],0x0
109862b6:	0f 95 c0                                        	setne  al
109862b9:	50                                              	push   eax
109862ba:	51                                              	push   ecx
109862bb:	51                                              	push   ecx
109862bc:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109862bf:	52                                              	push   edx
109862c0:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109862c4:	50                                              	push   eax
109862c5:	e8 96 9e ff ff                                  	call   0x10980160
109862ca:	83 c4 08                                        	add    esp,0x8
109862cd:	50                                              	push   eax
109862ce:	e8 ed c2 c3 ff                                  	call   0x105c25c0
109862d3:	83 c4 10                                        	add    esp,0x10
109862d6:	8b e5                                           	mov    esp,ebp
109862d8:	5d                                              	pop    ebp
109862d9:	c3                                              	ret
109862da:	cc                                              	int3
109862db:	cc                                              	int3
109862dc:	cc                                              	int3
109862dd:	cc                                              	int3
109862de:	cc                                              	int3
109862df:	cc                                              	int3

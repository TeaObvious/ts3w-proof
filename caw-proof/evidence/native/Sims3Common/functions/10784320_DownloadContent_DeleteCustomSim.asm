# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784320 (DownloadContent_DeleteCustomSim)
Paired Ghidra pseudocode: 10784320_DownloadContent_DeleteCustomSim.c
Window: [0x10784320, 0x10784360) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784320: 83 ec 10 8d 04 24 50 8d 4c 24 18 e8 80 98 dd ff
10784330: e8 8b 01 ff ff 85 c0 75 06 32 c0 83 c4 10 c3 8b
10784340: 88 64 06 00 00 85 c9 74 f0 8d 14 24 52 e8 4e 74
10784350: 03 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784320 <.text+0x783320>:
10784320:	83 ec 10                                        	sub    esp,0x10
10784323:	8d 04 24                                        	lea    eax,[esp]
10784326:	50                                              	push   eax
10784327:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1078432b:	e8 80 98 dd ff                                  	call   0x1055dbb0
10784330:	e8 8b 01 ff ff                                  	call   0x107744c0
10784335:	85 c0                                           	test   eax,eax
10784337:	75 06                                           	jne    0x1078433f
10784339:	32 c0                                           	xor    al,al
1078433b:	83 c4 10                                        	add    esp,0x10
1078433e:	c3                                              	ret
1078433f:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
10784345:	85 c9                                           	test   ecx,ecx
10784347:	74 f0                                           	je     0x10784339
10784349:	8d 14 24                                        	lea    edx,[esp]
1078434c:	52                                              	push   edx
1078434d:	e8 4e 74 03 00                                  	call   0x107bb7a0
10784352:	83 c4 10                                        	add    esp,0x10
10784355:	c3                                              	ret
10784356:	cc                                              	int3
10784357:	cc                                              	int3
10784358:	cc                                              	int3
10784359:	cc                                              	int3
1078435a:	cc                                              	int3
1078435b:	cc                                              	int3
1078435c:	cc                                              	int3
1078435d:	cc                                              	int3
1078435e:	cc                                              	int3
1078435f:	cc                                              	int3

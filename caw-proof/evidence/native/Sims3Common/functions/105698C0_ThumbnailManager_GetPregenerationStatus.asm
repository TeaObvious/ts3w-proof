# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105698c0 (ThumbnailManager_GetPregenerationStatus)
Paired Ghidra pseudocode: 105698C0_ThumbnailManager_GetPregenerationStatus.c
Window: [0x105698c0, 0x10569920) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105698c0: 8b 0d 50 11 c7 10 83 ec 10 85 c9 75 08 33 c0 33
105698d0: d2 83 c4 10 c3 56 8d 44 24 04 50 e8 30 8c db ff
105698e0: 8b 44 24 0c b9 00 00 10 00 f7 e1 8b 4c 24 04 33
105698f0: f6 56 03 c1 68 00 00 10 00 13 d6 52 50 e8 fe 70
10569900: 52 00 8b 4c 24 08 03 c1 13 d6 80 7c 24 11 00 5e
10569910: 74 09 83 c0 00 81 d2 00 00 00 80 83 c4 10 c3 cc

LINEAR DISASSEMBLY
105698c0 <.text+0x5688c0>:
105698c0:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
105698c6:	83 ec 10                                        	sub    esp,0x10
105698c9:	85 c9                                           	test   ecx,ecx
105698cb:	75 08                                           	jne    0x105698d5
105698cd:	33 c0                                           	xor    eax,eax
105698cf:	33 d2                                           	xor    edx,edx
105698d1:	83 c4 10                                        	add    esp,0x10
105698d4:	c3                                              	ret
105698d5:	56                                              	push   esi
105698d6:	8d 44 24 04                                     	lea    eax,[esp+0x4]
105698da:	50                                              	push   eax
105698db:	e8 30 8c db ff                                  	call   0x10322510
105698e0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105698e4:	b9 00 00 10 00                                  	mov    ecx,0x100000
105698e9:	f7 e1                                           	mul    ecx
105698eb:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105698ef:	33 f6                                           	xor    esi,esi
105698f1:	56                                              	push   esi
105698f2:	03 c1                                           	add    eax,ecx
105698f4:	68 00 00 10 00                                  	push   0x100000
105698f9:	13 d6                                           	adc    edx,esi
105698fb:	52                                              	push   edx
105698fc:	50                                              	push   eax
105698fd:	e8 fe 70 52 00                                  	call   0x10a90a00
10569902:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10569906:	03 c1                                           	add    eax,ecx
10569908:	13 d6                                           	adc    edx,esi
1056990a:	80 7c 24 11 00                                  	cmp    BYTE PTR [esp+0x11],0x0
1056990f:	5e                                              	pop    esi
10569910:	74 09                                           	je     0x1056991b
10569912:	83 c0 00                                        	add    eax,0x0
10569915:	81 d2 00 00 00 80                               	adc    edx,0x80000000
1056991b:	83 c4 10                                        	add    esp,0x10
1056991e:	c3                                              	ret
1056991f:	cc                                              	int3

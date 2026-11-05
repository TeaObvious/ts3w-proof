# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994690 (ThumbnailManager_CreateThumbnailResource)
Paired Ghidra pseudocode: 10994690_ThumbnailManager_CreateThumbnailResource.c
Window: [0x10994690, 0x109946d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109946d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994690: 56 6a 00 6a 00 6a 00 6a 00 68 f8 77 b9 10 6a 58
109946a0: e8 0b 48 f8 ff 83 c4 18 85 c0 74 15 8b c8 e8 bd
109946b0: 8c 9a ff 8b f0 8b 06 8b 10 8b ce ff d2 8b c6 5e
109946c0: c3 33 f6 8b 06 8b 10 8b ce ff d2 8b c6 5e c3 cc

LINEAR DISASSEMBLY
10994690 <.text+0x993690>:
10994690:	56                                              	push   esi
10994691:	6a 00                                           	push   0x0
10994693:	6a 00                                           	push   0x0
10994695:	6a 00                                           	push   0x0
10994697:	6a 00                                           	push   0x0
10994699:	68 f8 77 b9 10                                  	push   0x10b977f8
1099469e:	6a 58                                           	push   0x58
109946a0:	e8 0b 48 f8 ff                                  	call   0x10918eb0
109946a5:	83 c4 18                                        	add    esp,0x18
109946a8:	85 c0                                           	test   eax,eax
109946aa:	74 15                                           	je     0x109946c1
109946ac:	8b c8                                           	mov    ecx,eax
109946ae:	e8 bd 8c 9a ff                                  	call   0x1033d370
109946b3:	8b f0                                           	mov    esi,eax
109946b5:	8b 06                                           	mov    eax,DWORD PTR [esi]
109946b7:	8b 10                                           	mov    edx,DWORD PTR [eax]
109946b9:	8b ce                                           	mov    ecx,esi
109946bb:	ff d2                                           	call   edx
109946bd:	8b c6                                           	mov    eax,esi
109946bf:	5e                                              	pop    esi
109946c0:	c3                                              	ret
109946c1:	33 f6                                           	xor    esi,esi
109946c3:	8b 06                                           	mov    eax,DWORD PTR [esi]
109946c5:	8b 10                                           	mov    edx,DWORD PTR [eax]
109946c7:	8b ce                                           	mov    ecx,esi
109946c9:	ff d2                                           	call   edx
109946cb:	8b c6                                           	mov    eax,esi
109946cd:	5e                                              	pop    esi
109946ce:	c3                                              	ret
109946cf:	cc                                              	int3

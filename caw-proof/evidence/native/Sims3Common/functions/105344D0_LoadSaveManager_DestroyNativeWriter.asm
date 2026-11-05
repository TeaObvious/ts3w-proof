# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105344d0 (LoadSaveManager_DestroyNativeWriter)
Paired Ghidra pseudocode: 105344D0_LoadSaveManager_DestroyNativeWriter.c
Window: [0x105344d0, 0x10534510) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105344d0: 56 8b 74 24 08 8b c6 c1 e8 18 83 f8 42 74 05 83
105344e0: f8 44 75 28 e8 37 6c 02 00 8b 10 8b c8 8b 82 d8
105344f0: 00 00 00 56 ff d0 8b f0 85 f6 74 10 8b ce e8 6d
10534500: 2c 09 00 56 e8 87 49 3e 00 83 c4 04 5e c3 cc cc

LINEAR DISASSEMBLY
105344d0 <.text+0x5334d0>:
105344d0:	56                                              	push   esi
105344d1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
105344d5:	8b c6                                           	mov    eax,esi
105344d7:	c1 e8 18                                        	shr    eax,0x18
105344da:	83 f8 42                                        	cmp    eax,0x42
105344dd:	74 05                                           	je     0x105344e4
105344df:	83 f8 44                                        	cmp    eax,0x44
105344e2:	75 28                                           	jne    0x1053450c
105344e4:	e8 37 6c 02 00                                  	call   0x1055b120
105344e9:	8b 10                                           	mov    edx,DWORD PTR [eax]
105344eb:	8b c8                                           	mov    ecx,eax
105344ed:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
105344f3:	56                                              	push   esi
105344f4:	ff d0                                           	call   eax
105344f6:	8b f0                                           	mov    esi,eax
105344f8:	85 f6                                           	test   esi,esi
105344fa:	74 10                                           	je     0x1053450c
105344fc:	8b ce                                           	mov    ecx,esi
105344fe:	e8 6d 2c 09 00                                  	call   0x105c7170
10534503:	56                                              	push   esi
10534504:	e8 87 49 3e 00                                  	call   0x10918e90
10534509:	83 c4 04                                        	add    esp,0x4
1053450c:	5e                                              	pop    esi
1053450d:	c3                                              	ret
1053450e:	cc                                              	int3
1053450f:	cc                                              	int3

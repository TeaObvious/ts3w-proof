# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569af0 (ThumbnailManager_InvalidateHouseholdSimThumbnail)
Paired Ghidra pseudocode: 10569AF0_ThumbnailManager_InvalidateHouseholdSimThumbnail.c
Window: [0x10569af0, 0x10569b30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569af0: 83 ec 10 56 8b 35 50 11 c7 10 85 f6 74 2a 8b 44
10569b00: 24 34 8b 4c 24 30 8b 54 24 2c 50 8b 44 24 2c 51
10569b10: 52 50 8d 4c 24 14 51 8d 4c 24 2c e8 90 40 ff ff
10569b20: 50 8b ce e8 88 ff dc ff 5e 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10569af0 <.text+0x568af0>:
10569af0:	83 ec 10                                        	sub    esp,0x10
10569af3:	56                                              	push   esi
10569af4:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
10569afa:	85 f6                                           	test   esi,esi
10569afc:	74 2a                                           	je     0x10569b28
10569afe:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10569b02:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10569b06:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
10569b0a:	50                                              	push   eax
10569b0b:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10569b0f:	51                                              	push   ecx
10569b10:	52                                              	push   edx
10569b11:	50                                              	push   eax
10569b12:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10569b16:	51                                              	push   ecx
10569b17:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10569b1b:	e8 90 40 ff ff                                  	call   0x1055dbb0
10569b20:	50                                              	push   eax
10569b21:	8b ce                                           	mov    ecx,esi
10569b23:	e8 88 ff dc ff                                  	call   0x10339ab0
10569b28:	5e                                              	pop    esi
10569b29:	83 c4 10                                        	add    esp,0x10
10569b2c:	c3                                              	ret
10569b2d:	cc                                              	int3
10569b2e:	cc                                              	int3
10569b2f:	cc                                              	int3

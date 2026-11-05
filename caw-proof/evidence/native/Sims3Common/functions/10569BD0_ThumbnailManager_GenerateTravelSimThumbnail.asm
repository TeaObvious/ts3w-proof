# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569bd0 (ThumbnailManager_GenerateTravelSimThumbnail)
Paired Ghidra pseudocode: 10569BD0_ThumbnailManager_GenerateTravelSimThumbnail.c
Window: [0x10569bd0, 0x10569c30) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569bd0: 83 ec 10 56 8b 35 50 11 c7 10 85 f6 75 07 32 c0
10569be0: 5e 83 c4 10 c3 8d 44 24 04 50 8d 4c 24 1c e8 bd
10569bf0: 3f ff ff 8b 4c 24 34 8b 54 24 30 6a 00 51 8b 4c
10569c00: 24 34 52 8b 54 24 34 51 52 8b 10 83 ec 10 8b cc
10569c10: 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89 51
10569c20: 08 89 41 0c 8b ce e8 45 be db ff 5e 83 c4 10 c3

LINEAR DISASSEMBLY
10569bd0 <.text+0x568bd0>:
10569bd0:	83 ec 10                                        	sub    esp,0x10
10569bd3:	56                                              	push   esi
10569bd4:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
10569bda:	85 f6                                           	test   esi,esi
10569bdc:	75 07                                           	jne    0x10569be5
10569bde:	32 c0                                           	xor    al,al
10569be0:	5e                                              	pop    esi
10569be1:	83 c4 10                                        	add    esp,0x10
10569be4:	c3                                              	ret
10569be5:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10569be9:	50                                              	push   eax
10569bea:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10569bee:	e8 bd 3f ff ff                                  	call   0x1055dbb0
10569bf3:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10569bf7:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10569bfb:	6a 00                                           	push   0x0
10569bfd:	51                                              	push   ecx
10569bfe:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10569c02:	52                                              	push   edx
10569c03:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10569c07:	51                                              	push   ecx
10569c08:	52                                              	push   edx
10569c09:	8b 10                                           	mov    edx,DWORD PTR [eax]
10569c0b:	83 ec 10                                        	sub    esp,0x10
10569c0e:	8b cc                                           	mov    ecx,esp
10569c10:	89 11                                           	mov    DWORD PTR [ecx],edx
10569c12:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10569c15:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10569c18:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10569c1b:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10569c1e:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10569c21:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10569c24:	8b ce                                           	mov    ecx,esi
10569c26:	e8 45 be db ff                                  	call   0x10325a70
10569c2b:	5e                                              	pop    esi
10569c2c:	83 c4 10                                        	add    esp,0x10
10569c2f:	c3                                              	ret

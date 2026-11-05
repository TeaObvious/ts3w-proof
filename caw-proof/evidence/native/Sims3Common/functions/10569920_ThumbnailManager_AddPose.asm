# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569920 (ThumbnailManager_AddPose)
Paired Ghidra pseudocode: 10569920_ThumbnailManager_AddPose.c
Window: [0x10569920, 0x10569950) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569920: 83 ec 10 56 8b 35 50 11 c7 10 85 f6 74 16 8d 44
10569930: 24 04 50 8d 4c 24 1c e8 74 42 ff ff 50 8b ce e8
10569940: 7c 74 dc ff 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569920 <.text+0x568920>:
10569920:	83 ec 10                                        	sub    esp,0x10
10569923:	56                                              	push   esi
10569924:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
1056992a:	85 f6                                           	test   esi,esi
1056992c:	74 16                                           	je     0x10569944
1056992e:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10569932:	50                                              	push   eax
10569933:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10569937:	e8 74 42 ff ff                                  	call   0x1055dbb0
1056993c:	50                                              	push   eax
1056993d:	8b ce                                           	mov    ecx,esi
1056993f:	e8 7c 74 dc ff                                  	call   0x10330dc0
10569944:	5e                                              	pop    esi
10569945:	83 c4 10                                        	add    esp,0x10
10569948:	c3                                              	ret
10569949:	cc                                              	int3
1056994a:	cc                                              	int3
1056994b:	cc                                              	int3
1056994c:	cc                                              	int3
1056994d:	cc                                              	int3
1056994e:	cc                                              	int3
1056994f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569ca0 (ThumbnailManager_AddDisplacement)
Paired Ghidra pseudocode: 10569CA0_ThumbnailManager_AddDisplacement.c
Window: [0x10569ca0, 0x10569cf0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569ca0: 55 8b ec 83 e4 f0 8b 0d 50 11 c7 10 83 ec 10 85
10569cb0: c9 74 38 f3 0f 10 4d 10 f3 0f 10 45 08 f3 0f 11
10569cc0: 4c 24 08 f3 0f 10 4d 0c f3 0f 11 44 24 0c f3 0f
10569cd0: 11 4c 24 04 f3 0f 11 04 24 0f 28 04 24 8d 04 24
10569ce0: 50 0f 29 44 24 04 e8 25 14 dc ff 8b e5 5d c3 cc

LINEAR DISASSEMBLY
10569ca0 <.text+0x568ca0>:
10569ca0:	55                                              	push   ebp
10569ca1:	8b ec                                           	mov    ebp,esp
10569ca3:	83 e4 f0                                        	and    esp,0xfffffff0
10569ca6:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569cac:	83 ec 10                                        	sub    esp,0x10
10569caf:	85 c9                                           	test   ecx,ecx
10569cb1:	74 38                                           	je     0x10569ceb
10569cb3:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10569cb8:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10569cbd:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10569cc3:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
10569cc8:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10569cce:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10569cd4:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10569cd9:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10569cdd:	8d 04 24                                        	lea    eax,[esp]
10569ce0:	50                                              	push   eax
10569ce1:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
10569ce6:	e8 25 14 dc ff                                  	call   0x1032b110
10569ceb:	8b e5                                           	mov    esp,ebp
10569ced:	5d                                              	pop    ebp
10569cee:	c3                                              	ret
10569cef:	cc                                              	int3

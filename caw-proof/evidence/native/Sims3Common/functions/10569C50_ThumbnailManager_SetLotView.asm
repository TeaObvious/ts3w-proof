# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569c50 (ThumbnailManager_SetLotView)
Paired Ghidra pseudocode: 10569C50_ThumbnailManager_SetLotView.c
Window: [0x10569c50, 0x10569c80) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569c80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569c50: 55 8b ec 83 e4 f0 83 ec 1c 56 8b 35 50 11 c7 10
10569c60: 85 f6 74 15 8d 44 24 10 50 8d 4d 08 e8 af 3e ff
10569c70: ff 50 8b ce e8 c7 99 db ff 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
10569c50 <.text+0x568c50>:
10569c50:	55                                              	push   ebp
10569c51:	8b ec                                           	mov    ebp,esp
10569c53:	83 e4 f0                                        	and    esp,0xfffffff0
10569c56:	83 ec 1c                                        	sub    esp,0x1c
10569c59:	56                                              	push   esi
10569c5a:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
10569c60:	85 f6                                           	test   esi,esi
10569c62:	74 15                                           	je     0x10569c79
10569c64:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10569c68:	50                                              	push   eax
10569c69:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
10569c6c:	e8 af 3e ff ff                                  	call   0x1055db20
10569c71:	50                                              	push   eax
10569c72:	8b ce                                           	mov    ecx,esi
10569c74:	e8 c7 99 db ff                                  	call   0x10323640
10569c79:	5e                                              	pop    esi
10569c7a:	8b e5                                           	mov    esp,ebp
10569c7c:	5d                                              	pop    ebp
10569c7d:	c3                                              	ret
10569c7e:	cc                                              	int3
10569c7f:	cc                                              	int3

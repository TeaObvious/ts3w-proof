# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097da40 (App3D_RenderUI)
Paired Ghidra pseudocode: 1097DA40_App3D_RenderUI.c
Window: [0x1097da40, 0x1097da90) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097da90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097da40: 83 ec 10 e8 98 f8 fb ff f3 0f 2a 44 24 14 f3 0f
1097da50: 11 04 24 f3 0f 2a 44 24 18 f3 0f 11 44 24 04 f3
1097da60: 0f 2a 44 24 1c f3 0f 11 44 24 08 f3 0f 2a 44 24
1097da70: 20 f3 0f 11 44 24 0c 8b 10 8b 52 30 8d 0c 24 51
1097da80: 8b c8 ff d2 83 c4 10 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097da40 <.text+0x97ca40>:
1097da40:	83 ec 10                                        	sub    esp,0x10
1097da43:	e8 98 f8 fb ff                                  	call   0x1093d2e0
1097da48:	f3 0f 2a 44 24 14                               	cvtsi2ss xmm0,DWORD PTR [esp+0x14]
1097da4e:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1097da53:	f3 0f 2a 44 24 18                               	cvtsi2ss xmm0,DWORD PTR [esp+0x18]
1097da59:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1097da5f:	f3 0f 2a 44 24 1c                               	cvtsi2ss xmm0,DWORD PTR [esp+0x1c]
1097da65:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1097da6b:	f3 0f 2a 44 24 20                               	cvtsi2ss xmm0,DWORD PTR [esp+0x20]
1097da71:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1097da77:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097da79:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1097da7c:	8d 0c 24                                        	lea    ecx,[esp]
1097da7f:	51                                              	push   ecx
1097da80:	8b c8                                           	mov    ecx,eax
1097da82:	ff d2                                           	call   edx
1097da84:	83 c4 10                                        	add    esp,0x10
1097da87:	c3                                              	ret
1097da88:	cc                                              	int3
1097da89:	cc                                              	int3
1097da8a:	cc                                              	int3
1097da8b:	cc                                              	int3
1097da8c:	cc                                              	int3
1097da8d:	cc                                              	int3
1097da8e:	cc                                              	int3
1097da8f:	cc                                              	int3

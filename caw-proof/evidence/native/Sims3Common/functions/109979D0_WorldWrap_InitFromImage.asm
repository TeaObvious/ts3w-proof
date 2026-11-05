# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109979d0 (WorldWrap_InitFromImage)
Paired Ghidra pseudocode: 109979D0_WorldWrap_InitFromImage.c
Window: [0x109979d0, 0x10997a40) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109979d0: 83 ec 10 56 57 8d 44 24 34 50 8d 4c 24 0c 51 e8
109979e0: bc 60 bc ff d9 44 24 30 8b 54 24 38 8b 4c 24 28
109979f0: 8b 74 24 24 83 c4 08 50 8b 44 24 30 52 50 83 ec
10997a00: 08 d9 5c 24 04 d9 44 24 38 d9 1c 24 51 8b ce e8
10997a10: 7c 9b 8a ff 83 ec 10 54 0f b6 f8 e8 c0 08 df ff
10997a20: 83 c4 04 8b ce e8 76 e5 89 ff 8b c7 5f 5e 83 c4
10997a30: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109979d0 <.text+0x9969d0>:
109979d0:	83 ec 10                                        	sub    esp,0x10
109979d3:	56                                              	push   esi
109979d4:	57                                              	push   edi
109979d5:	8d 44 24 34                                     	lea    eax,[esp+0x34]
109979d9:	50                                              	push   eax
109979da:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
109979de:	51                                              	push   ecx
109979df:	e8 bc 60 bc ff                                  	call   0x1055daa0
109979e4:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
109979e8:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
109979ec:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
109979f0:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
109979f4:	83 c4 08                                        	add    esp,0x8
109979f7:	50                                              	push   eax
109979f8:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
109979fc:	52                                              	push   edx
109979fd:	50                                              	push   eax
109979fe:	83 ec 08                                        	sub    esp,0x8
10997a01:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10997a05:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
10997a09:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10997a0c:	51                                              	push   ecx
10997a0d:	8b ce                                           	mov    ecx,esi
10997a0f:	e8 7c 9b 8a ff                                  	call   0x10241590
10997a14:	83 ec 10                                        	sub    esp,0x10
10997a17:	54                                              	push   esp
10997a18:	0f b6 f8                                        	movzx  edi,al
10997a1b:	e8 c0 08 df ff                                  	call   0x107882e0
10997a20:	83 c4 04                                        	add    esp,0x4
10997a23:	8b ce                                           	mov    ecx,esi
10997a25:	e8 76 e5 89 ff                                  	call   0x10235fa0
10997a2a:	8b c7                                           	mov    eax,edi
10997a2c:	5f                                              	pop    edi
10997a2d:	5e                                              	pop    esi
10997a2e:	83 c4 10                                        	add    esp,0x10
10997a31:	c3                                              	ret
10997a32:	cc                                              	int3
10997a33:	cc                                              	int3
10997a34:	cc                                              	int3
10997a35:	cc                                              	int3
10997a36:	cc                                              	int3
10997a37:	cc                                              	int3
10997a38:	cc                                              	int3
10997a39:	cc                                              	int3
10997a3a:	cc                                              	int3
10997a3b:	cc                                              	int3
10997a3c:	cc                                              	int3
10997a3d:	cc                                              	int3
10997a3e:	cc                                              	int3
10997a3f:	cc                                              	int3

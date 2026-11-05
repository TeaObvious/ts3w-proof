# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982ea0 (ContentManager_GetPackageId)
Paired Ghidra pseudocode: 10982EA0_ContentManager_GetPackageId.c
Window: [0x10982ea0, 0x10982f40) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982ea0: 83 ec 20 8d 4c 24 10 e8 c4 06 fb ff e8 4f e5 b9
10982eb0: ff 8b 54 24 28 8d 4c 24 10 51 8b 4c 24 28 52 51
10982ec0: 8b c8 e8 c9 e0 b9 ff 84 c0 75 06 33 c0 83 c4 20
10982ed0: c3 b8 44 82 ca 10 56 8d 54 24 04 89 44 24 04 89
10982ee0: 44 24 08 52 8d 44 24 18 50 c7 44 24 18 5c 65 b9
10982ef0: 10 c7 44 24 14 46 82 ca 10 e8 72 b6 e2 ff 8b 4c
10982f00: 24 0c 83 c4 08 51 ff 15 c4 b6 aa 10 8b 54 24 0c
10982f10: 8b f0 8b 44 24 04 2b d0 83 e2 fe 83 fa 02 7e 0d
10982f20: 85 c0 74 09 50 e8 66 5f f9 ff 83 c4 04 8b c6 5e
10982f30: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982ea0 <.text+0x981ea0>:
10982ea0:	83 ec 20                                        	sub    esp,0x20
10982ea3:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10982ea7:	e8 c4 06 fb ff                                  	call   0x10933570
10982eac:	e8 4f e5 b9 ff                                  	call   0x10521400
10982eb1:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10982eb5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10982eb9:	51                                              	push   ecx
10982eba:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10982ebe:	52                                              	push   edx
10982ebf:	51                                              	push   ecx
10982ec0:	8b c8                                           	mov    ecx,eax
10982ec2:	e8 c9 e0 b9 ff                                  	call   0x10520f90
10982ec7:	84 c0                                           	test   al,al
10982ec9:	75 06                                           	jne    0x10982ed1
10982ecb:	33 c0                                           	xor    eax,eax
10982ecd:	83 c4 20                                        	add    esp,0x20
10982ed0:	c3                                              	ret
10982ed1:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10982ed6:	56                                              	push   esi
10982ed7:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10982edb:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10982edf:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10982ee3:	52                                              	push   edx
10982ee4:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10982ee8:	50                                              	push   eax
10982ee9:	c7 44 24 18 5c 65 b9 10                         	mov    DWORD PTR [esp+0x18],0x10b9655c
10982ef1:	c7 44 24 14 46 82 ca 10                         	mov    DWORD PTR [esp+0x14],0x10ca8246
10982ef9:	e8 72 b6 e2 ff                                  	call   0x107ae570
10982efe:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10982f02:	83 c4 08                                        	add    esp,0x8
10982f05:	51                                              	push   ecx
10982f06:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10982f0c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10982f10:	8b f0                                           	mov    esi,eax
10982f12:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10982f16:	2b d0                                           	sub    edx,eax
10982f18:	83 e2 fe                                        	and    edx,0xfffffffe
10982f1b:	83 fa 02                                        	cmp    edx,0x2
10982f1e:	7e 0d                                           	jle    0x10982f2d
10982f20:	85 c0                                           	test   eax,eax
10982f22:	74 09                                           	je     0x10982f2d
10982f24:	50                                              	push   eax
10982f25:	e8 66 5f f9 ff                                  	call   0x10918e90
10982f2a:	83 c4 04                                        	add    esp,0x4
10982f2d:	8b c6                                           	mov    eax,esi
10982f2f:	5e                                              	pop    esi
10982f30:	83 c4 20                                        	add    esp,0x20
10982f33:	c3                                              	ret
10982f34:	cc                                              	int3
10982f35:	cc                                              	int3
10982f36:	cc                                              	int3
10982f37:	cc                                              	int3
10982f38:	cc                                              	int3
10982f39:	cc                                              	int3
10982f3a:	cc                                              	int3
10982f3b:	cc                                              	int3
10982f3c:	cc                                              	int3
10982f3d:	cc                                              	int3
10982f3e:	cc                                              	int3
10982f3f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982ad0 (ContentManager_GetPackageName)
Paired Ghidra pseudocode: 10982AD0_ContentManager_GetPackageName.c
Window: [0x10982ad0, 0x10982b70) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982ad0: 83 ec 20 56 e8 e7 19 df ff 8b f0 85 f6 74 7b 8b
10982ae0: 44 24 28 6a 10 50 8d 4c 24 1c e8 41 1f fb ff 8d
10982af0: 4c 24 04 51 83 ec 10 b8 44 82 ca 10 8d 54 24 28
10982b00: 8b cc 52 c7 44 24 28 a8 64 b9 10 89 44 24 1c 89
10982b10: 44 24 20 c7 44 24 24 46 82 ca 10 e8 a0 0a fb ff
10982b20: 8b ce e8 49 75 df ff 8b 44 24 04 50 ff 15 c4 b6
10982b30: aa 10 8b 4c 24 0c 8b f0 8b 44 24 04 2b c8 83 e1
10982b40: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 40 63 f9 ff
10982b50: 83 c4 04 8b c6 5e 83 c4 20 c3 68 fc 24 b6 10 ff
10982b60: 15 c4 b6 aa 10 5e 83 c4 20 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982ad0 <.text+0x981ad0>:
10982ad0:	83 ec 20                                        	sub    esp,0x20
10982ad3:	56                                              	push   esi
10982ad4:	e8 e7 19 df ff                                  	call   0x107744c0
10982ad9:	8b f0                                           	mov    esi,eax
10982adb:	85 f6                                           	test   esi,esi
10982add:	74 7b                                           	je     0x10982b5a
10982adf:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10982ae3:	6a 10                                           	push   0x10
10982ae5:	50                                              	push   eax
10982ae6:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10982aea:	e8 41 1f fb ff                                  	call   0x10934a30
10982aef:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10982af3:	51                                              	push   ecx
10982af4:	83 ec 10                                        	sub    esp,0x10
10982af7:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10982afc:	8d 54 24 28                                     	lea    edx,[esp+0x28]
10982b00:	8b cc                                           	mov    ecx,esp
10982b02:	52                                              	push   edx
10982b03:	c7 44 24 28 a8 64 b9 10                         	mov    DWORD PTR [esp+0x28],0x10b964a8
10982b0b:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10982b0f:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
10982b13:	c7 44 24 24 46 82 ca 10                         	mov    DWORD PTR [esp+0x24],0x10ca8246
10982b1b:	e8 a0 0a fb ff                                  	call   0x109335c0
10982b20:	8b ce                                           	mov    ecx,esi
10982b22:	e8 49 75 df ff                                  	call   0x1077a070
10982b27:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10982b2b:	50                                              	push   eax
10982b2c:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10982b32:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10982b36:	8b f0                                           	mov    esi,eax
10982b38:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10982b3c:	2b c8                                           	sub    ecx,eax
10982b3e:	83 e1 fe                                        	and    ecx,0xfffffffe
10982b41:	83 f9 02                                        	cmp    ecx,0x2
10982b44:	7e 0d                                           	jle    0x10982b53
10982b46:	85 c0                                           	test   eax,eax
10982b48:	74 09                                           	je     0x10982b53
10982b4a:	50                                              	push   eax
10982b4b:	e8 40 63 f9 ff                                  	call   0x10918e90
10982b50:	83 c4 04                                        	add    esp,0x4
10982b53:	8b c6                                           	mov    eax,esi
10982b55:	5e                                              	pop    esi
10982b56:	83 c4 20                                        	add    esp,0x20
10982b59:	c3                                              	ret
10982b5a:	68 fc 24 b6 10                                  	push   0x10b624fc
10982b5f:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10982b65:	5e                                              	pop    esi
10982b66:	83 c4 20                                        	add    esp,0x20
10982b69:	c3                                              	ret
10982b6a:	cc                                              	int3
10982b6b:	cc                                              	int3
10982b6c:	cc                                              	int3
10982b6d:	cc                                              	int3
10982b6e:	cc                                              	int3
10982b6f:	cc                                              	int3

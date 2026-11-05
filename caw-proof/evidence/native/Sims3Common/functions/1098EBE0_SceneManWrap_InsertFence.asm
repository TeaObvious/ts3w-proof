# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ebe0 (SceneManWrap_InsertFence)
Paired Ghidra pseudocode: 1098EBE0_SceneManWrap_InsertFence.c
Window: [0x1098ebe0, 0x1098ec50) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ec50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ebe0: 55 8b ec 83 e4 f0 83 ec 5c a1 20 9e c5 10 56 8b
1098ebf0: f0 83 c0 01 a3 20 9e c5 10 8d 44 24 10 50 c7 44
1098ec00: 24 14 2f 12 89 04 c7 44 24 18 00 00 00 00 89 74
1098ec10: 24 1c c7 44 24 20 00 00 00 00 c7 44 24 24 d0 eb
1098ec20: 98 10 c7 44 24 28 00 00 00 00 e8 b1 b2 af ff 8b
1098ec30: 4c 24 18 83 c4 04 85 c9 74 0b 8b 11 8b 12 8d 44
1098ec40: 24 20 50 ff d2 8b c6 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
1098ebe0 <.text+0x98dbe0>:
1098ebe0:	55                                              	push   ebp
1098ebe1:	8b ec                                           	mov    ebp,esp
1098ebe3:	83 e4 f0                                        	and    esp,0xfffffff0
1098ebe6:	83 ec 5c                                        	sub    esp,0x5c
1098ebe9:	a1 20 9e c5 10                                  	mov    eax,ds:0x10c59e20
1098ebee:	56                                              	push   esi
1098ebef:	8b f0                                           	mov    esi,eax
1098ebf1:	83 c0 01                                        	add    eax,0x1
1098ebf4:	a3 20 9e c5 10                                  	mov    ds:0x10c59e20,eax
1098ebf9:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098ebfd:	50                                              	push   eax
1098ebfe:	c7 44 24 14 2f 12 89 04                         	mov    DWORD PTR [esp+0x14],0x489122f
1098ec06:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
1098ec0e:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
1098ec12:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
1098ec1a:	c7 44 24 24 d0 eb 98 10                         	mov    DWORD PTR [esp+0x24],0x1098ebd0
1098ec22:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
1098ec2a:	e8 b1 b2 af ff                                  	call   0x10489ee0
1098ec2f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098ec33:	83 c4 04                                        	add    esp,0x4
1098ec36:	85 c9                                           	test   ecx,ecx
1098ec38:	74 0b                                           	je     0x1098ec45
1098ec3a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098ec3c:	8b 12                                           	mov    edx,DWORD PTR [edx]
1098ec3e:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1098ec42:	50                                              	push   eax
1098ec43:	ff d2                                           	call   edx
1098ec45:	8b c6                                           	mov    eax,esi
1098ec47:	5e                                              	pop    esi
1098ec48:	8b e5                                           	mov    esp,ebp
1098ec4a:	5d                                              	pop    ebp
1098ec4b:	c3                                              	ret
1098ec4c:	cc                                              	int3
1098ec4d:	cc                                              	int3
1098ec4e:	cc                                              	int3
1098ec4f:	cc                                              	int3

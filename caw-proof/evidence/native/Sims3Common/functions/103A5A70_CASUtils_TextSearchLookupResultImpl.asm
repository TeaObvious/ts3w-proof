# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5a70 (CASUtils_TextSearchLookupResultImpl)
Paired Ghidra pseudocode: 103A5A70_CASUtils_TextSearchLookupResultImpl.c
Window: [0x103a5a70, 0x103a5af0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5a70: 56 57 8b 7c 24 0c 6a 48 6a 00 57 e8 3e ae 6e 00
103a5a80: 8b 74 24 1c 8b c6 25 00 00 00 ff 83 c4 0c 3d 00
103a5a90: 00 00 35 75 4a e8 86 56 1b 00 8b 10 8b c8 8b 82
103a5aa0: cc 00 00 00 56 ff d0 85 c0 74 34 8b 54 24 18 8d
103a5ab0: 4c 24 0c 51 8b 4c 24 18 52 51 8b c8 e8 af fd ff
103a5ac0: ff 84 c0 74 1a 8b 74 24 0c 8d 56 08 57 52 e8 fd
103a5ad0: c5 ff ff 8b 06 8b 50 04 83 c4 08 8b ce ff d2 8b
103a5ae0: c7 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5a70 <.text+0x3a4a70>:
103a5a70:	56                                              	push   esi
103a5a71:	57                                              	push   edi
103a5a72:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
103a5a76:	6a 48                                           	push   0x48
103a5a78:	6a 00                                           	push   0x0
103a5a7a:	57                                              	push   edi
103a5a7b:	e8 3e ae 6e 00                                  	call   0x10a908be
103a5a80:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
103a5a84:	8b c6                                           	mov    eax,esi
103a5a86:	25 00 00 00 ff                                  	and    eax,0xff000000
103a5a8b:	83 c4 0c                                        	add    esp,0xc
103a5a8e:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a5a93:	75 4a                                           	jne    0x103a5adf
103a5a95:	e8 86 56 1b 00                                  	call   0x1055b120
103a5a9a:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a5a9c:	8b c8                                           	mov    ecx,eax
103a5a9e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a5aa4:	56                                              	push   esi
103a5aa5:	ff d0                                           	call   eax
103a5aa7:	85 c0                                           	test   eax,eax
103a5aa9:	74 34                                           	je     0x103a5adf
103a5aab:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a5aaf:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
103a5ab3:	51                                              	push   ecx
103a5ab4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a5ab8:	52                                              	push   edx
103a5ab9:	51                                              	push   ecx
103a5aba:	8b c8                                           	mov    ecx,eax
103a5abc:	e8 af fd ff ff                                  	call   0x103a5870
103a5ac1:	84 c0                                           	test   al,al
103a5ac3:	74 1a                                           	je     0x103a5adf
103a5ac5:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
103a5ac9:	8d 56 08                                        	lea    edx,[esi+0x8]
103a5acc:	57                                              	push   edi
103a5acd:	52                                              	push   edx
103a5ace:	e8 fd c5 ff ff                                  	call   0x103a20d0
103a5ad3:	8b 06                                           	mov    eax,DWORD PTR [esi]
103a5ad5:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a5ad8:	83 c4 08                                        	add    esp,0x8
103a5adb:	8b ce                                           	mov    ecx,esi
103a5add:	ff d2                                           	call   edx
103a5adf:	8b c7                                           	mov    eax,edi
103a5ae1:	5f                                              	pop    edi
103a5ae2:	5e                                              	pop    esi
103a5ae3:	c3                                              	ret
103a5ae4:	cc                                              	int3
103a5ae5:	cc                                              	int3
103a5ae6:	cc                                              	int3
103a5ae7:	cc                                              	int3
103a5ae8:	cc                                              	int3
103a5ae9:	cc                                              	int3
103a5aea:	cc                                              	int3
103a5aeb:	cc                                              	int3
103a5aec:	cc                                              	int3
103a5aed:	cc                                              	int3
103a5aee:	cc                                              	int3
103a5aef:	cc                                              	int3

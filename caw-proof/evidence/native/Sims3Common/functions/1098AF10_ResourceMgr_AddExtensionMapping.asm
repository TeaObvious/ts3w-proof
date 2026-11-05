# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098af10 (ResourceMgr_AddExtensionMapping)
Paired Ghidra pseudocode: 1098AF10_ResourceMgr_AddExtensionMapping.c
Window: [0x1098af10, 0x1098af70) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098af70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098af10: 83 ec 08 56 8b 35 78 80 cb 10 8d 44 24 10 50 8d
1098af20: 4c 24 08 51 8b ce e8 e5 d4 d1 ff 8b 56 08 8b 4e
1098af30: 04 8b 44 24 04 3b 04 91 75 07 32 c0 5e 83 c4 08
1098af40: c3 8b 70 04 8b 16 8b 42 0c 8b ce ff d0 3d 92 84
1098af50: 72 34 75 e6 8b 44 24 14 8b 4c 24 18 8b 16 8b 52
1098af60: 50 50 51 8b ce ff d2 5e 83 c4 08 c3 cc cc cc cc

LINEAR DISASSEMBLY
1098af10 <.text+0x989f10>:
1098af10:	83 ec 08                                        	sub    esp,0x8
1098af13:	56                                              	push   esi
1098af14:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098af1a:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098af1e:	50                                              	push   eax
1098af1f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1098af23:	51                                              	push   ecx
1098af24:	8b ce                                           	mov    ecx,esi
1098af26:	e8 e5 d4 d1 ff                                  	call   0x106a8410
1098af2b:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1098af2e:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098af31:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098af35:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
1098af38:	75 07                                           	jne    0x1098af41
1098af3a:	32 c0                                           	xor    al,al
1098af3c:	5e                                              	pop    esi
1098af3d:	83 c4 08                                        	add    esp,0x8
1098af40:	c3                                              	ret
1098af41:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
1098af44:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098af46:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1098af49:	8b ce                                           	mov    ecx,esi
1098af4b:	ff d0                                           	call   eax
1098af4d:	3d 92 84 72 34                                  	cmp    eax,0x34728492
1098af52:	75 e6                                           	jne    0x1098af3a
1098af54:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098af58:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098af5c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098af5e:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1098af61:	50                                              	push   eax
1098af62:	51                                              	push   ecx
1098af63:	8b ce                                           	mov    ecx,esi
1098af65:	ff d2                                           	call   edx
1098af67:	5e                                              	pop    esi
1098af68:	83 c4 08                                        	add    esp,0x8
1098af6b:	c3                                              	ret
1098af6c:	cc                                              	int3
1098af6d:	cc                                              	int3
1098af6e:	cc                                              	int3
1098af6f:	cc                                              	int3

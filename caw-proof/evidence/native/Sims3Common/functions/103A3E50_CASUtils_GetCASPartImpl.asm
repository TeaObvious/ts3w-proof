# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3e50 (CASUtils_GetCASPartImpl)
Paired Ghidra pseudocode: 103A3E50_CASUtils_GetCASPartImpl.c
Window: [0x103a3e50, 0x103a3e90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3e50: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 48 56
103a3e60: 57 50 8b 44 24 5c 51 52 50 8d 4c 24 18 51 e8 4d
103a3e70: f7 ff ff 8b f0 8b 44 24 68 83 c4 14 b9 12 00 00
103a3e80: 00 8b f8 f3 a5 5f 5e 83 c4 48 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
103a3e50 <.text+0x3a2e50>:
103a3e50:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a3e54:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
103a3e58:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a3e5c:	83 ec 48                                        	sub    esp,0x48
103a3e5f:	56                                              	push   esi
103a3e60:	57                                              	push   edi
103a3e61:	50                                              	push   eax
103a3e62:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
103a3e66:	51                                              	push   ecx
103a3e67:	52                                              	push   edx
103a3e68:	50                                              	push   eax
103a3e69:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
103a3e6d:	51                                              	push   ecx
103a3e6e:	e8 4d f7 ff ff                                  	call   0x103a35c0
103a3e73:	8b f0                                           	mov    esi,eax
103a3e75:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
103a3e79:	83 c4 14                                        	add    esp,0x14
103a3e7c:	b9 12 00 00 00                                  	mov    ecx,0x12
103a3e81:	8b f8                                           	mov    edi,eax
103a3e83:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a3e85:	5f                                              	pop    edi
103a3e86:	5e                                              	pop    esi
103a3e87:	83 c4 48                                        	add    esp,0x48
103a3e8a:	c3                                              	ret
103a3e8b:	cc                                              	int3
103a3e8c:	cc                                              	int3
103a3e8d:	cc                                              	int3
103a3e8e:	cc                                              	int3
103a3e8f:	cc                                              	int3

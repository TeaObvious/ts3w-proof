# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098aaa0 (ResourceMgr_DeleteRecord)
Paired Ghidra pseudocode: 1098AAA0_ResourceMgr_DeleteRecord.c
Window: [0x1098aaa0, 0x1098ab20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ab20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098aaa0: 83 ec 10 e8 28 a6 f5 ff 85 c0 75 06 33 c0 83 c4
1098aab0: 10 c3 56 8b 35 78 80 cb 10 8d 44 24 18 50 8d 4c
1098aac0: 24 08 51 8b ce e8 46 d9 d1 ff 8b 56 08 8b 4e 04
1098aad0: 8b 44 24 04 3b 04 91 5e 74 d2 8b 48 04 8b 54 24
1098aae0: 20 8b 44 24 24 89 14 24 8b 54 24 18 89 44 24 04
1098aaf0: 8b 44 24 1c 89 54 24 08 8b 11 8b 52 40 89 44 24
1098ab00: 0c 8d 04 24 50 ff d2 f6 d8 1b c0 f7 d8 83 c4 10
1098ab10: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098aaa0 <.text+0x989aa0>:
1098aaa0:	83 ec 10                                        	sub    esp,0x10
1098aaa3:	e8 28 a6 f5 ff                                  	call   0x108e50d0
1098aaa8:	85 c0                                           	test   eax,eax
1098aaaa:	75 06                                           	jne    0x1098aab2
1098aaac:	33 c0                                           	xor    eax,eax
1098aaae:	83 c4 10                                        	add    esp,0x10
1098aab1:	c3                                              	ret
1098aab2:	56                                              	push   esi
1098aab3:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098aab9:	8d 44 24 18                                     	lea    eax,[esp+0x18]
1098aabd:	50                                              	push   eax
1098aabe:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1098aac2:	51                                              	push   ecx
1098aac3:	8b ce                                           	mov    ecx,esi
1098aac5:	e8 46 d9 d1 ff                                  	call   0x106a8410
1098aaca:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1098aacd:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098aad0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098aad4:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
1098aad7:	5e                                              	pop    esi
1098aad8:	74 d2                                           	je     0x1098aaac
1098aada:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1098aadd:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1098aae1:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1098aae5:	89 14 24                                        	mov    DWORD PTR [esp],edx
1098aae8:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1098aaec:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1098aaf0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098aaf4:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1098aaf8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098aafa:	8b 52 40                                        	mov    edx,DWORD PTR [edx+0x40]
1098aafd:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1098ab01:	8d 04 24                                        	lea    eax,[esp]
1098ab04:	50                                              	push   eax
1098ab05:	ff d2                                           	call   edx
1098ab07:	f6 d8                                           	neg    al
1098ab09:	1b c0                                           	sbb    eax,eax
1098ab0b:	f7 d8                                           	neg    eax
1098ab0d:	83 c4 10                                        	add    esp,0x10
1098ab10:	c3                                              	ret
1098ab11:	cc                                              	int3
1098ab12:	cc                                              	int3
1098ab13:	cc                                              	int3
1098ab14:	cc                                              	int3
1098ab15:	cc                                              	int3
1098ab16:	cc                                              	int3
1098ab17:	cc                                              	int3
1098ab18:	cc                                              	int3
1098ab19:	cc                                              	int3
1098ab1a:	cc                                              	int3
1098ab1b:	cc                                              	int3
1098ab1c:	cc                                              	int3
1098ab1d:	cc                                              	int3
1098ab1e:	cc                                              	int3
1098ab1f:	cc                                              	int3

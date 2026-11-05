# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ab20 (ResourceMgr_RecordExistsInDatabase)
Paired Ghidra pseudocode: 1098AB20_ResourceMgr_RecordExistsInDatabase.c
Window: [0x1098ab20, 0x1098abb0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098abb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ab20: 83 ec 18 e8 a8 a5 f5 ff 85 c0 75 06 33 c0 83 c4
1098ab30: 18 c3 8b 4c 24 2c 8b 54 24 20 8b 44 24 28 56 8b
1098ab40: 35 78 80 cb 10 89 4c 24 10 8d 4c 24 20 89 54 24
1098ab50: 14 51 89 44 24 10 8b 44 24 2c 8d 54 24 08 52 8b
1098ab60: ce 89 44 24 20 e8 a6 d8 d1 ff 8b 4e 08 8b 56 04
1098ab70: 8b 44 24 04 3b 04 8a 5e 74 b2 8b 48 04 85 c9 74
1098ab80: ab 8b 01 8b 40 34 6a 00 6a 01 6a 06 6a 01 6a 00
1098ab90: 8d 54 24 1c 52 ff d0 f6 d8 1b c0 f7 d8 83 c4 18
1098aba0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ab20 <.text+0x989b20>:
1098ab20:	83 ec 18                                        	sub    esp,0x18
1098ab23:	e8 a8 a5 f5 ff                                  	call   0x108e50d0
1098ab28:	85 c0                                           	test   eax,eax
1098ab2a:	75 06                                           	jne    0x1098ab32
1098ab2c:	33 c0                                           	xor    eax,eax
1098ab2e:	83 c4 18                                        	add    esp,0x18
1098ab31:	c3                                              	ret
1098ab32:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1098ab36:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1098ab3a:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1098ab3e:	56                                              	push   esi
1098ab3f:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098ab45:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1098ab49:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098ab4d:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1098ab51:	51                                              	push   ecx
1098ab52:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1098ab56:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098ab5a:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1098ab5e:	52                                              	push   edx
1098ab5f:	8b ce                                           	mov    ecx,esi
1098ab61:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
1098ab65:	e8 a6 d8 d1 ff                                  	call   0x106a8410
1098ab6a:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
1098ab6d:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098ab70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ab74:	3b 04 8a                                        	cmp    eax,DWORD PTR [edx+ecx*4]
1098ab77:	5e                                              	pop    esi
1098ab78:	74 b2                                           	je     0x1098ab2c
1098ab7a:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1098ab7d:	85 c9                                           	test   ecx,ecx
1098ab7f:	74 ab                                           	je     0x1098ab2c
1098ab81:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098ab83:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
1098ab86:	6a 00                                           	push   0x0
1098ab88:	6a 01                                           	push   0x1
1098ab8a:	6a 06                                           	push   0x6
1098ab8c:	6a 01                                           	push   0x1
1098ab8e:	6a 00                                           	push   0x0
1098ab90:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
1098ab94:	52                                              	push   edx
1098ab95:	ff d0                                           	call   eax
1098ab97:	f6 d8                                           	neg    al
1098ab99:	1b c0                                           	sbb    eax,eax
1098ab9b:	f7 d8                                           	neg    eax
1098ab9d:	83 c4 18                                        	add    esp,0x18
1098aba0:	c3                                              	ret
1098aba1:	cc                                              	int3
1098aba2:	cc                                              	int3
1098aba3:	cc                                              	int3
1098aba4:	cc                                              	int3
1098aba5:	cc                                              	int3
1098aba6:	cc                                              	int3
1098aba7:	cc                                              	int3
1098aba8:	cc                                              	int3
1098aba9:	cc                                              	int3
1098abaa:	cc                                              	int3
1098abab:	cc                                              	int3
1098abac:	cc                                              	int3
1098abad:	cc                                              	int3
1098abae:	cc                                              	int3
1098abaf:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986fc0 (ModelProxyWrap_GetModelBoundsForFirstLOD)
Paired Ghidra pseudocode: 10986FC0_ModelProxyWrap_GetModelBoundsForFirstLOD.c
Window: [0x10986fc0, 0x10987050) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10987050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986fc0: 55 8b ec 83 e4 f0 8b 4d 0c 83 ec 3c 56 e8 5e b0
10986fd0: b4 ff 8b f0 85 f6 74 27 8b ce e8 d1 ea fb ff 85
10986fe0: c0 76 1c 6a 00 8b ce e8 74 01 b4 ff 85 c0 74 0f
10986ff0: 8b c8 e8 39 a8 87 ff 50 8d 44 24 0c 50 eb 13 8d
10987000: 4c 24 20 e8 58 bc af ff 8d 4c 24 20 51 8d 54 24
10987010: 0c 52 e8 99 fa ff ff 8b 4d 08 8b 10 89 11 8b 50
10987020: 04 89 51 04 8b 50 08 89 51 08 8b 50 0c 89 51 0c
10987030: 8b 50 10 8b 40 14 89 51 10 83 c4 08 89 41 14 8b
10987040: c1 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986fc0 <.text+0x985fc0>:
10986fc0:	55                                              	push   ebp
10986fc1:	8b ec                                           	mov    ebp,esp
10986fc3:	83 e4 f0                                        	and    esp,0xfffffff0
10986fc6:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10986fc9:	83 ec 3c                                        	sub    esp,0x3c
10986fcc:	56                                              	push   esi
10986fcd:	e8 5e b0 b4 ff                                  	call   0x104d2030
10986fd2:	8b f0                                           	mov    esi,eax
10986fd4:	85 f6                                           	test   esi,esi
10986fd6:	74 27                                           	je     0x10986fff
10986fd8:	8b ce                                           	mov    ecx,esi
10986fda:	e8 d1 ea fb ff                                  	call   0x10945ab0
10986fdf:	85 c0                                           	test   eax,eax
10986fe1:	76 1c                                           	jbe    0x10986fff
10986fe3:	6a 00                                           	push   0x0
10986fe5:	8b ce                                           	mov    ecx,esi
10986fe7:	e8 74 01 b4 ff                                  	call   0x104c7160
10986fec:	85 c0                                           	test   eax,eax
10986fee:	74 0f                                           	je     0x10986fff
10986ff0:	8b c8                                           	mov    ecx,eax
10986ff2:	e8 39 a8 87 ff                                  	call   0x10201830
10986ff7:	50                                              	push   eax
10986ff8:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10986ffc:	50                                              	push   eax
10986ffd:	eb 13                                           	jmp    0x10987012
10986fff:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10987003:	e8 58 bc af ff                                  	call   0x10482c60
10987008:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098700c:	51                                              	push   ecx
1098700d:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
10987011:	52                                              	push   edx
10987012:	e8 99 fa ff ff                                  	call   0x10986ab0
10987017:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098701a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098701c:	89 11                                           	mov    DWORD PTR [ecx],edx
1098701e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10987021:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10987024:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10987027:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1098702a:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098702d:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
10987030:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
10987033:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
10987036:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
10987039:	83 c4 08                                        	add    esp,0x8
1098703c:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
1098703f:	8b c1                                           	mov    eax,ecx
10987041:	5e                                              	pop    esi
10987042:	8b e5                                           	mov    esp,ebp
10987044:	5d                                              	pop    ebp
10987045:	c3                                              	ret
10987046:	cc                                              	int3
10987047:	cc                                              	int3
10987048:	cc                                              	int3
10987049:	cc                                              	int3
1098704a:	cc                                              	int3
1098704b:	cc                                              	int3
1098704c:	cc                                              	int3
1098704d:	cc                                              	int3
1098704e:	cc                                              	int3
1098704f:	cc                                              	int3

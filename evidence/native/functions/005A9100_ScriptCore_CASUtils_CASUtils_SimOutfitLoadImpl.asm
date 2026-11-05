# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9100 (ScriptCore.CASUtils::CASUtils_SimOutfitLoadImpl)
Paired Ghidra pseudocode: 005A9100_ScriptCore_CASUtils_CASUtils_SimOutfitLoadImpl.c
Window: [0x005a9100, 0x005a91a0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a91a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9100: 83 ec 14 e8 78 6d f0 ff 8b 4c 24 20 8b 54 24 24
005a9110: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
005a9120: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
005a9130: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
005a9140: c8 ff d2 84 c0 75 06 33 c0 83 c4 14 c3 8b 0c 24
005a9150: 85 c9 56 74 16 8b 01 8b 50 0c 68 08 d7 5e 02 ff
005a9160: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
005a9170: ff d2 33 c0 5e 83 c4 14 c3 e8 12 02 1c 00 8b 10
005a9180: 6a 35 8b c8 8b 82 c8 00 00 00 56 ff d0 5e 83 c4
005a9190: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9100 <.text+0x1a8100>:
  5a9100:	83 ec 14                                        	sub    esp,0x14
  5a9103:	e8 78 6d f0 ff                                  	call   0x4afe80
  5a9108:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a910c:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a9110:	6a 00                                           	push   0x0
  5a9112:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a9116:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a911a:	6a 00                                           	push   0x0
  5a911c:	6a 00                                           	push   0x0
  5a911e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a9122:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a9126:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a912a:	6a 00                                           	push   0x0
  5a912c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a9130:	51                                              	push   ecx
  5a9131:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a9135:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9137:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a913a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a913e:	51                                              	push   ecx
  5a913f:	8b c8                                           	mov    ecx,eax
  5a9141:	ff d2                                           	call   edx
  5a9143:	84 c0                                           	test   al,al
  5a9145:	75 06                                           	jne    0x5a914d
  5a9147:	33 c0                                           	xor    eax,eax
  5a9149:	83 c4 14                                        	add    esp,0x14
  5a914c:	c3                                              	ret
  5a914d:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5a9150:	85 c9                                           	test   ecx,ecx
  5a9152:	56                                              	push   esi
  5a9153:	74 16                                           	je     0x5a916b
  5a9155:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a9157:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a915a:	68 08 d7 5e 02                                  	push   0x25ed708
  5a915f:	ff d2                                           	call   edx
  5a9161:	8b f0                                           	mov    esi,eax
  5a9163:	85 f6                                           	test   esi,esi
  5a9165:	75 12                                           	jne    0x5a9179
  5a9167:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a916b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a916d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a9170:	ff d2                                           	call   edx
  5a9172:	33 c0                                           	xor    eax,eax
  5a9174:	5e                                              	pop    esi
  5a9175:	83 c4 14                                        	add    esp,0x14
  5a9178:	c3                                              	ret
  5a9179:	e8 12 02 1c 00                                  	call   0x769390
  5a917e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9180:	6a 35                                           	push   0x35
  5a9182:	8b c8                                           	mov    ecx,eax
  5a9184:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a918a:	56                                              	push   esi
  5a918b:	ff d0                                           	call   eax
  5a918d:	5e                                              	pop    esi
  5a918e:	83 c4 14                                        	add    esp,0x14
  5a9191:	c3                                              	ret
  5a9192:	cc                                              	int3
  5a9193:	cc                                              	int3
  5a9194:	cc                                              	int3
  5a9195:	cc                                              	int3
  5a9196:	cc                                              	int3
  5a9197:	cc                                              	int3
  5a9198:	cc                                              	int3
  5a9199:	cc                                              	int3
  5a919a:	cc                                              	int3
  5a919b:	cc                                              	int3
  5a919c:	cc                                              	int3
  5a919d:	cc                                              	int3
  5a919e:	cc                                              	int3
  5a919f:	cc                                              	int3

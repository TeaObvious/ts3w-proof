# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581030 (World_FindGoodLocation)
Paired Ghidra pseudocode: 10581030_World_FindGoodLocation.c
Window: [0x10581030, 0x105810a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x105810a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581030: d9 44 24 48 8b 44 24 44 8b 54 24 3c 51 8b 4c 24
10581040: 44 d9 1c 24 50 8b 44 24 40 51 8b 4c 24 40 52 8b
10581050: 54 24 40 50 8b 44 24 40 51 8b 4c 24 40 52 8b 54
10581060: 24 40 50 8b 44 24 40 51 8b 4c 24 40 52 8b 54 24
10581070: 40 50 51 8b 4c 24 3c 52 8b 54 24 44 83 ec 0c 8b
10581080: c4 89 08 8b 4c 24 54 89 50 04 8b 54 24 48 89 48
10581090: 08 8b 44 24 44 52 50 e8 94 c1 ff ff 83 c4 48 c3

LINEAR DISASSEMBLY
10581030 <.text+0x580030>:
10581030:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
10581034:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10581038:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
1058103c:	51                                              	push   ecx
1058103d:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10581041:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10581044:	50                                              	push   eax
10581045:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10581049:	51                                              	push   ecx
1058104a:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1058104e:	52                                              	push   edx
1058104f:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
10581053:	50                                              	push   eax
10581054:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10581058:	51                                              	push   ecx
10581059:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1058105d:	52                                              	push   edx
1058105e:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
10581062:	50                                              	push   eax
10581063:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10581067:	51                                              	push   ecx
10581068:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1058106c:	52                                              	push   edx
1058106d:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
10581071:	50                                              	push   eax
10581072:	51                                              	push   ecx
10581073:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10581077:	52                                              	push   edx
10581078:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1058107c:	83 ec 0c                                        	sub    esp,0xc
1058107f:	8b c4                                           	mov    eax,esp
10581081:	89 08                                           	mov    DWORD PTR [eax],ecx
10581083:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
10581087:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1058108a:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
1058108e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10581091:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10581095:	52                                              	push   edx
10581096:	50                                              	push   eax
10581097:	e8 94 c1 ff ff                                  	call   0x1057d230
1058109c:	83 c4 48                                        	add    esp,0x48
1058109f:	c3                                              	ret

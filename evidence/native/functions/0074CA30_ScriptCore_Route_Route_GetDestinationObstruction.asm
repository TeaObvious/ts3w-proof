# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074ca30 (ScriptCore.Route::Route_GetDestinationObstruction)
Paired Ghidra pseudocode: 0074CA30_ScriptCore_Route_Route_GetDestinationObstruction.c
Window: [0x0074ca30, 0x0074caf0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074caf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074ca30: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 24 85
0074ca40: c9 53 56 57 0f 84 98 00 00 00 8b 45 08 50 e8 5d
0074ca50: ea ff ff 8b f0 85 f6 0f 84 85 00 00 00 8b 16 8b
0074ca60: 42 10 8b ce ff d0 8d 86 e0 00 00 00 39 00 74 69
0074ca70: 8b 8e e4 00 00 00 8b 79 08 85 ff 74 5c 8b 17 8b
0074ca80: 92 34 01 00 00 8d 44 24 20 50 8b cf ff d2 8b 4e
0074ca90: 44 8b 56 48 8b 46 40 6a 02 89 4c 24 18 8d 4c 24
0074caa0: 14 51 89 54 24 20 8d 54 24 28 52 89 44 24 1c 8b
0074cab0: 46 4c 6a 00 57 89 44 24 30 e8 32 96 0f 00 8b f8
0074cac0: 8b 06 8b da 8b 50 14 83 c4 14 8b ce ff d2 8b c7
0074cad0: 8b d3 5f 5e 5b 8b e5 5d c3 8b 06 8b 50 14 8b ce
0074cae0: ff d2 5f 5e 33 c0 33 d2 5b 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
0074ca30 <.text+0x34ba30>:
  74ca30:	55                                              	push   ebp
  74ca31:	8b ec                                           	mov    ebp,esp
  74ca33:	83 e4 f0                                        	and    esp,0xfffffff0
  74ca36:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74ca3c:	83 ec 24                                        	sub    esp,0x24
  74ca3f:	85 c9                                           	test   ecx,ecx
  74ca41:	53                                              	push   ebx
  74ca42:	56                                              	push   esi
  74ca43:	57                                              	push   edi
  74ca44:	0f 84 98 00 00 00                               	je     0x74cae2
  74ca4a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  74ca4d:	50                                              	push   eax
  74ca4e:	e8 5d ea ff ff                                  	call   0x74b4b0
  74ca53:	8b f0                                           	mov    esi,eax
  74ca55:	85 f6                                           	test   esi,esi
  74ca57:	0f 84 85 00 00 00                               	je     0x74cae2
  74ca5d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74ca5f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74ca62:	8b ce                                           	mov    ecx,esi
  74ca64:	ff d0                                           	call   eax
  74ca66:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
  74ca6c:	39 00                                           	cmp    DWORD PTR [eax],eax
  74ca6e:	74 69                                           	je     0x74cad9
  74ca70:	8b 8e e4 00 00 00                               	mov    ecx,DWORD PTR [esi+0xe4]
  74ca76:	8b 79 08                                        	mov    edi,DWORD PTR [ecx+0x8]
  74ca79:	85 ff                                           	test   edi,edi
  74ca7b:	74 5c                                           	je     0x74cad9
  74ca7d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  74ca7f:	8b 92 34 01 00 00                               	mov    edx,DWORD PTR [edx+0x134]
  74ca85:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  74ca89:	50                                              	push   eax
  74ca8a:	8b cf                                           	mov    ecx,edi
  74ca8c:	ff d2                                           	call   edx
  74ca8e:	8b 4e 44                                        	mov    ecx,DWORD PTR [esi+0x44]
  74ca91:	8b 56 48                                        	mov    edx,DWORD PTR [esi+0x48]
  74ca94:	8b 46 40                                        	mov    eax,DWORD PTR [esi+0x40]
  74ca97:	6a 02                                           	push   0x2
  74ca99:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  74ca9d:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  74caa1:	51                                              	push   ecx
  74caa2:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  74caa6:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  74caaa:	52                                              	push   edx
  74caab:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  74caaf:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
  74cab2:	6a 00                                           	push   0x0
  74cab4:	57                                              	push   edi
  74cab5:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  74cab9:	e8 32 96 0f 00                                  	call   0x8460f0
  74cabe:	8b f8                                           	mov    edi,eax
  74cac0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  74cac2:	8b da                                           	mov    ebx,edx
  74cac4:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  74cac7:	83 c4 14                                        	add    esp,0x14
  74caca:	8b ce                                           	mov    ecx,esi
  74cacc:	ff d2                                           	call   edx
  74cace:	8b c7                                           	mov    eax,edi
  74cad0:	8b d3                                           	mov    edx,ebx
  74cad2:	5f                                              	pop    edi
  74cad3:	5e                                              	pop    esi
  74cad4:	5b                                              	pop    ebx
  74cad5:	8b e5                                           	mov    esp,ebp
  74cad7:	5d                                              	pop    ebp
  74cad8:	c3                                              	ret
  74cad9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  74cadb:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  74cade:	8b ce                                           	mov    ecx,esi
  74cae0:	ff d2                                           	call   edx
  74cae2:	5f                                              	pop    edi
  74cae3:	5e                                              	pop    esi
  74cae4:	33 c0                                           	xor    eax,eax
  74cae6:	33 d2                                           	xor    edx,edx
  74cae8:	5b                                              	pop    ebx
  74cae9:	8b e5                                           	mov    esp,ebp
  74caeb:	5d                                              	pop    ebp
  74caec:	c3                                              	ret
  74caed:	cc                                              	int3
  74caee:	cc                                              	int3
  74caef:	cc                                              	int3

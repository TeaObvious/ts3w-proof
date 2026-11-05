# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076b0e0 (ScriptCore.ScriptProxy::ScriptProxy_GetResourceKeyImpl)
Paired Ghidra pseudocode: 0076B0E0_ScriptCore_ScriptProxy_ScriptProxy_GetResourceKeyImpl.c
Window: [0x0076b0e0, 0x0076b130) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076b130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076b0e0: 83 ec 10 e8 a8 e2 ff ff 8b 4c 24 1c 8b 10 8b 92
0076b0f0: bc 00 00 00 51 8b 4c 24 1c 51 8d 4c 24 08 51 8b
0076b100: c8 ff d2 8b 4c 24 14 8b 10 89 11 8b 50 04 89 51
0076b110: 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83
0076b120: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076b0e0 <.text+0x36a0e0>:
  76b0e0:	83 ec 10                                        	sub    esp,0x10
  76b0e3:	e8 a8 e2 ff ff                                  	call   0x769390
  76b0e8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  76b0ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76b0ee:	8b 92 bc 00 00 00                               	mov    edx,DWORD PTR [edx+0xbc]
  76b0f4:	51                                              	push   ecx
  76b0f5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  76b0f9:	51                                              	push   ecx
  76b0fa:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  76b0fe:	51                                              	push   ecx
  76b0ff:	8b c8                                           	mov    ecx,eax
  76b101:	ff d2                                           	call   edx
  76b103:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76b107:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76b109:	89 11                                           	mov    DWORD PTR [ecx],edx
  76b10b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  76b10e:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  76b111:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76b114:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  76b117:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  76b11a:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  76b11d:	8b c1                                           	mov    eax,ecx
  76b11f:	83 c4 10                                        	add    esp,0x10
  76b122:	c3                                              	ret
  76b123:	cc                                              	int3
  76b124:	cc                                              	int3
  76b125:	cc                                              	int3
  76b126:	cc                                              	int3
  76b127:	cc                                              	int3
  76b128:	cc                                              	int3
  76b129:	cc                                              	int3
  76b12a:	cc                                              	int3
  76b12b:	cc                                              	int3
  76b12c:	cc                                              	int3
  76b12d:	cc                                              	int3
  76b12e:	cc                                              	int3
  76b12f:	cc                                              	int3

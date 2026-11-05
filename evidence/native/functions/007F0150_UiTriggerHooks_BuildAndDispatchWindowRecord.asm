# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x007f0150 (UiTriggerHooks_BuildAndDispatchWindowRecord)
Paired actual Ghidra pseudocode: 007F0150_UiTriggerHooks_BuildAndDispatchWindowRecord.c
Envelope [0x007f0150,0x007f0197); 71 bytes; exact owned ranges: [0x007f0150,0x007f0197)
Owned: 71 original bytes / 31 instructions.
No nonowned envelope gap bytes. Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
007f0150 <original>:
  7f0150:	83 ec 1c                                        	sub    esp,0x1c
  7f0153:	56                                              	push   esi
  7f0154:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  7f0158:	85 f6                                           	test   esi,esi
  7f015a:	74 36                                           	je     0x7f0192
  7f015c:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7f0160:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  7f0164:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  7f0168:	50                                              	push   eax
  7f0169:	51                                              	push   ecx
  7f016a:	52                                              	push   edx
  7f016b:	e8 20 ff ff ff                                  	call   0x7f0090
  7f0170:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7f0172:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7f0175:	83 c4 0c                                        	add    esp,0xc
  7f0178:	8b ce                                           	mov    ecx,esi
  7f017a:	ff d2                                           	call   edx
  7f017c:	85 c0                                           	test   eax,eax
  7f017e:	74 12                                           	je     0x7f0192
  7f0180:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7f0182:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  7f0185:	6a 00                                           	push   0x0
  7f0187:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7f018b:	51                                              	push   ecx
  7f018c:	56                                              	push   esi
  7f018d:	56                                              	push   esi
  7f018e:	8b c8                                           	mov    ecx,eax
  7f0190:	ff d2                                           	call   edx
  7f0192:	5e                                              	pop    esi
  7f0193:	83 c4 1c                                        	add    esp,0x1c
  7f0196:	c3                                              	ret

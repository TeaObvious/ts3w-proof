# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec5200 (StateController_ClearQueuedStates)
Paired actual Ghidra pseudocode: 00EC5200_StateController_ClearQueuedStates.c
Envelope [0x00ec5200,0x00ec522f); 47 bytes; exact owned ranges: [0x00ec5200,0x00ec520d),[0x00ec5210,0x00ec522f)
Owned: 44 original bytes / 19 instructions.
EC5200 has 3 unowned alignment bytes at00EC520D..0F; the listing preserves them without function/body/definition repair.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec5200 <original>:
  ec5200:	56                   	push   esi
  ec5201:	8b f1                	mov    esi,ecx
  ec5203:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  ec5206:	3b 46 18             	cmp    eax,DWORD PTR [esi+0x18]
  ec5209:	74 22                	je     0xec522d
  ec520b:	eb 03                	jmp    0xec5210
  ec520d:	8d 49 00             	lea    ecx,[ecx+0x0]
  ec5210:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  ec5213:	83 e8 08             	sub    eax,0x8
  ec5216:	8b 00                	mov    eax,DWORD PTR [eax]
  ec5218:	8b 10                	mov    edx,DWORD PTR [eax]
  ec521a:	8b c8                	mov    ecx,eax
  ec521c:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  ec521f:	ff d0                	call   eax
  ec5221:	83 46 18 f8          	add    DWORD PTR [esi+0x18],0xfffffff8
  ec5225:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  ec5228:	3b 4e 18             	cmp    ecx,DWORD PTR [esi+0x18]
  ec522b:	75 e3                	jne    0xec5210
  ec522d:	5e                   	pop    esi
  ec522e:	c3                   	ret

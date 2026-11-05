# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0082c170, 0x0082c2a2); analyst name RoutingSystem_RunSynchronousJob.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0082c170 <.text+0x42b170>:
  82c170:	81 ec d8 00 00 00    	sub    esp,0xd8
  82c176:	53                   	push   ebx
  82c177:	56                   	push   esi
  82c178:	8b f1                	mov    esi,ecx
  82c17a:	80 be 7e 09 00 00 00 	cmp    BYTE PTR [esi+0x97e],0x0
  82c181:	57                   	push   edi
  82c182:	74 0d                	je     0x82c191
  82c184:	80 be 76 09 00 00 00 	cmp    BYTE PTR [esi+0x976],0x0
  82c18b:	0f 85 03 01 00 00    	jne    0x82c294
  82c191:	8b 9c 24 ec 00 00 00 	mov    ebx,DWORD PTR [esp+0xec]
  82c198:	8b 03                	mov    eax,DWORD PTR [ebx]
  82c19a:	3b 43 04             	cmp    eax,DWORD PTR [ebx+0x4]
  82c19d:	0f 84 f1 00 00 00    	je     0x82c294
  82c1a3:	8b bc 24 f0 00 00 00 	mov    edi,DWORD PTR [esp+0xf0]
  82c1aa:	8b 0f                	mov    ecx,DWORD PTR [edi]
  82c1ac:	3b 4f 04             	cmp    ecx,DWORD PTR [edi+0x4]
  82c1af:	0f 84 df 00 00 00    	je     0x82c294
  82c1b5:	55                   	push   ebp
  82c1b6:	8d ae 18 09 00 00    	lea    ebp,[esi+0x918]
  82c1bc:	68 28 2d 02 01       	push   0x1022d28
  82c1c1:	8b cd                	mov    ecx,ebp
  82c1c3:	e8 38 5a cb ff       	call   0x4e1c00
  82c1c8:	8b ce                	mov    ecx,esi
  82c1ca:	e8 91 fb ff ff       	call   0x82bd60
  82c1cf:	80 bc 24 fc 00 00 00 00 	cmp    BYTE PTR [esp+0xfc],0x0
  82c1d7:	8b 96 60 09 00 00    	mov    edx,DWORD PTR [esi+0x960]
  82c1dd:	8a 86 7d 09 00 00    	mov    al,BYTE PTR [esi+0x97d]
  82c1e3:	88 82 88 00 00 00    	mov    BYTE PTR [edx+0x88],al
  82c1e9:	0f 84 8f 00 00 00    	je     0x82c27e
  82c1ef:	8b 8c 24 10 01 00 00 	mov    ecx,DWORD PTR [esp+0x110]
  82c1f6:	8b 94 24 0c 01 00 00 	mov    edx,DWORD PTR [esp+0x10c]
  82c1fd:	8b 84 24 08 01 00 00 	mov    eax,DWORD PTR [esp+0x108]
  82c204:	51                   	push   ecx
  82c205:	8b 8c 24 08 01 00 00 	mov    ecx,DWORD PTR [esp+0x108]
  82c20c:	52                   	push   edx
  82c20d:	8b 94 24 08 01 00 00 	mov    edx,DWORD PTR [esp+0x108]
  82c214:	50                   	push   eax
  82c215:	8b 84 24 04 01 00 00 	mov    eax,DWORD PTR [esp+0x104]
  82c21c:	51                   	push   ecx
  82c21d:	8b 8e 64 09 00 00    	mov    ecx,DWORD PTR [esi+0x964]
  82c223:	8b b4 24 fc 00 00 00 	mov    esi,DWORD PTR [esp+0xfc]
  82c22a:	52                   	push   edx
  82c22b:	57                   	push   edi
  82c22c:	53                   	push   ebx
  82c22d:	50                   	push   eax
  82c22e:	51                   	push   ecx
  82c22f:	56                   	push   esi
  82c230:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  82c234:	e8 77 d7 fe ff       	call   0x8199b0
  82c239:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  82c23d:	e8 be ec fe ff       	call   0x81af00
  82c242:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  82c246:	e8 f5 d4 fe ff       	call   0x819740
  82c24b:	8b 06                	mov    eax,DWORD PTR [esi]
  82c24d:	3b c6                	cmp    eax,esi
  82c24f:	74 15                	je     0x82c266
  82c251:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  82c254:	8b 10                	mov    edx,DWORD PTR [eax]
  82c256:	8b c8                	mov    ecx,eax
  82c258:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  82c25b:	ff d0                	call   eax
  82c25d:	83 f8 03             	cmp    eax,0x3
  82c260:	7d 04                	jge    0x82c266
  82c262:	b3 01                	mov    bl,0x1
  82c264:	eb 02                	jmp    0x82c268
  82c266:	32 db                	xor    bl,bl
  82c268:	8b cd                	mov    ecx,ebp
  82c26a:	e8 51 5a cb ff       	call   0x4e1cc0
  82c26f:	5d                   	pop    ebp
  82c270:	5f                   	pop    edi
  82c271:	5e                   	pop    esi
  82c272:	8a c3                	mov    al,bl
  82c274:	5b                   	pop    ebx
  82c275:	81 c4 d8 00 00 00    	add    esp,0xd8
  82c27b:	c2 28 00             	ret    0x28
  82c27e:	8b cd                	mov    ecx,ebp
  82c280:	e8 3b 5a cb ff       	call   0x4e1cc0
  82c285:	5d                   	pop    ebp
  82c286:	5f                   	pop    edi
  82c287:	5e                   	pop    esi
  82c288:	32 c0                	xor    al,al
  82c28a:	5b                   	pop    ebx
  82c28b:	81 c4 d8 00 00 00    	add    esp,0xd8
  82c291:	c2 28 00             	ret    0x28
  82c294:	5f                   	pop    edi
  82c295:	5e                   	pop    esi
  82c296:	32 c0                	xor    al,al
  82c298:	5b                   	pop    ebx
  82c299:	81 c4 d8 00 00 00    	add    esp,0xd8
  82c29f:	c2 28 00             	ret    0x28

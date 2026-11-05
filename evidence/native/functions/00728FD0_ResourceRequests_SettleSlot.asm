# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00728fd0 (ResourceRequests_SettleSlot)
Complete body envelope: 0x00728fd0..0x00729141 (exclusive end)
Body ranges: [[00728fd0, 00729140]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00728fd0 <.text+0x327fd0>:
  728fd0:	83 ec 24             	sub    esp,0x24
  728fd3:	53                   	push   ebx
  728fd4:	55                   	push   ebp
  728fd5:	56                   	push   esi
  728fd6:	57                   	push   edi
  728fd7:	8b f1                	mov    esi,ecx
  728fd9:	8d 4e 40             	lea    ecx,[esi+0x40]
  728fdc:	33 ff                	xor    edi,edi
  728fde:	68 44 e3 ff 00       	push   0xffe344
  728fe3:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  728fe7:	33 ed                	xor    ebp,ebp
  728fe9:	32 db                	xor    bl,bl
  728feb:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  728fef:	e8 0c 8c db ff       	call   0x4e1c00
  728ff4:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  728ff8:	8b 00                	mov    eax,DWORD PTR [eax]
  728ffa:	a8 01                	test   al,0x1
  728ffc:	0f 84 d5 00 00 00    	je     0x7290d7
  729002:	8b 68 0f             	mov    ebp,DWORD PTR [eax+0xf]
  729005:	85 ed                	test   ebp,ebp
  729007:	0f 84 c8 00 00 00    	je     0x7290d5
  72900d:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  729010:	8b 02                	mov    eax,DWORD PTR [edx]
  729012:	8b cd                	mov    ecx,ebp
  729014:	ff d0                	call   eax
  729016:	38 9d 99 00 00 00    	cmp    BYTE PTR [ebp+0x99],bl
  72901c:	c6 85 9a 00 00 00 01 	mov    BYTE PTR [ebp+0x9a],0x1
  729023:	0f 84 91 00 00 00    	je     0x7290ba
  729029:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  72902c:	3b 4e 1c             	cmp    ecx,DWORD PTR [esi+0x1c]
  72902f:	8d 46 04             	lea    eax,[esi+0x4]
  729032:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  729036:	0f 84 7e 00 00 00    	je     0x7290ba
  72903c:	8b 95 a4 00 00 00    	mov    edx,DWORD PTR [ebp+0xa4]
  729042:	68 f4 01 00 00       	push   0x1f4
  729047:	52                   	push   edx
  729048:	8b ce                	mov    ecx,esi
  72904a:	e8 e1 eb ff ff       	call   0x727c30
  72904f:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  729052:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  729055:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
  729058:	8b 7e 18             	mov    edi,DWORD PTR [esi+0x18]
  72905b:	8b 76 1c             	mov    esi,DWORD PTR [esi+0x1c]
  72905e:	3b c6                	cmp    eax,esi
  729060:	74 54                	je     0x7290b6
  729062:	8b 08                	mov    ecx,DWORD PTR [eax]
  729064:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  729068:	8b 8d a4 00 00 00    	mov    ecx,DWORD PTR [ebp+0xa4]
  72906e:	3b 4c 24 18          	cmp    ecx,DWORD PTR [esp+0x18]
  729072:	74 1b                	je     0x72908f
  729074:	83 c0 08             	add    eax,0x8
  729077:	3b c3                	cmp    eax,ebx
  729079:	75 0e                	jne    0x729089
  72907b:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  72907e:	83 c7 04             	add    edi,0x4
  729081:	8d 9a 00 01 00 00    	lea    ebx,[edx+0x100]
  729087:	8b c2                	mov    eax,edx
  729089:	3b c6                	cmp    eax,esi
  72908b:	75 d5                	jne    0x729062
  72908d:	eb 27                	jmp    0x7290b6
  72908f:	83 ec 10             	sub    esp,0x10
  729092:	8b cc                	mov    ecx,esp
  729094:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  729097:	8d 54 24 34          	lea    edx,[esp+0x34]
  72909b:	89 01                	mov    DWORD PTR [ecx],eax
  72909d:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  7290a0:	89 79 0c             	mov    DWORD PTR [ecx+0xc],edi
  7290a3:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  7290a7:	52                   	push   edx
  7290a8:	e8 a3 fd ff ff       	call   0x728e50
  7290ad:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  7290b1:	e8 9a 22 e7 ff       	call   0x59b350
  7290b6:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  7290ba:	8b b5 a8 00 00 00    	mov    esi,DWORD PTR [ebp+0xa8]
  7290c0:	85 f6                	test   esi,esi
  7290c2:	74 09                	je     0x7290cd
  7290c4:	8b ce                	mov    ecx,esi
  7290c6:	e8 55 0d e7 ff       	call   0x599e20
  7290cb:	8b fe                	mov    edi,esi
  7290cd:	8a 9d 9b 00 00 00    	mov    bl,BYTE PTR [ebp+0x9b]
  7290d3:	eb 02                	jmp    0x7290d7
  7290d5:	8b ef                	mov    ebp,edi
  7290d7:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  7290db:	e8 e0 8b db ff       	call   0x4e1cc0
  7290e0:	85 ff                	test   edi,edi
  7290e2:	74 24                	je     0x729108
  7290e4:	84 db                	test   bl,bl
  7290e6:	74 0d                	je     0x7290f5
  7290e8:	68 f4 01 00 00       	push   0x1f4
  7290ed:	8d 4d 48             	lea    ecx,[ebp+0x48]
  7290f0:	e8 3b 81 cd ff       	call   0x401230
  7290f5:	68 f4 01 00 00       	push   0x1f4
  7290fa:	8b cf                	mov    ecx,edi
  7290fc:	e8 df 20 e7 ff       	call   0x59b1e0
  729101:	8b cf                	mov    ecx,edi
  729103:	e8 b8 1d e7 ff       	call   0x59aec0
  729108:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  72910c:	8b 00                	mov    eax,DWORD PTR [eax]
  72910e:	a8 03                	test   al,0x3
  729110:	75 08                	jne    0x72911a
  729112:	85 c0                	test   eax,eax
  729114:	74 04                	je     0x72911a
  729116:	b3 01                	mov    bl,0x1
  729118:	eb 02                	jmp    0x72911c
  72911a:	32 db                	xor    bl,bl
  72911c:	85 ed                	test   ebp,ebp
  72911e:	74 0a                	je     0x72912a
  729120:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  729123:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  729126:	8b cd                	mov    ecx,ebp
  729128:	ff d0                	call   eax
  72912a:	85 ff                	test   edi,edi
  72912c:	74 07                	je     0x729135
  72912e:	8b cf                	mov    ecx,edi
  729130:	e8 1b 22 e7 ff       	call   0x59b350
  729135:	5f                   	pop    edi
  729136:	5e                   	pop    esi
  729137:	5d                   	pop    ebp
  729138:	8a c3                	mov    al,bl
  72913a:	5b                   	pop    ebx
  72913b:	83 c4 24             	add    esp,0x24
  72913e:	c2 04 00             	ret    0x4

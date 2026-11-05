# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060f120,0x0060f25d); analyst name RenderDevice_ApplyPendingBaselines.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060f120 <.text+0x20e120>:
  60f120:	83 ec 10             	sub    esp,0x10
  60f123:	53                   	push   ebx
  60f124:	55                   	push   ebp
  60f125:	8b d1                	mov    edx,ecx
  60f127:	56                   	push   esi
  60f128:	57                   	push   edi
  60f129:	bf 07 00 00 00       	mov    edi,0x7
  60f12e:	8d 8a b8 07 00 00    	lea    ecx,[edx+0x7b8]
  60f134:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  60f138:	8d aa 60 01 00 00    	lea    ebp,[edx+0x160]
  60f13e:	8d b2 8c 04 00 00    	lea    esi,[edx+0x48c]
  60f144:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  60f148:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  60f14c:	8d 64 24 00          	lea    esp,[esp+0x0]
  60f150:	8b 59 1c             	mov    ebx,DWORD PTR [ecx+0x1c]
  60f153:	f7 d3                	not    ebx
  60f155:	23 19                	and    ebx,DWORD PTR [ecx]
  60f157:	74 48                	je     0x60f1a1
  60f159:	c7 44 24 10 20 00 00 00 	mov    DWORD PTR [esp+0x10],0x20
  60f161:	f6 c3 01             	test   bl,0x1
  60f164:	74 21                	je     0x60f187
  60f166:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  60f169:	39 06                	cmp    DWORD PTR [esi],eax
  60f16b:	74 1a                	je     0x60f187
  60f16d:	89 06                	mov    DWORD PTR [esi],eax
  60f16f:	8b 4a 0c             	mov    ecx,DWORD PTR [edx+0xc]
  60f172:	8b 11                	mov    edx,DWORD PTR [ecx]
  60f174:	50                   	push   eax
  60f175:	8b 82 e4 00 00 00    	mov    eax,DWORD PTR [edx+0xe4]
  60f17b:	57                   	push   edi
  60f17c:	51                   	push   ecx
  60f17d:	ff d0                	call   eax
  60f17f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  60f183:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  60f187:	d1 eb                	shr    ebx,1
  60f189:	83 c7 01             	add    edi,0x1
  60f18c:	83 c5 04             	add    ebp,0x4
  60f18f:	83 c6 04             	add    esi,0x4
  60f192:	83 6c 24 10 01       	sub    DWORD PTR [esp+0x10],0x1
  60f197:	75 c8                	jne    0x60f161
  60f199:	c7 01 00 00 00 00    	mov    DWORD PTR [ecx],0x0
  60f19f:	eb 0f                	jmp    0x60f1b0
  60f1a1:	83 c7 20             	add    edi,0x20
  60f1a4:	81 c5 80 00 00 00    	add    ebp,0x80
  60f1aa:	81 c6 80 00 00 00    	add    esi,0x80
  60f1b0:	83 c1 04             	add    ecx,0x4
  60f1b3:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  60f1b8:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  60f1bc:	75 92                	jne    0x60f150
  60f1be:	8d 82 44 08 00 00    	lea    eax,[edx+0x844]
  60f1c4:	33 ed                	xor    ebp,ebp
  60f1c6:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  60f1ca:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  60f1d0:	be 01 00 00 00       	mov    esi,0x1
  60f1d5:	8b cd                	mov    ecx,ebp
  60f1d7:	d3 e6                	shl    esi,cl
  60f1d9:	85 b2 0c 08 00 00    	test   DWORD PTR [edx+0x80c],esi
  60f1df:	74 61                	je     0x60f242
  60f1e1:	8b 58 38             	mov    ebx,DWORD PTR [eax+0x38]
  60f1e4:	f7 d3                	not    ebx
  60f1e6:	23 58 34             	and    ebx,DWORD PTR [eax+0x34]
  60f1e9:	8d 48 cc             	lea    ecx,[eax-0x34]
  60f1ec:	74 54                	je     0x60f242
  60f1ee:	33 ff                	xor    edi,edi
  60f1f0:	2b c8                	sub    ecx,eax
  60f1f2:	8b f0                	mov    esi,eax
  60f1f4:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  60f1f8:	eb 0a                	jmp    0x60f204
  60f1fa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  60f200:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  60f204:	f6 c3 01             	test   bl,0x1
  60f207:	74 25                	je     0x60f22e
  60f209:	8b 0c 31             	mov    ecx,DWORD PTR [ecx+esi*1]
  60f20c:	39 0e                	cmp    DWORD PTR [esi],ecx
  60f20e:	74 1e                	je     0x60f22e
  60f210:	51                   	push   ecx
  60f211:	89 0e                	mov    DWORD PTR [esi],ecx
  60f213:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  60f216:	8b 10                	mov    edx,DWORD PTR [eax]
  60f218:	8b 92 14 01 00 00    	mov    edx,DWORD PTR [edx+0x114]
  60f21e:	8d 4f 01             	lea    ecx,[edi+0x1]
  60f221:	51                   	push   ecx
  60f222:	55                   	push   ebp
  60f223:	50                   	push   eax
  60f224:	ff d2                	call   edx
  60f226:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  60f22a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  60f22e:	83 c7 01             	add    edi,0x1
  60f231:	d1 eb                	shr    ebx,1
  60f233:	83 c6 04             	add    esi,0x4
  60f236:	83 ff 0d             	cmp    edi,0xd
  60f239:	72 c5                	jb     0x60f200
  60f23b:	c7 40 34 00 00 00 00 	mov    DWORD PTR [eax+0x34],0x0
  60f242:	83 c5 01             	add    ebp,0x1
  60f245:	83 c0 74             	add    eax,0x74
  60f248:	83 fd 10             	cmp    ebp,0x10
  60f24b:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  60f24f:	0f 82 7b ff ff ff    	jb     0x60f1d0
  60f255:	5f                   	pop    edi
  60f256:	5e                   	pop    esi
  60f257:	5d                   	pop    ebp
  60f258:	5b                   	pop    ebx
  60f259:	83 c4 10             	add    esp,0x10
  60f25c:	c3                   	ret

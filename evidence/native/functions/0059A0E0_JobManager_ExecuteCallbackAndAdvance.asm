# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059a0e0..0059a263; JobManager_ExecuteCallbackAndAdvance
  59a0e0:	53                   	push   ebx
  59a0e1:	55                   	push   ebp
  59a0e2:	56                   	push   esi
  59a0e3:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  59a0e7:	33 ed                	xor    ebp,ebp
  59a0e9:	39 6e 10             	cmp    DWORD PTR [esi+0x10],ebp
  59a0ec:	57                   	push   edi
  59a0ed:	8b d9                	mov    ebx,ecx
  59a0ef:	74 3e                	je     0x59a12f
  59a0f1:	8d 7b 08             	lea    edi,[ebx+0x8]
  59a0f4:	8b cf                	mov    ecx,edi
  59a0f6:	c7 46 24 04 00 00 00 	mov    DWORD PTR [esi+0x24],0x4
  59a0fd:	e8 be 7b f4 ff       	call   0x4e1cc0
  59a102:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  59a105:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  59a108:	6a 04                	push   0x4
  59a10a:	50                   	push   eax
  59a10b:	8d 4e 08             	lea    ecx,[esi+0x8]
  59a10e:	51                   	push   ecx
  59a10f:	ff d2                	call   edx
  59a111:	83 c4 0c             	add    esp,0xc
  59a114:	68 ac a7 fd 00       	push   0xfda7ac
  59a119:	8b cf                	mov    ecx,edi
  59a11b:	88 44 24 18          	mov    BYTE PTR [esp+0x18],al
  59a11f:	e8 dc 7a f4 ff       	call   0x4e1c00
  59a124:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  59a129:	0f 84 25 01 00 00    	je     0x59a254
  59a12f:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  59a132:	83 f8 07             	cmp    eax,0x7
  59a135:	0f 84 19 01 00 00    	je     0x59a254
  59a13b:	8d 46 38             	lea    eax,[esi+0x38]
  59a13e:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59a141:	74 31                	je     0x59a174
  59a143:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59a146:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59a148:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  59a14b:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
  59a14e:	c7 46 24 02 00 00 00 	mov    DWORD PTR [esi+0x24],0x2
  59a155:	89 08                	mov    DWORD PTR [eax],ecx
  59a157:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59a15a:	8b 4b 5c             	mov    ecx,DWORD PTR [ebx+0x5c]
  59a15d:	8d 43 58             	lea    eax,[ebx+0x58]
  59a160:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  59a163:	89 06                	mov    DWORD PTR [esi],eax
  59a165:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59a168:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  59a16b:	5f                   	pop    edi
  59a16c:	89 32                	mov    DWORD PTR [edx],esi
  59a16e:	5e                   	pop    esi
  59a16f:	5d                   	pop    ebp
  59a170:	5b                   	pop    ebx
  59a171:	c2 04 00             	ret    0x4
  59a174:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  59a177:	83 f8 05             	cmp    eax,0x5
  59a17a:	75 15                	jne    0x59a191
  59a17c:	56                   	push   esi
  59a17d:	8b cb                	mov    ecx,ebx
  59a17f:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  59a182:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
  59a185:	e8 f6 07 00 00       	call   0x59a980
  59a18a:	5f                   	pop    edi
  59a18b:	5e                   	pop    esi
  59a18c:	5d                   	pop    ebp
  59a18d:	5b                   	pop    ebx
  59a18e:	c2 04 00             	ret    0x4
  59a191:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59a194:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59a196:	c7 46 24 06 00 00 00 	mov    DWORD PTR [esi+0x24],0x6
  59a19d:	89 08                	mov    DWORD PTR [eax],ecx
  59a19f:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59a1a2:	8b 4b 7c             	mov    ecx,DWORD PTR [ebx+0x7c]
  59a1a5:	8d 43 78             	lea    eax,[ebx+0x78]
  59a1a8:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  59a1ab:	89 06                	mov    DWORD PTR [esi],eax
  59a1ad:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59a1b0:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  59a1b3:	8d 46 40             	lea    eax,[esi+0x40]
  59a1b6:	89 32                	mov    DWORD PTR [edx],esi
  59a1b8:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59a1bb:	74 5e                	je     0x59a21b
  59a1bd:	8d ab 94 00 00 00    	lea    ebp,[ebx+0x94]
  59a1c3:	8b 46 44             	mov    eax,DWORD PTR [esi+0x44]
  59a1c6:	85 c0                	test   eax,eax
  59a1c8:	74 05                	je     0x59a1cf
  59a1ca:	83 c0 f8             	add    eax,0xfffffff8
  59a1cd:	eb 02                	jmp    0x59a1d1
  59a1cf:	33 c0                	xor    eax,eax
  59a1d1:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  59a1d4:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  59a1d7:	8b 78 14             	mov    edi,DWORD PTR [eax+0x14]
  59a1da:	89 11                	mov    DWORD PTR [ecx],edx
  59a1dc:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59a1df:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59a1e2:	8b 10                	mov    edx,DWORD PTR [eax]
  59a1e4:	89 11                	mov    DWORD PTR [ecx],edx
  59a1e6:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59a1e9:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  59a1ec:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  59a1ef:	89 28                	mov    DWORD PTR [eax],ebp
  59a1f1:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
  59a1f4:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  59a1f7:	89 02                	mov    DWORD PTR [edx],eax
  59a1f9:	8d 47 38             	lea    eax,[edi+0x38]
  59a1fc:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59a1ff:	75 10                	jne    0x59a211
  59a201:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
  59a204:	83 f8 02             	cmp    eax,0x2
  59a207:	75 08                	jne    0x59a211
  59a209:	57                   	push   edi
  59a20a:	8b cb                	mov    ecx,ebx
  59a20c:	e8 6f 07 00 00       	call   0x59a980
  59a211:	8d 46 40             	lea    eax,[esi+0x40]
  59a214:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59a217:	75 aa                	jne    0x59a1c3
  59a219:	33 ed                	xor    ebp,ebp
  59a21b:	80 7e 4c 00          	cmp    BYTE PTR [esi+0x4c],0x0
  59a21f:	74 0c                	je     0x59a22d
  59a221:	8d 4b 40             	lea    ecx,[ebx+0x40]
  59a224:	c6 46 4c 00          	mov    BYTE PTR [esi+0x4c],0x0
  59a228:	e8 83 fb ff ff       	call   0x599db0
  59a22d:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  59a230:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
  59a233:	c6 46 4e 00          	mov    BYTE PTR [esi+0x4e],0x0
  59a237:	8d 4e 30             	lea    ecx,[esi+0x30]
  59a23a:	83 ca ff             	or     edx,0xffffffff
  59a23d:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  59a241:	4a                   	dec    edx
  59a242:	75 19                	jne    0x59a25d
  59a244:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  59a247:	56                   	push   esi
  59a248:	e8 c3 0d 00 00       	call   0x59b010
  59a24d:	5f                   	pop    edi
  59a24e:	5e                   	pop    esi
  59a24f:	5d                   	pop    ebp
  59a250:	5b                   	pop    ebx
  59a251:	c2 04 00             	ret    0x4
  59a254:	55                   	push   ebp
  59a255:	56                   	push   esi
  59a256:	8b cb                	mov    ecx,ebx
  59a258:	e8 a3 0c 00 00       	call   0x59af00
  59a25d:	5f                   	pop    edi
  59a25e:	5e                   	pop    esi
  59a25f:	5d                   	pop    ebp
  59a260:	5b                   	pop    ebx
  59a261:	c2 04 00             	ret    0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [00ac01e0,00ac024c); Lot_ApplyDetailRequestToObjects
  ac01e0:	83 ec 08             	sub    esp,0x8
  ac01e3:	57                   	push   edi
  ac01e4:	8b f9                	mov    edi,ecx
  ac01e6:	80 bf c9 00 00 00 00 	cmp    BYTE PTR [edi+0xc9],0x0
  ac01ed:	74 0e                	je     0xac01fd
  ac01ef:	c6 87 c1 00 00 00 00 	mov    BYTE PTR [edi+0xc1],0x0
  ac01f6:	5f                   	pop    edi
  ac01f7:	83 c4 08             	add    esp,0x8
  ac01fa:	c2 08 00             	ret    0x8
  ac01fd:	53                   	push   ebx
  ac01fe:	56                   	push   esi
  ac01ff:	57                   	push   edi
  ac0200:	68 fa 5e c5 04       	push   0x4c55efa
  ac0205:	68 8c 5e c5 04       	push   0x4c55e8c
  ac020a:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  ac020e:	e8 5d 2f d1 ff       	call   0x7d3170
  ac0213:	8b 77 14             	mov    esi,DWORD PTR [edi+0x14]
  ac0216:	8b 5f 18             	mov    ebx,DWORD PTR [edi+0x18]
  ac0219:	3b f3                	cmp    esi,ebx
  ac021b:	74 1d                	je     0xac023a
  ac021d:	55                   	push   ebp
  ac021e:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  ac0222:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  ac0226:	8b 0e                	mov    ecx,DWORD PTR [esi]
  ac0228:	50                   	push   eax
  ac0229:	55                   	push   ebp
  ac022a:	51                   	push   ecx
  ac022b:	8b cf                	mov    ecx,edi
  ac022d:	e8 be e7 ff ff       	call   0xabe9f0
  ac0232:	83 c6 04             	add    esi,0x4
  ac0235:	3b f3                	cmp    esi,ebx
  ac0237:	75 e9                	jne    0xac0222
  ac0239:	5d                   	pop    ebp
  ac023a:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  ac023e:	e8 6d 2f d1 ff       	call   0x7d31b0
  ac0243:	5e                   	pop    esi
  ac0244:	5b                   	pop    ebx
  ac0245:	5f                   	pop    edi
  ac0246:	83 c4 08             	add    esp,0x8
  ac0249:	c2 08 00             	ret    0x8

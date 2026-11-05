# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00ab3310..00ab336b; Lot_DispatchDetailDemotionToObjects
  ab3310:	51                   	push   ecx
  ab3311:	55                   	push   ebp
  ab3312:	8b 69 18             	mov    ebp,DWORD PTR [ecx+0x18]
  ab3315:	56                   	push   esi
  ab3316:	8b 71 14             	mov    esi,DWORD PTR [ecx+0x14]
  ab3319:	3b f5                	cmp    esi,ebp
  ab331b:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  ab331f:	74 45                	je     0xab3366
  ab3321:	53                   	push   ebx
  ab3322:	8a 5c 24 14          	mov    bl,BYTE PTR [esp+0x14]
  ab3326:	57                   	push   edi
  ab3327:	eb 0b                	jmp    0xab3334
  ab3329:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  ab3330:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  ab3334:	84 db                	test   bl,bl
  ab3336:	8b 3e                	mov    edi,DWORD PTR [esi]
  ab3338:	75 16                	jne    0xab3350
  ab333a:	e8 81 18 b7 ff       	call   0x624bc0
  ab333f:	84 c0                	test   al,al
  ab3341:	75 0d                	jne    0xab3350
  ab3343:	57                   	push   edi
  ab3344:	e8 37 3d 05 00       	call   0xb07080
  ab3349:	83 c4 04             	add    esp,0x4
  ab334c:	84 c0                	test   al,al
  ab334e:	75 0d                	jne    0xab335d
  ab3350:	6a 00                	push   0x0
  ab3352:	57                   	push   edi
  ab3353:	6a 0c                	push   0xc
  ab3355:	e8 66 23 e8 ff       	call   0x9356c0
  ab335a:	83 c4 0c             	add    esp,0xc
  ab335d:	83 c6 04             	add    esi,0x4
  ab3360:	3b f5                	cmp    esi,ebp
  ab3362:	75 cc                	jne    0xab3330
  ab3364:	5f                   	pop    edi
  ab3365:	5b                   	pop    ebx
  ab3366:	5e                   	pop    esi
  ab3367:	5d                   	pop    ebp
  ab3368:	59                   	pop    ecx
  ab3369:	c2 04 00             	ret    0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 006e3010..006e30c3; WorldContext_TryAcquireForJob
  6e3010:	53                   	push   ebx
  6e3011:	56                   	push   esi
  6e3012:	8b f1                	mov    esi,ecx
  6e3014:	57                   	push   edi
  6e3015:	8d 9e 90 01 00 00    	lea    ebx,[esi+0x190]
  6e301b:	68 58 87 ff 00       	push   0xff8758
  6e3020:	8b cb                	mov    ecx,ebx
  6e3022:	e8 d9 eb df ff       	call   0x4e1c00
  6e3027:	8b 86 c8 01 00 00    	mov    eax,DWORD PTR [esi+0x1c8]
  6e302d:	3b 86 d8 01 00 00    	cmp    eax,DWORD PTR [esi+0x1d8]
  6e3033:	8d be c0 01 00 00    	lea    edi,[esi+0x1c0]
  6e3039:	75 49                	jne    0x6e3084
  6e303b:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  6e303f:	8b ce                	mov    ecx,esi
  6e3041:	e8 da 6d eb ff       	call   0x599e20
  6e3046:	8b 47 18             	mov    eax,DWORD PTR [edi+0x18]
  6e3049:	8d 48 04             	lea    ecx,[eax+0x4]
  6e304c:	3b 4f 20             	cmp    ecx,DWORD PTR [edi+0x20]
  6e304f:	74 18                	je     0x6e3069
  6e3051:	85 c0                	test   eax,eax
  6e3053:	89 4f 18             	mov    DWORD PTR [edi+0x18],ecx
  6e3056:	74 1d                	je     0x6e3075
  6e3058:	8b cb                	mov    ecx,ebx
  6e305a:	89 30                	mov    DWORD PTR [eax],esi
  6e305c:	e8 5f ec df ff       	call   0x4e1cc0
  6e3061:	5f                   	pop    edi
  6e3062:	5e                   	pop    esi
  6e3063:	b0 01                	mov    al,0x1
  6e3065:	5b                   	pop    ebx
  6e3066:	c2 08 00             	ret    0x8
  6e3069:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6e306d:	51                   	push   ecx
  6e306e:	8b cf                	mov    ecx,edi
  6e3070:	e8 ab d1 04 00       	call   0x730220
  6e3075:	8b cb                	mov    ecx,ebx
  6e3077:	e8 44 ec df ff       	call   0x4e1cc0
  6e307c:	5f                   	pop    edi
  6e307d:	5e                   	pop    esi
  6e307e:	b0 01                	mov    al,0x1
  6e3080:	5b                   	pop    ebx
  6e3081:	c2 08 00             	ret    0x8
  6e3084:	8b 86 d8 01 00 00    	mov    eax,DWORD PTR [esi+0x1d8]
  6e308a:	8b 8e dc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1dc]
  6e3090:	3b c1                	cmp    eax,ecx
  6e3092:	8b b6 e4 01 00 00    	mov    esi,DWORD PTR [esi+0x1e4]
  6e3098:	75 0b                	jne    0x6e30a5
  6e309a:	83 ee 04             	sub    esi,0x4
  6e309d:	8b 36                	mov    esi,DWORD PTR [esi]
  6e309f:	8d 86 00 01 00 00    	lea    eax,[esi+0x100]
  6e30a5:	8b 70 fc             	mov    esi,DWORD PTR [eax-0x4]
  6e30a8:	8b ce                	mov    ecx,esi
  6e30aa:	e8 71 6d eb ff       	call   0x599e20
  6e30af:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  6e30b3:	8b cb                	mov    ecx,ebx
  6e30b5:	89 32                	mov    DWORD PTR [edx],esi
  6e30b7:	e8 04 ec df ff       	call   0x4e1cc0
  6e30bc:	5f                   	pop    edi
  6e30bd:	5e                   	pop    esi
  6e30be:	32 c0                	xor    al,al
  6e30c0:	5b                   	pop    ebx
  6e30c1:	c2 08 00             	ret    0x8

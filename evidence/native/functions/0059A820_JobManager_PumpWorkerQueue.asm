# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059a820..0059a979; JobManager_PumpWorkerQueue
  59a820:	83 ec 18             	sub    esp,0x18
  59a823:	53                   	push   ebx
  59a824:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  59a828:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
  59a82b:	8a 53 40             	mov    dl,BYTE PTR [ebx+0x40]
  59a82e:	55                   	push   ebp
  59a82f:	56                   	push   esi
  59a830:	c1 e8 1f             	shr    eax,0x1f
  59a833:	57                   	push   edi
  59a834:	8b f9                	mov    edi,ecx
  59a836:	32 c9                	xor    cl,cl
  59a838:	24 01                	and    al,0x1
  59a83a:	84 d2                	test   dl,dl
  59a83c:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  59a840:	88 4c 24 13          	mov    BYTE PTR [esp+0x13],cl
  59a844:	88 44 24 2c          	mov    BYTE PTR [esp+0x2c],al
  59a848:	0f 85 20 01 00 00    	jne    0x59a96e
  59a84e:	8d 6b 30             	lea    ebp,[ebx+0x30]
  59a851:	eb 04                	jmp    0x59a857
  59a853:	8a 44 24 2c          	mov    al,BYTE PTR [esp+0x2c]
  59a857:	39 6d 04             	cmp    DWORD PTR [ebp+0x4],ebp
  59a85a:	b9 00 00 00 80       	mov    ecx,0x80000000
  59a85f:	74 06                	je     0x59a867
  59a861:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  59a864:	8b 49 48             	mov    ecx,DWORD PTR [ecx+0x48]
  59a867:	84 c0                	test   al,al
  59a869:	74 29                	je     0x59a894
  59a86b:	8d 47 60             	lea    eax,[edi+0x60]
  59a86e:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59a871:	74 21                	je     0x59a894
  59a873:	8b 00                	mov    eax,DWORD PTR [eax]
  59a875:	39 48 48             	cmp    DWORD PTR [eax+0x48],ecx
  59a878:	7e 1a                	jle    0x59a894
  59a87a:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59a87d:	8b 10                	mov    edx,DWORD PTR [eax]
  59a87f:	89 11                	mov    DWORD PTR [ecx],edx
  59a881:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59a884:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  59a887:	89 10                	mov    DWORD PTR [eax],edx
  59a889:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
  59a88c:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
  59a88f:	8b 08                	mov    ecx,DWORD PTR [eax]
  59a891:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59a894:	39 6d 04             	cmp    DWORD PTR [ebp+0x4],ebp
  59a897:	74 74                	je     0x59a90d
  59a899:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  59a89c:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
  59a89f:	3b c8                	cmp    ecx,eax
  59a8a1:	74 17                	je     0x59a8ba
  59a8a3:	8b 10                	mov    edx,DWORD PTR [eax]
  59a8a5:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  59a8a8:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
  59a8ab:	89 16                	mov    DWORD PTR [esi],edx
  59a8ad:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  59a8b0:	89 02                	mov    DWORD PTR [edx],eax
  59a8b2:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59a8b5:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  59a8b8:	89 08                	mov    DWORD PTR [eax],ecx
  59a8ba:	8b 53 38             	mov    edx,DWORD PTR [ebx+0x38]
  59a8bd:	52                   	push   edx
  59a8be:	8b cf                	mov    ecx,edi
  59a8c0:	e8 1b f8 ff ff       	call   0x59a0e0
  59a8c5:	80 7c 24 38 00       	cmp    BYTE PTR [esp+0x38],0x0
  59a8ca:	b0 01                	mov    al,0x1
  59a8cc:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  59a8d0:	75 31                	jne    0x59a903
  59a8d2:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  59a8d6:	85 f6                	test   esi,esi
  59a8d8:	74 7b                	je     0x59a955
  59a8da:	8d 44 24 18          	lea    eax,[esp+0x18]
  59a8de:	50                   	push   eax
  59a8df:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  59a8e5:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  59a8e8:	2b 44 24 18          	sub    eax,DWORD PTR [esp+0x18]
  59a8ec:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  59a8ef:	1b 4c 24 1c          	sbb    ecx,DWORD PTR [esp+0x1c]
  59a8f3:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  59a8f7:	78 06                	js     0x59a8ff
  59a8f9:	7f 5a                	jg     0x59a955
  59a8fb:	85 c0                	test   eax,eax
  59a8fd:	73 56                	jae    0x59a955
  59a8ff:	8a 44 24 13          	mov    al,BYTE PTR [esp+0x13]
  59a903:	5f                   	pop    edi
  59a904:	5e                   	pop    esi
  59a905:	5d                   	pop    ebp
  59a906:	5b                   	pop    ebx
  59a907:	83 c4 18             	add    esp,0x18
  59a90a:	c2 10 00             	ret    0x10
  59a90d:	80 7c 24 34 00       	cmp    BYTE PTR [esp+0x34],0x0
  59a912:	75 eb                	jne    0x59a8ff
  59a914:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  59a918:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
  59a91b:	83 c0 38             	add    eax,0x38
  59a91e:	8d 73 08             	lea    esi,[ebx+0x8]
  59a921:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  59a924:	89 06                	mov    DWORD PTR [esi],eax
  59a926:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59a929:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59a92c:	83 c7 08             	add    edi,0x8
  59a92f:	8b cf                	mov    ecx,edi
  59a931:	89 30                	mov    DWORD PTR [eax],esi
  59a933:	e8 88 73 f4 ff       	call   0x4e1cc0
  59a938:	68 ac a7 fd 00       	push   0xfda7ac
  59a93d:	8d 4e 08             	lea    ecx,[esi+0x8]
  59a940:	e8 2b 83 f4 ff       	call   0x4e2c70
  59a945:	68 ac a7 fd 00       	push   0xfda7ac
  59a94a:	8b cf                	mov    ecx,edi
  59a94c:	e8 af 72 f4 ff       	call   0x4e1c00
  59a951:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  59a955:	8a 4b 40             	mov    cl,BYTE PTR [ebx+0x40]
  59a958:	84 c9                	test   cl,cl
  59a95a:	0f 84 f3 fe ff ff    	je     0x59a853
  59a960:	8a 44 24 13          	mov    al,BYTE PTR [esp+0x13]
  59a964:	5f                   	pop    edi
  59a965:	5e                   	pop    esi
  59a966:	5d                   	pop    ebp
  59a967:	5b                   	pop    ebx
  59a968:	83 c4 18             	add    esp,0x18
  59a96b:	c2 10 00             	ret    0x10
  59a96e:	5f                   	pop    edi
  59a96f:	5e                   	pop    esi
  59a970:	5d                   	pop    ebp
  59a971:	8a c1                	mov    al,cl
  59a973:	5b                   	pop    ebx
  59a974:	83 c4 18             	add    esp,0x18
  59a977:	c2 10 00             	ret    0x10

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00b0ace0 (Object_RequiresWallLocator)
Full Ghidra function-body envelope: 0x00b0ace0..0x00b0aece (exclusive end)
Ghidra body ranges: [[00b0ace0, 00b0ae4c] [00b0ae50, 00b0aecd]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0ace0 <.text+0x709ce0>:
  b0ace0:	83 ec 40             	sub    esp,0x40
  b0ace3:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  b0ace9:	53                   	push   ebx
  b0acea:	56                   	push   esi
  b0aceb:	8b 74 24 4c          	mov    esi,DWORD PTR [esp+0x4c]
  b0acef:	57                   	push   edi
  b0acf0:	8d 46 18             	lea    eax,[esi+0x18]
  b0acf3:	50                   	push   eax
  b0acf4:	e8 b7 3e 18 00       	call   0xc8ebb0
  b0acf9:	33 c0                	xor    eax,eax
  b0acfb:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b0acff:	8b d1                	mov    edx,ecx
  b0ad01:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  b0ad05:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  b0ad09:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  b0ad0d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  b0ad11:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  b0ad15:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  b0ad19:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  b0ad1d:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  b0ad21:	8d 44 24 34          	lea    eax,[esp+0x34]
  b0ad25:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  b0ad29:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  b0ad2d:	8b c8                	mov    ecx,eax
  b0ad2f:	8d 54 24 30          	lea    edx,[esp+0x30]
  b0ad33:	33 db                	xor    ebx,ebx
  b0ad35:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  b0ad39:	52                   	push   edx
  b0ad3a:	8d 44 24 18          	lea    eax,[esp+0x18]
  b0ad3e:	50                   	push   eax
  b0ad3f:	56                   	push   esi
  b0ad40:	c7 44 24 38 78 b9 06 	mov    DWORD PTR [esp+0x38],0x106b978
  b0ad47:	01 
  b0ad48:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  b0ad4c:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl
  b0ad50:	89 5c 24 34          	mov    DWORD PTR [esp+0x34],ebx
  b0ad54:	c7 44 24 54 48 b9 06 	mov    DWORD PTR [esp+0x54],0x106b948
  b0ad5b:	01 
  b0ad5c:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
  b0ad60:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  b0ad64:	88 5c 24 4c          	mov    BYTE PTR [esp+0x4c],bl
  b0ad68:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
  b0ad6c:	e8 9f 56 03 00       	call   0xb40410
  b0ad71:	83 c4 0c             	add    esp,0xc
  b0ad74:	84 c0                	test   al,al
  b0ad76:	0f 84 a1 00 00 00    	je     0xb0ae1d
  b0ad7c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  b0ad80:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b0ad84:	3b c1                	cmp    eax,ecx
  b0ad86:	0f 84 91 00 00 00    	je     0xb0ae1d
  b0ad8c:	8b 74 24 54          	mov    esi,DWORD PTR [esp+0x54]
  b0ad90:	66 8b 48 10          	mov    cx,WORD PTR [eax+0x10]
  b0ad94:	66 8b 50 13          	mov    dx,WORD PTR [eax+0x13]
  b0ad98:	66 89 4c 24 0f       	mov    WORD PTR [esp+0xf],cx
  b0ad9d:	8a 4e 02             	mov    cl,BYTE PTR [esi+0x2]
  b0ada0:	38 48 12             	cmp    BYTE PTR [eax+0x12],cl
  b0ada3:	66 89 54 24 0c       	mov    WORD PTR [esp+0xc],dx
  b0ada8:	8a 50 15             	mov    dl,BYTE PTR [eax+0x15]
  b0adab:	75 2c                	jne    0xb0add9
  b0adad:	8a 58 10             	mov    bl,BYTE PTR [eax+0x10]
  b0adb0:	3a 1e                	cmp    bl,BYTE PTR [esi]
  b0adb2:	75 23                	jne    0xb0add7
  b0adb4:	8a 58 11             	mov    bl,BYTE PTR [eax+0x11]
  b0adb7:	3a 5e 01             	cmp    bl,BYTE PTR [esi+0x1]
  b0adba:	75 1b                	jne    0xb0add7
  b0adbc:	8a da                	mov    bl,dl
  b0adbe:	3a 5e 05             	cmp    bl,BYTE PTR [esi+0x5]
  b0adc1:	75 14                	jne    0xb0add7
  b0adc3:	8a 58 13             	mov    bl,BYTE PTR [eax+0x13]
  b0adc6:	3a 5e 03             	cmp    bl,BYTE PTR [esi+0x3]
  b0adc9:	75 0c                	jne    0xb0add7
  b0adcb:	8a 58 14             	mov    bl,BYTE PTR [eax+0x14]
  b0adce:	3a 5e 04             	cmp    bl,BYTE PTR [esi+0x4]
  b0add1:	0f 84 a0 00 00 00    	je     0xb0ae77
  b0add7:	33 db                	xor    ebx,ebx
  b0add9:	3a d1                	cmp    dl,cl
  b0addb:	75 2b                	jne    0xb0ae08
  b0addd:	8a 54 24 0c          	mov    dl,BYTE PTR [esp+0xc]
  b0ade1:	3a 16                	cmp    dl,BYTE PTR [esi]
  b0ade3:	75 23                	jne    0xb0ae08
  b0ade5:	8a 4c 24 0d          	mov    cl,BYTE PTR [esp+0xd]
  b0ade9:	3a 4e 01             	cmp    cl,BYTE PTR [esi+0x1]
  b0adec:	75 1a                	jne    0xb0ae08
  b0adee:	8a 48 12             	mov    cl,BYTE PTR [eax+0x12]
  b0adf1:	3a 4e 05             	cmp    cl,BYTE PTR [esi+0x5]
  b0adf4:	75 12                	jne    0xb0ae08
  b0adf6:	8a 54 24 0f          	mov    dl,BYTE PTR [esp+0xf]
  b0adfa:	3a 56 03             	cmp    dl,BYTE PTR [esi+0x3]
  b0adfd:	75 09                	jne    0xb0ae08
  b0adff:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
  b0ae03:	3a 4e 04             	cmp    cl,BYTE PTR [esi+0x4]
  b0ae06:	74 71                	je     0xb0ae79
  b0ae08:	50                   	push   eax
  b0ae09:	e8 22 62 9d ff       	call   0x4e1030
  b0ae0e:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  b0ae12:	83 c4 04             	add    esp,0x4
  b0ae15:	3b c2                	cmp    eax,edx
  b0ae17:	0f 85 73 ff ff ff    	jne    0xb0ad90
  b0ae1d:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  b0ae21:	3b f3                	cmp    esi,ebx
  b0ae23:	74 1e                	je     0xb0ae43
  b0ae25:	8b 16                	mov    edx,DWORD PTR [esi]
  b0ae27:	52                   	push   edx
  b0ae28:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  b0ae2c:	e8 7f 6b da ff       	call   0x8b19b0
  b0ae31:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  b0ae34:	56                   	push   esi
  b0ae35:	e8 a6 96 9d ff       	call   0x4e44e0
  b0ae3a:	83 c4 04             	add    esp,0x4
  b0ae3d:	3b fb                	cmp    edi,ebx
  b0ae3f:	8b f7                	mov    esi,edi
  b0ae41:	75 e2                	jne    0xb0ae25
  b0ae43:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  b0ae47:	3b f3                	cmp    esi,ebx
  b0ae49:	74 23                	je     0xb0ae6e
  b0ae4b:	eb 03                	jmp    0xb0ae50
  b0ae4d:	8d 49 00             	lea    ecx,[ecx+0x0]
  b0ae50:	8b 06                	mov    eax,DWORD PTR [esi]
  b0ae52:	50                   	push   eax
  b0ae53:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b0ae57:	e8 54 6b da ff       	call   0x8b19b0
  b0ae5c:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  b0ae5f:	56                   	push   esi
  b0ae60:	e8 7b 96 9d ff       	call   0x4e44e0
  b0ae65:	83 c4 04             	add    esp,0x4
  b0ae68:	3b fb                	cmp    edi,ebx
  b0ae6a:	8b f7                	mov    esi,edi
  b0ae6c:	75 e2                	jne    0xb0ae50
  b0ae6e:	5f                   	pop    edi
  b0ae6f:	5e                   	pop    esi
  b0ae70:	32 c0                	xor    al,al
  b0ae72:	5b                   	pop    ebx
  b0ae73:	83 c4 40             	add    esp,0x40
  b0ae76:	c3                   	ret
  b0ae77:	33 db                	xor    ebx,ebx
  b0ae79:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  b0ae7d:	3b f3                	cmp    esi,ebx
  b0ae7f:	74 1e                	je     0xb0ae9f
  b0ae81:	8b 06                	mov    eax,DWORD PTR [esi]
  b0ae83:	50                   	push   eax
  b0ae84:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  b0ae88:	e8 23 6b da ff       	call   0x8b19b0
  b0ae8d:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  b0ae90:	56                   	push   esi
  b0ae91:	e8 4a 96 9d ff       	call   0x4e44e0
  b0ae96:	83 c4 04             	add    esp,0x4
  b0ae99:	3b fb                	cmp    edi,ebx
  b0ae9b:	8b f7                	mov    esi,edi
  b0ae9d:	75 e2                	jne    0xb0ae81
  b0ae9f:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  b0aea3:	3b f3                	cmp    esi,ebx
  b0aea5:	74 1e                	je     0xb0aec5
  b0aea7:	8b 0e                	mov    ecx,DWORD PTR [esi]
  b0aea9:	51                   	push   ecx
  b0aeaa:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b0aeae:	e8 fd 6a da ff       	call   0x8b19b0
  b0aeb3:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  b0aeb6:	56                   	push   esi
  b0aeb7:	e8 24 96 9d ff       	call   0x4e44e0
  b0aebc:	83 c4 04             	add    esp,0x4
  b0aebf:	3b fb                	cmp    edi,ebx
  b0aec1:	8b f7                	mov    esi,edi
  b0aec3:	75 e2                	jne    0xb0aea7
  b0aec5:	5f                   	pop    edi
  b0aec6:	5e                   	pop    esi
  b0aec7:	b0 01                	mov    al,0x1
  b0aec9:	5b                   	pop    ebx
  b0aeca:	83 c4 40             	add    esp,0x40
  b0aecd:	c3                   	ret

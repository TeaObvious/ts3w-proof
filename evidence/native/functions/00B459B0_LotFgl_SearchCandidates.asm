# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b459b0 <.text+0x7449b0>:
  b459b0:	55                   	push   ebp
  b459b1:	8b ec                	mov    ebp,esp
  b459b3:	83 e4 f0             	and    esp,0xfffffff0
  b459b6:	81 ec 14 05 00 00    	sub    esp,0x514
  b459bc:	53                   	push   ebx
  b459bd:	56                   	push   esi
  b459be:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  b459c1:	57                   	push   edi
  b459c2:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  b459c5:	85 ff                	test   edi,edi
  b459c7:	89 7c 24 60          	mov    DWORD PTR [esp+0x60],edi
  b459cb:	0f 84 27 13 00 00    	je     0xb46cf8
  b459d1:	80 7e 3b 00          	cmp    BYTE PTR [esi+0x3b],0x0
  b459d5:	0f 85 1d 13 00 00    	jne    0xb46cf8
  b459db:	8b 87 98 02 00 00    	mov    eax,DWORD PTR [edi+0x298]
  b459e1:	85 c0                	test   eax,eax
  b459e3:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  b459e7:	0f 84 0b 13 00 00    	je     0xb46cf8
  b459ed:	e8 fe 32 ce ff       	call   0x828cf0
  b459f2:	85 c0                	test   eax,eax
  b459f4:	74 09                	je     0xb459ff
  b459f6:	8b c8                	mov    ecx,eax
  b459f8:	e8 c3 3b ce ff       	call   0x8295c0
  b459fd:	eb 02                	jmp    0xb45a01
  b459ff:	33 c0                	xor    eax,eax
  b45a01:	80 7e 30 00          	cmp    BYTE PTR [esi+0x30],0x0
  b45a05:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  b45a09:	74 08                	je     0xb45a13
  b45a0b:	85 c0                	test   eax,eax
  b45a0d:	0f 84 e5 12 00 00    	je     0xb46cf8
  b45a13:	8d 8c 24 50 01 00 00 	lea    ecx,[esp+0x150]
  b45a1a:	e8 61 e1 c4 ff       	call   0x793b80
  b45a1f:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  b45a22:	8b 0e                	mov    ecx,DWORD PTR [esi]
  b45a24:	85 c9                	test   ecx,ecx
  b45a26:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  b45a29:	89 84 24 58 01 00 00 	mov    DWORD PTR [esp+0x158],eax
  b45a30:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  b45a33:	89 8c 24 50 01 00 00 	mov    DWORD PTR [esp+0x150],ecx
  b45a3a:	89 bc 24 54 01 00 00 	mov    DWORD PTR [esp+0x154],edi
  b45a41:	89 94 24 5c 01 00 00 	mov    DWORD PTR [esp+0x15c],edx
  b45a48:	89 84 24 60 01 00 00 	mov    DWORD PTR [esp+0x160],eax
  b45a4f:	0f 84 97 12 00 00    	je     0xb46cec
  b45a55:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  b45a5b:	52                   	push   edx
  b45a5c:	e8 ff e7 de ff       	call   0x934260
  b45a61:	85 c0                	test   eax,eax
  b45a63:	0f 84 83 12 00 00    	je     0xb46cec
  b45a69:	0f 57 c0             	xorps  xmm0,xmm0
  b45a6c:	f3 0f 11 84 24 64 01 	movss  DWORD PTR [esp+0x164],xmm0
  b45a73:	00 00 
  b45a75:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  b45a78:	8b 57 48             	mov    edx,DWORD PTR [edi+0x48]
  b45a7b:	3b ca                	cmp    ecx,edx
  b45a7d:	8b 5f 4c             	mov    ebx,DWORD PTR [edi+0x4c]
  b45a80:	75 1e                	jne    0xb45aa0
  b45a82:	39 58 0c             	cmp    DWORD PTR [eax+0xc],ebx
  b45a85:	75 19                	jne    0xb45aa0
  b45a87:	81 78 18 ff ff ff 7f 	cmp    DWORD PTR [eax+0x18],0x7fffffff
  b45a8e:	74 10                	je     0xb45aa0
  b45a90:	8b c8                	mov    ecx,eax
  b45a92:	e8 a9 3e 14 00       	call   0xc89940
  b45a97:	d9 9c 24 64 01 00 00 	fstp   DWORD PTR [esp+0x164]
  b45a9e:	eb 2f                	jmp    0xb45acf
  b45aa0:	8b 8c 24 50 01 00 00 	mov    ecx,DWORD PTR [esp+0x150]
  b45aa7:	8d 84 24 d0 00 00 00 	lea    eax,[esp+0xd0]
  b45aae:	50                   	push   eax
  b45aaf:	51                   	push   ecx
  b45ab0:	57                   	push   edi
  b45ab1:	e8 ea 2e fc ff       	call   0xb089a0
  b45ab6:	83 c4 0c             	add    esp,0xc
  b45ab9:	84 c0                	test   al,al
  b45abb:	74 12                	je     0xb45acf
  b45abd:	f3 0f 10 84 24 d0 00 	movss  xmm0,DWORD PTR [esp+0xd0]
  b45ac4:	00 00 
  b45ac6:	f3 0f 11 84 24 64 01 	movss  DWORD PTR [esp+0x164],xmm0
  b45acd:	00 00 
  b45acf:	d9 84 24 64 01 00 00 	fld    DWORD PTR [esp+0x164]
  b45ad6:	51                   	push   ecx
  b45ad7:	d9 1c 24             	fstp   DWORD PTR [esp]
  b45ada:	e8 21 62 fb ff       	call   0xafbd00
  b45adf:	0f b6 56 32          	movzx  edx,BYTE PTR [esi+0x32]
  b45ae3:	0f b6 4e 33          	movzx  ecx,BYTE PTR [esi+0x33]
  b45ae7:	0f 57 c0             	xorps  xmm0,xmm0
  b45aea:	89 84 24 74 01 00 00 	mov    DWORD PTR [esp+0x174],eax
  b45af1:	0f b6 46 35          	movzx  eax,BYTE PTR [esi+0x35]
  b45af5:	88 94 24 80 01 00 00 	mov    BYTE PTR [esp+0x180],dl
  b45afc:	0f b6 56 34          	movzx  edx,BYTE PTR [esi+0x34]
  b45b00:	88 84 24 d5 01 00 00 	mov    BYTE PTR [esp+0x1d5],al
  b45b07:	0f b6 46 30          	movzx  eax,BYTE PTR [esi+0x30]
  b45b0b:	88 8c 24 82 01 00 00 	mov    BYTE PTR [esp+0x182],cl
  b45b12:	0f b6 4e 36          	movzx  ecx,BYTE PTR [esi+0x36]
  b45b16:	88 94 24 83 01 00 00 	mov    BYTE PTR [esp+0x183],dl
  b45b1d:	0f b6 56 37          	movzx  edx,BYTE PTR [esi+0x37]
  b45b21:	88 84 24 84 01 00 00 	mov    BYTE PTR [esp+0x184],al
  b45b28:	0f b6 46 38          	movzx  eax,BYTE PTR [esi+0x38]
  b45b2c:	88 8c 24 d9 01 00 00 	mov    BYTE PTR [esp+0x1d9],cl
  b45b33:	0f b6 4e 39          	movzx  ecx,BYTE PTR [esi+0x39]
  b45b37:	88 94 24 da 01 00 00 	mov    BYTE PTR [esp+0x1da],dl
  b45b3e:	0f b6 56 3e          	movzx  edx,BYTE PTR [esi+0x3e]
  b45b42:	83 c4 04             	add    esp,0x4
  b45b45:	83 7e 4c 00          	cmp    DWORD PTR [esi+0x4c],0x0
  b45b49:	f3 0f 11 84 24 68 01 	movss  DWORD PTR [esp+0x168],xmm0
  b45b50:	00 00 
  b45b52:	88 84 24 d7 01 00 00 	mov    BYTE PTR [esp+0x1d7],al
  b45b59:	88 8c 24 d8 01 00 00 	mov    BYTE PTR [esp+0x1d8],cl
  b45b60:	88 94 24 da 01 00 00 	mov    BYTE PTR [esp+0x1da],dl
  b45b67:	74 4a                	je     0xb45bb3
  b45b69:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  b45b6c:	85 c0                	test   eax,eax
  b45b6e:	76 43                	jbe    0xb45bb3
  b45b70:	33 db                	xor    ebx,ebx
  b45b72:	85 c0                	test   eax,eax
  b45b74:	7e 3d                	jle    0xb45bb3
  b45b76:	eb 08                	jmp    0xb45b80
  b45b78:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b45b7f:	90                   	nop
  b45b80:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  b45b83:	c6 84 24 cc 00 00 00 	mov    BYTE PTR [esp+0xcc],0x0
  b45b8a:	00 
  b45b8b:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
  b45b92:	51                   	push   ecx
  b45b93:	8d 04 d8             	lea    eax,[eax+ebx*8]
  b45b96:	50                   	push   eax
  b45b97:	8d 94 24 dc 03 00 00 	lea    edx,[esp+0x3dc]
  b45b9e:	52                   	push   edx
  b45b9f:	8d 8c 24 90 01 00 00 	lea    ecx,[esp+0x190]
  b45ba6:	e8 45 2d ae ff       	call   0x6288f0
  b45bab:	83 c3 01             	add    ebx,0x1
  b45bae:	3b 5e 50             	cmp    ebx,DWORD PTR [esi+0x50]
  b45bb1:	7c cd                	jl     0xb45b80
  b45bb3:	8b 06                	mov    eax,DWORD PTR [esi]
  b45bb5:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  b45bbb:	83 c0 18             	add    eax,0x18
  b45bbe:	50                   	push   eax
  b45bbf:	e8 ec 8f 14 00       	call   0xc8ebb0
  b45bc4:	89 84 24 6c 01 00 00 	mov    DWORD PTR [esp+0x16c],eax
  b45bcb:	8b 87 74 01 00 00    	mov    eax,DWORD PTR [edi+0x174]
  b45bd1:	8b 8f 78 01 00 00    	mov    ecx,DWORD PTR [edi+0x178]
  b45bd7:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  b45bdb:	3b c1                	cmp    eax,ecx
  b45bdd:	89 4c 24 7c          	mov    DWORD PTR [esp+0x7c],ecx
  b45be1:	8d 44 24 7c          	lea    eax,[esp+0x7c]
  b45be5:	7c 04                	jl     0xb45beb
  b45be7:	8d 44 24 78          	lea    eax,[esp+0x78]
  b45beb:	8b 00                	mov    eax,DWORD PTR [eax]
  b45bed:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  b45bf0:	8b 8c 24 70 01 00 00 	mov    ecx,DWORD PTR [esp+0x170]
  b45bf7:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  b45bfb:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  b45bfe:	89 94 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],edx
  b45c05:	8d 54 24 24          	lea    edx,[esp+0x24]
  b45c09:	33 db                	xor    ebx,ebx
  b45c0b:	89 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],eax
  b45c12:	89 4c 24 70          	mov    DWORD PTR [esp+0x70],ecx
  b45c16:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  b45c19:	52                   	push   edx
  b45c1a:	8d 84 24 94 00 00 00 	lea    eax,[esp+0x94]
  b45c21:	50                   	push   eax
  b45c22:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
  b45c26:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  b45c2a:	89 5c 24 60          	mov    DWORD PTR [esp+0x60],ebx
  b45c2e:	89 8c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ecx
  b45c35:	c6 44 24 2c ff       	mov    BYTE PTR [esp+0x2c],0xff
  b45c3a:	c6 44 24 2d ff       	mov    BYTE PTR [esp+0x2d],0xff
  b45c3f:	88 5c 24 2e          	mov    BYTE PTR [esp+0x2e],bl
  b45c43:	e8 e8 1a fb ff       	call   0xaf7730
  b45c48:	83 c4 08             	add    esp,0x8
  b45c4b:	80 7e 2c 00          	cmp    BYTE PTR [esi+0x2c],0x0
  b45c4f:	89 9c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ebx
  b45c56:	8b 5c 24 6c          	mov    ebx,DWORD PTR [esp+0x6c]
  b45c5a:	74 0a                	je     0xb45c66
  b45c5c:	8b 4b 5c             	mov    ecx,DWORD PTR [ebx+0x5c]
  b45c5f:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  b45c66:	8a 97 bc 04 00 00    	mov    dl,BYTE PTR [edi+0x4bc]
  b45c6c:	8d 44 24 18          	lea    eax,[esp+0x18]
  b45c70:	50                   	push   eax
  b45c71:	8d 8c 24 94 00 00 00 	lea    ecx,[esp+0x94]
  b45c78:	51                   	push   ecx
  b45c79:	88 54 24 70          	mov    BYTE PTR [esp+0x70],dl
  b45c7d:	c6 44 24 20 ff       	mov    BYTE PTR [esp+0x20],0xff
  b45c82:	c6 44 24 21 ff       	mov    BYTE PTR [esp+0x21],0xff
  b45c87:	c6 44 24 22 00       	mov    BYTE PTR [esp+0x22],0x0
  b45c8c:	e8 9f 1a fb ff       	call   0xaf7730
  b45c91:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  b45c95:	52                   	push   edx
  b45c96:	8d 44 24 25          	lea    eax,[esp+0x25]
  b45c9a:	50                   	push   eax
  b45c9b:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  b45c9f:	51                   	push   ecx
  b45ca0:	57                   	push   edi
  b45ca1:	e8 8a 51 ff ff       	call   0xb3ae30
  b45ca6:	0f be 44 24 31       	movsx  eax,BYTE PTR [esp+0x31]
  b45cab:	0f be 54 24 30       	movsx  edx,BYTE PTR [esp+0x30]
  b45cb0:	83 c4 18             	add    esp,0x18
  b45cb3:	6a 01                	push   0x1
  b45cb5:	f3 0f 2a c8          	cvtsi2ss xmm1,eax
  b45cb9:	0f be 44 24 1e       	movsx  eax,BYTE PTR [esp+0x1e]
  b45cbe:	6a 02                	push   0x2
  b45cc0:	8d 8c 24 a4 00 00 00 	lea    ecx,[esp+0xa4]
  b45cc7:	51                   	push   ecx
  b45cc8:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  b45ccc:	8b cb                	mov    ecx,ebx
  b45cce:	f3 0f 11 84 24 a8 00 	movss  DWORD PTR [esp+0xa8],xmm0
  b45cd5:	00 00 
  b45cd7:	f3 0f 11 8c 24 ac 00 	movss  DWORD PTR [esp+0xac],xmm1
  b45cde:	00 00 
  b45ce0:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
  b45ce7:	e8 d4 25 00 00       	call   0xb482c0
  b45cec:	80 7e 2d 00          	cmp    BYTE PTR [esi+0x2d],0x0
  b45cf0:	0f b7 c0             	movzx  eax,ax
  b45cf3:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
  b45cfa:	74 12                	je     0xb45d0e
  b45cfc:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  b45cff:	85 c9                	test   ecx,ecx
  b45d01:	7c 0b                	jl     0xb45d0e
  b45d03:	0f bf d0             	movsx  edx,ax
  b45d06:	3b ca                	cmp    ecx,edx
  b45d08:	0f 85 de 0f 00 00    	jne    0xb46cec
  b45d0e:	6a 01                	push   0x1
  b45d10:	6a 03                	push   0x3
  b45d12:	8d 84 24 a4 00 00 00 	lea    eax,[esp+0xa4]
  b45d19:	50                   	push   eax
  b45d1a:	8b cb                	mov    ecx,ebx
  b45d1c:	e8 9f 25 00 00       	call   0xb482c0
  b45d21:	80 7e 3a 00          	cmp    BYTE PTR [esi+0x3a],0x0
  b45d25:	0f b7 c8             	movzx  ecx,ax
  b45d28:	89 8c 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],ecx
  b45d2f:	74 12                	je     0xb45d43
  b45d31:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  b45d34:	85 c0                	test   eax,eax
  b45d36:	7c 0b                	jl     0xb45d43
  b45d38:	0f bf c9             	movsx  ecx,cx
  b45d3b:	3b c1                	cmp    eax,ecx
  b45d3d:	0f 85 a9 0f 00 00    	jne    0xb46cec
  b45d43:	83 bc 24 a4 00 00 00 	cmp    DWORD PTR [esp+0xa4],0x0
  b45d4a:	00 
  b45d4b:	c6 44 24 2f 00       	mov    BYTE PTR [esp+0x2f],0x0
  b45d50:	7d 51                	jge    0xb45da3
  b45d52:	80 7e 2d 00          	cmp    BYTE PTR [esi+0x2d],0x0
  b45d56:	75 4b                	jne    0xb45da3
  b45d58:	8d 54 24 5c          	lea    edx,[esp+0x5c]
  b45d5c:	52                   	push   edx
  b45d5d:	8d 84 24 a0 00 00 00 	lea    eax,[esp+0xa0]
  b45d64:	50                   	push   eax
  b45d65:	c6 44 24 64 ff       	mov    BYTE PTR [esp+0x64],0xff
  b45d6a:	c6 44 24 65 ff       	mov    BYTE PTR [esp+0x65],0xff
  b45d6f:	c6 44 24 66 00       	mov    BYTE PTR [esp+0x66],0x0
  b45d74:	c6 44 24 67 ff       	mov    BYTE PTR [esp+0x67],0xff
  b45d79:	e8 32 20 fb ff       	call   0xaf7db0
  b45d7e:	83 c4 08             	add    esp,0x8
  b45d81:	6a 00                	push   0x0
  b45d83:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  b45d87:	51                   	push   ecx
  b45d88:	8b cf                	mov    ecx,edi
  b45d8a:	e8 41 0a f7 ff       	call   0xab67d0
  b45d8f:	6a 03                	push   0x3
  b45d91:	50                   	push   eax
  b45d92:	e8 69 85 fb ff       	call   0xafe300
  b45d97:	83 c4 08             	add    esp,0x8
  b45d9a:	84 c0                	test   al,al
  b45d9c:	74 05                	je     0xb45da3
  b45d9e:	c6 44 24 2f 01       	mov    BYTE PTR [esp+0x2f],0x1
  b45da3:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  b45da6:	85 c0                	test   eax,eax
  b45da8:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  b45dac:	7c 10                	jl     0xb45dbe
  b45dae:	25 07 00 00 80       	and    eax,0x80000007
  b45db3:	79 05                	jns    0xb45dba
  b45db5:	48                   	dec    eax
  b45db6:	83 c8 f8             	or     eax,0xfffffff8
  b45db9:	40                   	inc    eax
  b45dba:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  b45dbe:	8b 56 54             	mov    edx,DWORD PTR [esi+0x54]
  b45dc1:	d9 46 5c             	fld    DWORD PTR [esi+0x5c]
  b45dc4:	8b 46 58             	mov    eax,DWORD PTR [esi+0x58]
  b45dc7:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  b45dca:	89 94 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edx
  b45dd1:	8d 94 24 8c 00 00 00 	lea    edx,[esp+0x8c]
  b45dd8:	89 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],eax
  b45ddf:	52                   	push   edx
  b45de0:	8d 84 24 8c 00 00 00 	lea    eax,[esp+0x8c]
  b45de7:	50                   	push   eax
  b45de8:	83 ec 08             	sub    esp,0x8
  b45deb:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b45def:	89 8c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ecx
  b45df6:	d9 46 58             	fld    DWORD PTR [esi+0x58]
  b45df9:	8b cf                	mov    ecx,edi
  b45dfb:	d9 1c 24             	fstp   DWORD PTR [esp]
  b45dfe:	e8 3d 10 f7 ff       	call   0xab6e40
  b45e03:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  b45e07:	03 c0                	add    eax,eax
  b45e09:	03 c0                	add    eax,eax
  b45e0b:	03 c0                	add    eax,eax
  b45e0d:	85 c0                	test   eax,eax
  b45e0f:	c7 44 24 50 00 00 00 	mov    DWORD PTR [esp+0x50],0x0
  b45e16:	00 
  b45e17:	89 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],eax
  b45e1e:	0f 8e c8 0e 00 00    	jle    0xb46cec
  b45e24:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  b45e28:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  b45e2c:	8d 64 24 00          	lea    esp,[esp+0x0]
  b45e30:	02 4c 24 18          	add    cl,BYTE PTR [esp+0x18]
  b45e34:	02 54 24 19          	add    dl,BYTE PTR [esp+0x19]
  b45e38:	80 7c 24 68 00       	cmp    BYTE PTR [esp+0x68],0x0
  b45e3d:	88 4c 24 20          	mov    BYTE PTR [esp+0x20],cl
  b45e41:	8a 4c 24 1a          	mov    cl,BYTE PTR [esp+0x1a]
  b45e45:	8a da                	mov    bl,dl
  b45e47:	88 4c 24 22          	mov    BYTE PTR [esp+0x22],cl
  b45e4b:	88 5c 24 21          	mov    BYTE PTR [esp+0x21],bl
  b45e4f:	c6 44 24 1f 01       	mov    BYTE PTR [esp+0x1f],0x1
  b45e54:	8b cf                	mov    ecx,edi
  b45e56:	74 0c                	je     0xb45e64
  b45e58:	8d 54 24 20          	lea    edx,[esp+0x20]
  b45e5c:	52                   	push   edx
  b45e5d:	e8 0e 18 cc ff       	call   0x807670
  b45e62:	eb 0a                	jmp    0xb45e6e
  b45e64:	8d 44 24 20          	lea    eax,[esp+0x20]
  b45e68:	50                   	push   eax
  b45e69:	e8 02 2b d2 ff       	call   0x868970
  b45e6e:	84 c0                	test   al,al
  b45e70:	75 45                	jne    0xb45eb7
  b45e72:	83 44 24 50 01       	add    DWORD PTR [esp+0x50],0x1
  b45e77:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  b45e7a:	83 f9 ff             	cmp    ecx,0xffffffff
  b45e7d:	0f 85 53 0d 00 00    	jne    0xb46bd6
  b45e83:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  b45e86:	50                   	push   eax
  b45e87:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  b45e8b:	33 c9                	xor    ecx,ecx
  b45e8d:	85 c0                	test   eax,eax
  b45e8f:	0f 9e c1             	setle  cl
  b45e92:	8d 54 24 38          	lea    edx,[esp+0x38]
  b45e96:	83 e9 01             	sub    ecx,0x1
  b45e99:	23 c8                	and    ecx,eax
  b45e9b:	51                   	push   ecx
  b45e9c:	52                   	push   edx
  b45e9d:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  b45ea1:	50                   	push   eax
  b45ea2:	e8 49 6b fb ff       	call   0xafc9f0
  b45ea7:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  b45eab:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  b45eaf:	83 c4 10             	add    esp,0x10
  b45eb2:	e9 ce 0d 00 00       	jmp    0xb46c85
  b45eb7:	f3 0f 10 94 24 84 00 	movss  xmm2,DWORD PTR [esp+0x84]
  b45ebe:	00 00 
  b45ec0:	0f 2f 15 70 99 f9 00 	comiss xmm2,DWORD PTR ds:0xf99970
  b45ec7:	c7 44 24 50 00 00 00 	mov    DWORD PTR [esp+0x50],0x0
  b45ece:	00 
  b45ecf:	77 48                	ja     0xb45f19
  b45ed1:	0f be 4c 24 20       	movsx  ecx,BYTE PTR [esp+0x20]
  b45ed6:	0f be d3             	movsx  edx,bl
  b45ed9:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  b45edd:	f3 0f 5c 8c 24 8c 00 	subss  xmm1,DWORD PTR [esp+0x8c]
  b45ee4:	00 00 
  b45ee6:	0f 28 d9             	movaps xmm3,xmm1
  b45ee9:	f3 0f 59 d9          	mulss  xmm3,xmm1
  b45eed:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  b45ef1:	f3 0f 5c 84 24 88 00 	subss  xmm0,DWORD PTR [esp+0x88]
  b45ef8:	00 00 
  b45efa:	0f 28 c8             	movaps xmm1,xmm0
  b45efd:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b45f01:	0f 28 c2             	movaps xmm0,xmm2
  b45f04:	f3 0f 58 d9          	addss  xmm3,xmm1
  b45f08:	f3 0f 59 c2          	mulss  xmm0,xmm2
  b45f0c:	0f 2f c3             	comiss xmm0,xmm3
  b45f0f:	0f 82 62 ff ff ff    	jb     0xb45e77
  b45f15:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
  b45f19:	80 7c 24 2f 00       	cmp    BYTE PTR [esp+0x2f],0x0
  b45f1e:	74 1d                	je     0xb45f3d
  b45f20:	8b 8f 90 02 00 00    	mov    ecx,DWORD PTR [edi+0x290]
  b45f26:	6a 01                	push   0x1
  b45f28:	6a 0f                	push   0xf
  b45f2a:	8d 44 24 28          	lea    eax,[esp+0x28]
  b45f2e:	50                   	push   eax
  b45f2f:	e8 fc 82 f4 ff       	call   0xa8e230
  b45f34:	84 c0                	test   al,al
  b45f36:	75 05                	jne    0xb45f3d
  b45f38:	80 44 24 22 01       	add    BYTE PTR [esp+0x22],0x1
  b45f3d:	0f be 44 24 22       	movsx  eax,BYTE PTR [esp+0x22]
  b45f42:	0f be 4c 24 20       	movsx  ecx,BYTE PTR [esp+0x20]
  b45f47:	0f be 54 24 21       	movsx  edx,BYTE PTR [esp+0x21]
  b45f4c:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  b45f53:	00 
  b45f54:	8b 5c 24 6c          	mov    ebx,DWORD PTR [esp+0x6c]
  b45f58:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  b45f5c:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  b45f60:	8d 44 24 20          	lea    eax,[esp+0x20]
  b45f64:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  b45f68:	f3 0f 58 c2          	addss  xmm0,xmm2
  b45f6c:	f3 0f 58 ca          	addss  xmm1,xmm2
  b45f70:	50                   	push   eax
  b45f71:	8b cb                	mov    ecx,ebx
  b45f73:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  b45f79:	f3 0f 11 4c 24 48    	movss  DWORD PTR [esp+0x48],xmm1
  b45f7f:	e8 bc 37 00 00       	call   0xb49740
  b45f84:	84 c0                	test   al,al
  b45f86:	74 07                	je     0xb45f8f
  b45f88:	32 db                	xor    bl,bl
  b45f8a:	e9 45 01 00 00       	jmp    0xb460d4
  b45f8f:	80 7e 2e 00          	cmp    BYTE PTR [esi+0x2e],0x0
  b45f93:	74 31                	je     0xb45fc6
  b45f95:	33 c0                	xor    eax,eax
  b45f97:	38 84 24 7c 01 00 00 	cmp    BYTE PTR [esp+0x17c],al
  b45f9e:	8d 8c 24 84 01 00 00 	lea    ecx,[esp+0x184]
  b45fa5:	0f 95 c0             	setne  al
  b45fa8:	51                   	push   ecx
  b45fa9:	8d 54 24 24          	lea    edx,[esp+0x24]
  b45fad:	83 c0 05             	add    eax,0x5
  b45fb0:	50                   	push   eax
  b45fb1:	52                   	push   edx
  b45fb2:	57                   	push   edi
  b45fb3:	e8 38 d4 ff ff       	call   0xb433f0
  b45fb8:	83 c4 10             	add    esp,0x10
  b45fbb:	84 c0                	test   al,al
  b45fbd:	74 07                	je     0xb45fc6
  b45fbf:	32 db                	xor    bl,bl
  b45fc1:	e9 0e 01 00 00       	jmp    0xb460d4
  b45fc6:	80 7e 2c 00          	cmp    BYTE PTR [esi+0x2c],0x0
  b45fca:	74 2a                	je     0xb45ff6
  b45fcc:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  b45fd3:	85 c9                	test   ecx,ecx
  b45fd5:	74 1f                	je     0xb45ff6
  b45fd7:	6a 00                	push   0x0
  b45fd9:	8d 44 24 44          	lea    eax,[esp+0x44]
  b45fdd:	50                   	push   eax
  b45fde:	8d 94 24 98 00 00 00 	lea    edx,[esp+0x98]
  b45fe5:	52                   	push   edx
  b45fe6:	e8 75 ac 0f 00       	call   0xc40c60
  b45feb:	84 c0                	test   al,al
  b45fed:	74 07                	je     0xb45ff6
  b45fef:	32 db                	xor    bl,bl
  b45ff1:	e9 de 00 00 00       	jmp    0xb460d4
  b45ff6:	80 7e 2d 00          	cmp    BYTE PTR [esi+0x2d],0x0
  b45ffa:	74 21                	je     0xb4601d
  b45ffc:	6a 01                	push   0x1
  b45ffe:	6a 02                	push   0x2
  b46000:	8d 44 24 48          	lea    eax,[esp+0x48]
  b46004:	50                   	push   eax
  b46005:	8b cb                	mov    ecx,ebx
  b46007:	e8 b4 22 00 00       	call   0xb482c0
  b4600c:	66 3b 84 24 b0 00 00 	cmp    ax,WORD PTR [esp+0xb0]
  b46013:	00 
  b46014:	74 07                	je     0xb4601d
  b46016:	32 db                	xor    bl,bl
  b46018:	e9 b7 00 00 00       	jmp    0xb460d4
  b4601d:	83 7e 20 00          	cmp    DWORD PTR [esi+0x20],0x0
  b46021:	7c 1f                	jl     0xb46042
  b46023:	6a 01                	push   0x1
  b46025:	6a 02                	push   0x2
  b46027:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  b4602b:	51                   	push   ecx
  b4602c:	8b cb                	mov    ecx,ebx
  b4602e:	e8 8d 22 00 00       	call   0xb482c0
  b46033:	0f bf d0             	movsx  edx,ax
  b46036:	3b 56 20             	cmp    edx,DWORD PTR [esi+0x20]
  b46039:	74 07                	je     0xb46042
  b4603b:	32 db                	xor    bl,bl
  b4603d:	e9 92 00 00 00       	jmp    0xb460d4
  b46042:	80 7e 3a 00          	cmp    BYTE PTR [esi+0x3a],0x0
  b46046:	74 1e                	je     0xb46066
  b46048:	6a 01                	push   0x1
  b4604a:	6a 03                	push   0x3
  b4604c:	8d 44 24 48          	lea    eax,[esp+0x48]
  b46050:	50                   	push   eax
  b46051:	8b cb                	mov    ecx,ebx
  b46053:	e8 68 22 00 00       	call   0xb482c0
  b46058:	66 3b 84 24 b4 00 00 	cmp    ax,WORD PTR [esp+0xb4]
  b4605f:	00 
  b46060:	74 04                	je     0xb46066
  b46062:	32 db                	xor    bl,bl
  b46064:	eb 6e                	jmp    0xb460d4
  b46066:	80 7e 30 00          	cmp    BYTE PTR [esi+0x30],0x0
  b4606a:	74 64                	je     0xb460d0
  b4606c:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  b46070:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  b46077:	51                   	push   ecx
  b46078:	8d 94 24 c8 00 00 00 	lea    edx,[esp+0xc8]
  b4607f:	52                   	push   edx
  b46080:	83 ec 08             	sub    esp,0x8
  b46083:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b46087:	8b cf                	mov    ecx,edi
  b46089:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  b4608d:	d9 1c 24             	fstp   DWORD PTR [esp]
  b46090:	e8 4b b6 f6 ff       	call   0xab16e0
  b46095:	d9 05 04 d7 06 01    	fld    DWORD PTR ds:0x106d704
  b4609b:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  b4609f:	6a 00                	push   0x0
  b460a1:	51                   	push   ecx
  b460a2:	8b 4c 24 7c          	mov    ecx,DWORD PTR [esp+0x7c]
  b460a6:	d9 1c 24             	fstp   DWORD PTR [esp]
  b460a9:	d9 84 24 c4 00 00 00 	fld    DWORD PTR [esp+0xc4]
  b460b0:	50                   	push   eax
  b460b1:	83 ec 08             	sub    esp,0x8
  b460b4:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b460b8:	d9 84 24 d8 00 00 00 	fld    DWORD PTR [esp+0xd8]
  b460bf:	d9 1c 24             	fstp   DWORD PTR [esp]
  b460c2:	57                   	push   edi
  b460c3:	e8 68 f6 ae ff       	call   0x635730
  b460c8:	84 c0                	test   al,al
  b460ca:	75 04                	jne    0xb460d0
  b460cc:	32 db                	xor    bl,bl
  b460ce:	eb 04                	jmp    0xb460d4
  b460d0:	8a 5c 24 1f          	mov    bl,BYTE PTR [esp+0x1f]
  b460d4:	80 7e 31 00          	cmp    BYTE PTR [esi+0x31],0x0
  b460d8:	c6 44 24 1f 01       	mov    BYTE PTR [esp+0x1f],0x1
  b460dd:	0f 94 c0             	sete   al
  b460e0:	84 db                	test   bl,bl
  b460e2:	0f 84 8f fd ff ff    	je     0xb45e77
  b460e8:	84 c0                	test   al,al
  b460ea:	74 16                	je     0xb46102
  b460ec:	6a 01                	push   0x1
  b460ee:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  b460f2:	51                   	push   ecx
  b460f3:	8b cf                	mov    ecx,edi
  b460f5:	e8 b6 a9 f6 ff       	call   0xab0ab0
  b460fa:	84 c0                	test   al,al
  b460fc:	0f 85 75 fd ff ff    	jne    0xb45e77
  b46102:	80 7e 36 00          	cmp    BYTE PTR [esi+0x36],0x0
  b46106:	74 1b                	je     0xb46123
  b46108:	6a 34                	push   0x34
  b4610a:	8d 54 24 44          	lea    edx,[esp+0x44]
  b4610e:	52                   	push   edx
  b4610f:	8b cf                	mov    ecx,edi
  b46111:	e8 6a 1d f7 ff       	call   0xab7e80
  b46116:	50                   	push   eax
  b46117:	e8 14 74 fb ff       	call   0xafd530
  b4611c:	8a d8                	mov    bl,al
  b4611e:	e9 44 03 00 00       	jmp    0xb46467
  b46123:	80 7e 37 00          	cmp    BYTE PTR [esi+0x37],0x0
  b46127:	74 1b                	je     0xb46144
  b46129:	6a 34                	push   0x34
  b4612b:	8d 44 24 44          	lea    eax,[esp+0x44]
  b4612f:	50                   	push   eax
  b46130:	8b cf                	mov    ecx,edi
  b46132:	e8 49 1d f7 ff       	call   0xab7e80
  b46137:	50                   	push   eax
  b46138:	e8 33 74 fb ff       	call   0xafd570
  b4613d:	8a d8                	mov    bl,al
  b4613f:	e9 23 03 00 00       	jmp    0xb46467
  b46144:	80 7e 38 00          	cmp    BYTE PTR [esi+0x38],0x0
  b46148:	74 19                	je     0xb46163
  b4614a:	6a 08                	push   0x8
  b4614c:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  b46150:	51                   	push   ecx
  b46151:	8b cf                	mov    ecx,edi
  b46153:	e8 28 1d f7 ff       	call   0xab7e80
  b46158:	83 f8 06             	cmp    eax,0x6
  b4615b:	0f 94 c3             	sete   bl
  b4615e:	e9 07 03 00 00       	jmp    0xb4646a
  b46163:	80 7e 3c 00          	cmp    BYTE PTR [esi+0x3c],0x0
  b46167:	0f 84 fd 02 00 00    	je     0xb4646a
  b4616d:	8d 94 24 50 03 00 00 	lea    edx,[esp+0x350]
  b46174:	52                   	push   edx
  b46175:	8d 84 24 a0 00 00 00 	lea    eax,[esp+0xa0]
  b4617c:	50                   	push   eax
  b4617d:	57                   	push   edi
  b4617e:	e8 cd 65 f9 ff       	call   0xadc750
  b46183:	83 c4 0c             	add    esp,0xc
  b46186:	8d 8c 24 30 02 00 00 	lea    ecx,[esp+0x230]
  b4618d:	51                   	push   ecx
  b4618e:	8d 94 24 54 03 00 00 	lea    edx,[esp+0x354]
  b46195:	52                   	push   edx
  b46196:	8b cf                	mov    ecx,edi
  b46198:	e8 a3 0e f7 ff       	call   0xab7040
  b4619d:	0f 28 84 24 30 02 00 	movaps xmm0,XMMWORD PTR [esp+0x230]
  b461a4:	00 
  b461a5:	0f 29 84 24 00 03 00 	movaps XMMWORD PTR [esp+0x300],xmm0
  b461ac:	00 
  b461ad:	d9 84 24 08 03 00 00 	fld    DWORD PTR [esp+0x308]
  b461b4:	83 ec 0c             	sub    esp,0xc
  b461b7:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  b461bb:	0f 29 84 24 6c 02 00 	movaps XMMWORD PTR [esp+0x26c],xmm0
  b461c2:	00 
  b461c3:	d9 84 24 70 02 00 00 	fld    DWORD PTR [esp+0x270]
  b461ca:	0f 29 84 24 1c 03 00 	movaps XMMWORD PTR [esp+0x31c],xmm0
  b461d1:	00 
  b461d2:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b461d6:	8d 8c 24 e0 00 00 00 	lea    ecx,[esp+0xe0]
  b461dd:	d9 84 24 1c 03 00 00 	fld    DWORD PTR [esp+0x31c]
  b461e4:	d9 1c 24             	fstp   DWORD PTR [esp]
  b461e7:	e8 84 5d c2 ff       	call   0x76bf70
  b461ec:	8b 8c 24 d4 00 00 00 	mov    ecx,DWORD PTR [esp+0xd4]
  b461f3:	8b 94 24 d8 00 00 00 	mov    edx,DWORD PTR [esp+0xd8]
  b461fa:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  b461fe:	50                   	push   eax
  b461ff:	83 ec 0c             	sub    esp,0xc
  b46202:	8b c4                	mov    eax,esp
  b46204:	89 08                	mov    DWORD PTR [eax],ecx
  b46206:	8b 8c 24 ec 00 00 00 	mov    ecx,DWORD PTR [esp+0xec]
  b4620d:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  b46210:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  b46213:	e8 38 28 c4 ff       	call   0x788a50
  b46218:	83 c4 10             	add    esp,0x10
  b4621b:	84 c0                	test   al,al
  b4621d:	0f 84 47 02 00 00    	je     0xb4646a
  b46223:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  b46229:	f3 0f 10 2d 88 fd 03 	movss  xmm5,DWORD PTR ds:0x103fd88
  b46230:	01 
  b46231:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b46235:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  b46239:	0f 5e c5             	divps  xmm0,xmm5
  b4623c:	0f 29 84 24 80 02 00 	movaps XMMWORD PTR [esp+0x280],xmm0
  b46243:	00 
  b46244:	d9 84 24 80 02 00 00 	fld    DWORD PTR [esp+0x280]
  b4624b:	0f 57 e4             	xorps  xmm4,xmm4
  b4624e:	d9 fe                	fsin
  b46250:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  b46257:	00 
  b46258:	0f 29 84 24 30 03 00 	movaps XMMWORD PTR [esp+0x330],xmm0
  b4625f:	00 
  b46260:	f3 0f 11 8c 24 04 01 	movss  DWORD PTR [esp+0x104],xmm1
  b46267:	00 00 
  b46269:	f3 0f 11 a4 24 0c 01 	movss  DWORD PTR [esp+0x10c],xmm4
  b46270:	00 00 
  b46272:	f3 0f 11 a4 24 08 01 	movss  DWORD PTR [esp+0x108],xmm4
  b46279:	00 00 
  b4627b:	f3 0f 11 a4 24 00 01 	movss  DWORD PTR [esp+0x100],xmm4
  b46282:	00 00 
  b46284:	0f 28 8c 24 00 01 00 	movaps xmm1,XMMWORD PTR [esp+0x100]
  b4628b:	00 
  b4628c:	0f 29 8c 24 a0 02 00 	movaps XMMWORD PTR [esp+0x2a0],xmm1
  b46293:	00 
  b46294:	f3 0f 11 a4 24 ec 00 	movss  DWORD PTR [esp+0xec],xmm4
  b4629b:	00 00 
  b4629d:	f3 0f 11 a4 24 e4 00 	movss  DWORD PTR [esp+0xe4],xmm4
  b462a4:	00 00 
  b462a6:	f3 0f 11 a4 24 e0 00 	movss  DWORD PTR [esp+0xe0],xmm4
  b462ad:	00 00 
  b462af:	6a 00                	push   0x0
  b462b1:	6a 00                	push   0x0
  b462b3:	6a 00                	push   0x0
  b462b5:	6a 00                	push   0x0
  b462b7:	6a 01                	push   0x1
  b462b9:	6a 01                	push   0x1
  b462bb:	c6 44 24 37 00       	mov    BYTE PTR [esp+0x37],0x0
  b462c0:	6a 00                	push   0x0
  b462c2:	d9 5c 24 70          	fstp   DWORD PTR [esp+0x70]
  b462c6:	d9 84 24 4c 03 00 00 	fld    DWORD PTR [esp+0x34c]
  b462cd:	d9 ff                	fcos
  b462cf:	f3 0f 10 4c 24 70    	movss  xmm1,DWORD PTR [esp+0x70]
  b462d5:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b462d9:	0f 28 d1             	movaps xmm2,xmm1
  b462dc:	d9 5c 24 70          	fstp   DWORD PTR [esp+0x70]
  b462e0:	f3 0f 10 74 24 70    	movss  xmm6,DWORD PTR [esp+0x70]
  b462e6:	0f 28 84 24 bc 02 00 	movaps xmm0,XMMWORD PTR [esp+0x2bc]
  b462ed:	00 
  b462ee:	0f 28 d8             	movaps xmm3,xmm0
  b462f1:	0f c6 d8 aa          	shufps xmm3,xmm0,0xaa
  b462f5:	0f 59 d3             	mulps  xmm2,xmm3
  b462f8:	8b 3d c4 db 1e 01    	mov    edi,DWORD PTR ds:0x11edbc4
  b462fe:	0f 28 d8             	movaps xmm3,xmm0
  b46301:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  b46305:	0f 59 d9             	mulps  xmm3,xmm1
  b46308:	0f 29 94 24 fc 03 00 	movaps XMMWORD PTR [esp+0x3fc],xmm2
  b4630f:	00 
  b46310:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b46314:	0f 59 c1             	mulps  xmm0,xmm1
  b46317:	f3 0f 10 0d 58 e5 fe 	movss  xmm1,DWORD PTR ds:0xfee558
  b4631e:	00 
  b4631f:	0f 29 84 24 2c 05 00 	movaps XMMWORD PTR [esp+0x52c],xmm0
  b46326:	00 
  b46327:	0f c6 c3 10          	shufps xmm0,xmm3,0x10
  b4632b:	0f 29 9c 24 4c 04 00 	movaps XMMWORD PTR [esp+0x44c],xmm3
  b46332:	00 
  b46333:	0f c6 f6 00          	shufps xmm6,xmm6,0x0
  b46337:	0f c6 d6 32          	shufps xmm2,xmm6,0x32
  b4633b:	0f c6 c2 88          	shufps xmm0,xmm2,0x88
  b4633f:	0f 28 f0             	movaps xmm6,xmm0
  b46342:	0f 28 e0             	movaps xmm4,xmm0
  b46345:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  b46349:	f3 0f 11 8c 24 04 01 	movss  DWORD PTR [esp+0x104],xmm1
  b46350:	00 00 
  b46352:	0f 28 8c 24 fc 00 00 	movaps xmm1,XMMWORD PTR [esp+0xfc]
  b46359:	00 
  b4635a:	0f c6 f0 ff          	shufps xmm6,xmm0,0xff
  b4635e:	0f c6 c0 12          	shufps xmm0,xmm0,0x12
  b46362:	0f 28 d1             	movaps xmm2,xmm1
  b46365:	0f c6 d1 09          	shufps xmm2,xmm1,0x9
  b46369:	0f 59 d0             	mulps  xmm2,xmm0
  b4636c:	0f 28 d9             	movaps xmm3,xmm1
  b4636f:	0f c6 d9 12          	shufps xmm3,xmm1,0x12
  b46373:	0f 59 dc             	mulps  xmm3,xmm4
  b46376:	0f 5c da             	subps  xmm3,xmm2
  b46379:	0f 28 d1             	movaps xmm2,xmm1
  b4637c:	0f 59 d6             	mulps  xmm2,xmm6
  b4637f:	0f 58 d3             	addps  xmm2,xmm3
  b46382:	0f 28 da             	movaps xmm3,xmm2
  b46385:	0f c6 da 09          	shufps xmm3,xmm2,0x9
  b46389:	0f c6 d2 12          	shufps xmm2,xmm2,0x12
  b4638d:	0f 59 d8             	mulps  xmm3,xmm0
  b46390:	0f 59 d4             	mulps  xmm2,xmm4
  b46393:	0f 5c d3             	subps  xmm2,xmm3
  b46396:	0f 59 d5             	mulps  xmm2,xmm5
  b46399:	0f 28 c2             	movaps xmm0,xmm2
  b4639c:	0f 58 c1             	addps  xmm0,xmm1
  b4639f:	0f 29 84 24 1c 04 00 	movaps XMMWORD PTR [esp+0x41c],xmm0
  b463a6:	00 
  b463a7:	0f 28 9c 24 4c 02 00 	movaps xmm3,XMMWORD PTR [esp+0x24c]
  b463ae:	00 
  b463af:	0f 28 d0             	movaps xmm2,xmm0
  b463b2:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  b463b6:	0f 28 cb             	movaps xmm1,xmm3
  b463b9:	0f c6 cb aa          	shufps xmm1,xmm3,0xaa
  b463bd:	0f 58 ca             	addps  xmm1,xmm2
  b463c0:	0f 29 8c 24 7c 03 00 	movaps XMMWORD PTR [esp+0x37c],xmm1
  b463c7:	00 
  b463c8:	d9 84 24 7c 03 00 00 	fld    DWORD PTR [esp+0x37c]
  b463cf:	0f 28 cb             	movaps xmm1,xmm3
  b463d2:	83 ec 08             	sub    esp,0x8
  b463d5:	0f c6 cb 00          	shufps xmm1,xmm3,0x0
  b463d9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b463dd:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b463e1:	0f 58 c8             	addps  xmm1,xmm0
  b463e4:	0f 29 8c 24 e4 02 00 	movaps XMMWORD PTR [esp+0x2e4],xmm1
  b463eb:	00 
  b463ec:	d9 84 24 e4 02 00 00 	fld    DWORD PTR [esp+0x2e4]
  b463f3:	8b cf                	mov    ecx,edi
  b463f5:	d9 1c 24             	fstp   DWORD PTR [esp]
  b463f8:	e8 93 3c 12 00       	call   0xc6a090
  b463fd:	8b cf                	mov    ecx,edi
  b463ff:	d9 5c 24 54          	fstp   DWORD PTR [esp+0x54]
  b46403:	e8 88 ac 11 00       	call   0xc61090
  b46408:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  b4640c:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  b46412:	d9 c9                	fxch   st(1)
  b46414:	df f1                	fcomip st,st(1)
  b46416:	dd d8                	fstp   st(0)
  b46418:	72 25                	jb     0xb4643f
  b4641a:	f3 0f 58 05 68 d7 06 	addss  xmm0,DWORD PTR ds:0x106d768
  b46421:	01 
  b46422:	f3 0f 10 0d 6c d7 06 	movss  xmm1,DWORD PTR ds:0x106d76c
  b46429:	01 
  b4642a:	0f 2f c1             	comiss xmm0,xmm1
  b4642d:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  b46433:	76 0a                	jbe    0xb4643f
  b46435:	f3 0f 5c c1          	subss  xmm0,xmm1
  b46439:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  b4643f:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  b46442:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  b46446:	51                   	push   ecx
  b46447:	d9 1c 24             	fstp   DWORD PTR [esp]
  b4644a:	f3 0f 11 02          	movss  DWORD PTR [edx],xmm0
  b4644e:	f3 0f 11 84 24 68 01 	movss  DWORD PTR [esp+0x168],xmm0
  b46455:	00 00 
  b46457:	e8 a4 58 fb ff       	call   0xafbd00
  b4645c:	8b 7c 24 64          	mov    edi,DWORD PTR [esp+0x64]
  b46460:	89 84 24 74 01 00 00 	mov    DWORD PTR [esp+0x174],eax
  b46467:	83 c4 04             	add    esp,0x4
  b4646a:	84 db                	test   bl,bl
  b4646c:	0f 84 05 fa ff ff    	je     0xb45e77
  b46472:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
  b46476:	0f 84 fd 04 00 00    	je     0xb46979
  b4647c:	80 7e 1c 00          	cmp    BYTE PTR [esi+0x1c],0x0
  b46480:	0f 84 f3 04 00 00    	je     0xb46979
  b46486:	80 7c 24 1f 00       	cmp    BYTE PTR [esp+0x1f],0x0
  b4648b:	0f 84 e8 04 00 00    	je     0xb46979
  b46491:	f6 05 a4 d1 1e 01 01 	test   BYTE PTR ds:0x11ed1a4,0x1
  b46498:	75 13                	jne    0xb464ad
  b4649a:	83 0d a4 d1 1e 01 01 	or     DWORD PTR ds:0x11ed1a4,0x1
  b464a1:	6a ff                	push   0xffffffff
  b464a3:	b9 a0 d1 1e 01       	mov    ecx,0x11ed1a0
  b464a8:	e8 43 45 9b ff       	call   0x4fa9f0
  b464ad:	e8 2e 27 a4 ff       	call   0x588be0
  b464b2:	84 c0                	test   al,al
  b464b4:	74 1f                	je     0xb464d5
  b464b6:	80 3d 9c d1 1e 01 00 	cmp    BYTE PTR ds:0x11ed19c,0x0
  b464bd:	75 16                	jne    0xb464d5
  b464bf:	68 39 05 00 00       	push   0x539
  b464c4:	b9 a0 d1 1e 01       	mov    ecx,0x11ed1a0
  b464c9:	e8 22 45 9b ff       	call   0x4fa9f0
  b464ce:	c6 05 9c d1 1e 01 01 	mov    BYTE PTR ds:0x11ed19c,0x1
  b464d5:	6a 08                	push   0x8
  b464d7:	b9 a0 d1 1e 01       	mov    ecx,0x11ed1a0
  b464dc:	e8 4f 45 9b ff       	call   0x4faa30
  b464e1:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  b464e5:	33 ff                	xor    edi,edi
  b464e7:	eb 07                	jmp    0xb464f0
  b464e9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b464f0:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  b464f4:	8b 94 24 70 01 00 00 	mov    edx,DWORD PTR [esp+0x170]
  b464fb:	8d 0c 07             	lea    ecx,[edi+eax*1]
  b464fe:	83 e1 07             	and    ecx,0x7
  b46501:	8d 1c 11             	lea    ebx,[ecx+edx*1]
  b46504:	81 e3 07 00 00 80    	and    ebx,0x80000007
  b4650a:	79 05                	jns    0xb46511
  b4650c:	4b                   	dec    ebx
  b4650d:	83 cb f8             	or     ebx,0xfffffff8
  b46510:	43                   	inc    ebx
  b46511:	80 7e 2f 00          	cmp    BYTE PTR [esi+0x2f],0x0
  b46515:	74 09                	je     0xb46520
  b46517:	f6 c3 01             	test   bl,0x1
  b4651a:	0f 85 bb 01 00 00    	jne    0xb466db
  b46520:	b8 01 00 00 00       	mov    eax,0x1
  b46525:	d3 e0                	shl    eax,cl
  b46527:	8a 4e 1c             	mov    cl,BYTE PTR [esi+0x1c]
  b4652a:	84 c1                	test   cl,al
  b4652c:	0f 84 a9 01 00 00    	je     0xb466db
  b46532:	80 7e 3d 00          	cmp    BYTE PTR [esi+0x3d],0x0
  b46536:	0f 84 54 01 00 00    	je     0xb46690
  b4653c:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b4653f:	8d 94 24 80 03 00 00 	lea    edx,[esp+0x380]
  b46546:	52                   	push   edx
  b46547:	8d 44 24 44          	lea    eax,[esp+0x44]
  b4654b:	50                   	push   eax
  b4654c:	51                   	push   ecx
  b4654d:	e8 fe 61 f9 ff       	call   0xadc750
  b46552:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b46555:	83 c4 0c             	add    esp,0xc
  b46558:	8d 94 24 20 03 00 00 	lea    edx,[esp+0x320]
  b4655f:	52                   	push   edx
  b46560:	8d 84 24 84 03 00 00 	lea    eax,[esp+0x384]
  b46567:	50                   	push   eax
  b46568:	e8 d3 0a f7 ff       	call   0xab7040
  b4656d:	53                   	push   ebx
  b4656e:	e8 6d 59 fb ff       	call   0xafbee0
  b46573:	0f 57 c0             	xorps  xmm0,xmm0
  b46576:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  b4657d:	00 
  b4657e:	f3 0f 11 84 24 00 01 	movss  DWORD PTR [esp+0x100],xmm0
  b46585:	00 00 
  b46587:	f3 0f 11 84 24 fc 00 	movss  DWORD PTR [esp+0xfc],xmm0
  b4658e:	00 00 
  b46590:	f3 0f 11 84 24 f4 00 	movss  DWORD PTR [esp+0xf4],xmm0
  b46597:	00 00 
  b46599:	f3 0f 11 8c 24 f8 00 	movss  DWORD PTR [esp+0xf8],xmm1
  b465a0:	00 00 
  b465a2:	0f 28 84 24 f4 00 00 	movaps xmm0,XMMWORD PTR [esp+0xf4]
  b465a9:	00 
  b465aa:	f3 0f 10 0d 88 fd 03 	movss  xmm1,DWORD PTR ds:0x103fd88
  b465b1:	01 
  b465b2:	0f 29 84 24 a4 03 00 	movaps XMMWORD PTR [esp+0x3a4],xmm0
  b465b9:	00 
  b465ba:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  b465be:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  b465c4:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b465c8:	83 c4 04             	add    esp,0x4
  b465cb:	6a 01                	push   0x1
  b465cd:	83 ec 08             	sub    esp,0x8
  b465d0:	8d 8c 24 7c 03 00 00 	lea    ecx,[esp+0x37c]
  b465d7:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b465db:	0f 5e c1             	divps  xmm0,xmm1
  b465de:	0f 29 84 24 ec 02 00 	movaps XMMWORD PTR [esp+0x2ec],xmm0
  b465e5:	00 
  b465e6:	d9 84 24 ec 02 00 00 	fld    DWORD PTR [esp+0x2ec]
  b465ed:	0f 29 84 24 cc 03 00 	movaps XMMWORD PTR [esp+0x3cc],xmm0
  b465f4:	00 
  b465f5:	d9 fe                	fsin
  b465f7:	8d 94 24 2c 03 00 00 	lea    edx,[esp+0x32c]
  b465fe:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  b46602:	d9 84 24 cc 03 00 00 	fld    DWORD PTR [esp+0x3cc]
  b46609:	d9 ff                	fcos
  b4660b:	f3 0f 10 4c 24 34    	movss  xmm1,DWORD PTR [esp+0x34]
  b46611:	0f 28 84 24 ac 03 00 	movaps xmm0,XMMWORD PTR [esp+0x3ac]
  b46618:	00 
  b46619:	0f 28 d0             	movaps xmm2,xmm0
  b4661c:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  b46620:	0f 28 d8             	movaps xmm3,xmm0
  b46623:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  b46627:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b4662b:	0f 59 d1             	mulps  xmm2,xmm1
  b4662e:	0f 59 d9             	mulps  xmm3,xmm1
  b46631:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b46635:	0f 59 c1             	mulps  xmm0,xmm1
  b46638:	0f 29 84 24 7c 04 00 	movaps XMMWORD PTR [esp+0x47c],xmm0
  b4663f:	00 
  b46640:	0f 29 94 24 0c 05 00 	movaps XMMWORD PTR [esp+0x50c],xmm2
  b46647:	00 
  b46648:	0f 29 9c 24 2c 04 00 	movaps XMMWORD PTR [esp+0x42c],xmm3
  b4664f:	00 
  b46650:	0f c6 c3 10          	shufps xmm0,xmm3,0x10
  b46654:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  b46658:	f3 0f 10 4c 24 34    	movss  xmm1,DWORD PTR [esp+0x34]
  b4665e:	d9 46 44             	fld    DWORD PTR [esi+0x44]
  b46661:	8b 06                	mov    eax,DWORD PTR [esi]
  b46663:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b46667:	d9 46 40             	fld    DWORD PTR [esi+0x40]
  b4666a:	d9 1c 24             	fstp   DWORD PTR [esp]
  b4666d:	51                   	push   ecx
  b4666e:	52                   	push   edx
  b4666f:	50                   	push   eax
  b46670:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b46674:	0f c6 d1 32          	shufps xmm2,xmm1,0x32
  b46678:	0f c6 c2 88          	shufps xmm0,xmm2,0x88
  b4667c:	0f 29 84 24 88 03 00 	movaps XMMWORD PTR [esp+0x388],xmm0
  b46683:	00 
  b46684:	e8 57 c1 12 00       	call   0xc727e0
  b46689:	83 c4 18             	add    esp,0x18
  b4668c:	84 c0                	test   al,al
  b4668e:	74 4b                	je     0xb466db
  b46690:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  b46694:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  b46698:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  b4669c:	53                   	push   ebx
  b4669d:	89 8c 24 5c 01 00 00 	mov    DWORD PTR [esp+0x15c],ecx
  b466a4:	89 94 24 60 01 00 00 	mov    DWORD PTR [esp+0x160],edx
  b466ab:	89 84 24 64 01 00 00 	mov    DWORD PTR [esp+0x164],eax
  b466b2:	e8 29 58 fb ff       	call   0xafbee0
  b466b7:	d9 9c 24 68 01 00 00 	fstp   DWORD PTR [esp+0x168]
  b466be:	8d 8c 24 54 01 00 00 	lea    ecx,[esp+0x154]
  b466c5:	6a 00                	push   0x0
  b466c7:	51                   	push   ecx
  b466c8:	89 9c 24 7c 01 00 00 	mov    DWORD PTR [esp+0x17c],ebx
  b466cf:	e8 5c f2 ff ff       	call   0xb45930
  b466d4:	83 c4 0c             	add    esp,0xc
  b466d7:	84 c0                	test   al,al
  b466d9:	75 11                	jne    0xb466ec
  b466db:	83 c7 01             	add    edi,0x1
  b466de:	83 ff 08             	cmp    edi,0x8
  b466e1:	0f 82 09 fe ff ff    	jb     0xb464f0
  b466e7:	e9 8b f7 ff ff       	jmp    0xb45e77
  b466ec:	83 7e 28 00          	cmp    DWORD PTR [esi+0x28],0x0
  b466f0:	0f 84 a3 01 00 00    	je     0xb46899
  b466f6:	e8 95 2c c2 ff       	call   0x769390
  b466fb:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b466fe:	8d 94 24 b0 03 00 00 	lea    edx,[esp+0x3b0]
  b46705:	8b f8                	mov    edi,eax
  b46707:	52                   	push   edx
  b46708:	8d 44 24 44          	lea    eax,[esp+0x44]
  b4670c:	50                   	push   eax
  b4670d:	51                   	push   ecx
  b4670e:	e8 3d 60 f9 ff       	call   0xadc750
  b46713:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b46716:	83 c4 0c             	add    esp,0xc
  b46719:	8d 94 24 20 01 00 00 	lea    edx,[esp+0x120]
  b46720:	52                   	push   edx
  b46721:	8d 84 24 b4 03 00 00 	lea    eax,[esp+0x3b4]
  b46728:	50                   	push   eax
  b46729:	e8 12 09 f7 ff       	call   0xab7040
  b4672e:	53                   	push   ebx
  b4672f:	e8 ac 57 fb ff       	call   0xafbee0
  b46734:	d9 9c 24 c4 00 00 00 	fstp   DWORD PTR [esp+0xc4]
  b4673b:	83 c4 04             	add    esp,0x4
  b4673e:	68 d0 e9 50 00       	push   0x50e9d0
  b46743:	6a 04                	push   0x4
  b46745:	6a 20                	push   0x20
  b46747:	8d 8c 24 8c 04 00 00 	lea    ecx,[esp+0x48c]
  b4674e:	51                   	push   ecx
  b4674f:	e8 4c ff 8f ff       	call   0x4466a0
  b46754:	0f 28 84 24 20 01 00 	movaps xmm0,XMMWORD PTR [esp+0x120]
  b4675b:	00 
  b4675c:	0f 29 84 24 40 02 00 	movaps XMMWORD PTR [esp+0x240],xmm0
  b46763:	00 
  b46764:	f3 0f 10 84 24 40 02 	movss  xmm0,DWORD PTR [esp+0x240]
  b4676b:	00 00 
  b4676d:	8d 94 24 a8 00 00 00 	lea    edx,[esp+0xa8]
  b46774:	52                   	push   edx
  b46775:	8d 8c 24 84 04 00 00 	lea    ecx,[esp+0x484]
  b4677c:	f3 0f 11 84 24 ac 00 	movss  DWORD PTR [esp+0xac],xmm0
  b46783:	00 00 
  b46785:	e8 16 f9 9a ff       	call   0x4f60a0
  b4678a:	0f 28 84 24 20 01 00 	movaps xmm0,XMMWORD PTR [esp+0x120]
  b46791:	00 
  b46792:	0f 29 84 24 40 03 00 	movaps XMMWORD PTR [esp+0x340],xmm0
  b46799:	00 
  b4679a:	f3 0f 10 84 24 44 03 	movss  xmm0,DWORD PTR [esp+0x344]
  b467a1:	00 00 
  b467a3:	8d 84 24 b8 00 00 00 	lea    eax,[esp+0xb8]
  b467aa:	50                   	push   eax
  b467ab:	8d 8c 24 a4 04 00 00 	lea    ecx,[esp+0x4a4]
  b467b2:	f3 0f 11 84 24 bc 00 	movss  DWORD PTR [esp+0xbc],xmm0
  b467b9:	00 00 
  b467bb:	e8 e0 f8 9a ff       	call   0x4f60a0
  b467c0:	0f 28 84 24 20 01 00 	movaps xmm0,XMMWORD PTR [esp+0x120]
  b467c7:	00 
  b467c8:	8d 8c 24 c8 00 00 00 	lea    ecx,[esp+0xc8]
  b467cf:	0f 29 84 24 90 03 00 	movaps XMMWORD PTR [esp+0x390],xmm0
  b467d6:	00 
  b467d7:	f3 0f 10 84 24 98 03 	movss  xmm0,DWORD PTR [esp+0x398]
  b467de:	00 00 
  b467e0:	51                   	push   ecx
  b467e1:	8d 8c 24 c4 04 00 00 	lea    ecx,[esp+0x4c4]
  b467e8:	f3 0f 11 84 24 cc 00 	movss  DWORD PTR [esp+0xcc],xmm0
  b467ef:	00 00 
  b467f1:	e8 aa f8 9a ff       	call   0x4f60a0
  b467f6:	8d 94 24 c0 00 00 00 	lea    edx,[esp+0xc0]
  b467fd:	52                   	push   edx
  b467fe:	8d 8c 24 e4 04 00 00 	lea    ecx,[esp+0x4e4]
  b46805:	e8 96 f8 9a ff       	call   0x4f60a0
  b4680a:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  b4680d:	8b 07                	mov    eax,DWORD PTR [edi]
  b4680f:	6a 04                	push   0x4
  b46811:	8d 8c 24 84 04 00 00 	lea    ecx,[esp+0x484]
  b46818:	51                   	push   ecx
  b46819:	52                   	push   edx
  b4681a:	8b 90 34 01 00 00    	mov    edx,DWORD PTR [eax+0x134]
  b46820:	8d 8c 24 5c 04 00 00 	lea    ecx,[esp+0x45c]
  b46827:	51                   	push   ecx
  b46828:	8b cf                	mov    ecx,edi
  b4682a:	ff d2                	call   edx
  b4682c:	33 c9                	xor    ecx,ecx
  b4682e:	66 89 8c 24 38 01 00 	mov    WORD PTR [esp+0x138],cx
  b46835:	00 
  b46836:	66 89 8c 24 3a 01 00 	mov    WORD PTR [esp+0x13a],cx
  b4683d:	00 
  b4683e:	50                   	push   eax
  b4683f:	8d 8c 24 34 01 00 00 	lea    ecx,[esp+0x134]
  b46846:	c7 84 24 34 01 00 00 	mov    DWORD PTR [esp+0x134],0xfba6f4
  b4684d:	f4 a6 fb 00 
  b46851:	e8 5a fc 9a ff       	call   0x4f64b0
  b46856:	8d 8c 24 50 04 00 00 	lea    ecx,[esp+0x450]
  b4685d:	e8 be ef 9a ff       	call   0x4f5820
  b46862:	8d 8c 24 30 01 00 00 	lea    ecx,[esp+0x130]
  b46869:	e8 52 31 c2 ff       	call   0x7699c0
  b4686e:	80 38 00             	cmp    BYTE PTR [eax],0x0
  b46871:	8d 8c 24 30 01 00 00 	lea    ecx,[esp+0x130]
  b46878:	0f 84 db 00 00 00    	je     0xb46959
  b4687e:	e8 9d ef 9a ff       	call   0x4f5820
  b46883:	68 20 58 4f 00       	push   0x4f5820
  b46888:	6a 04                	push   0x4
  b4688a:	6a 20                	push   0x20
  b4688c:	8d 84 24 8c 04 00 00 	lea    eax,[esp+0x48c]
  b46893:	50                   	push   eax
  b46894:	e8 47 fe 8f ff       	call   0x4466e0
  b46899:	83 7c 24 30 00       	cmp    DWORD PTR [esp+0x30],0x0
  b4689e:	0f 85 f7 03 00 00    	jne    0xb46c9b
  b468a4:	83 7c 24 34 00       	cmp    DWORD PTR [esp+0x34],0x0
  b468a9:	0f 85 ec 03 00 00    	jne    0xb46c9b
  b468af:	8b 7c 24 64          	mov    edi,DWORD PTR [esp+0x64]
  b468b3:	85 ff                	test   edi,edi
  b468b5:	0f 8c e0 03 00 00    	jl     0xb46c9b
  b468bb:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  b468bf:	51                   	push   ecx
  b468c0:	8d 94 24 94 00 00 00 	lea    edx,[esp+0x94]
  b468c7:	52                   	push   edx
  b468c8:	e8 93 55 fb ff       	call   0xafbe60
  b468cd:	83 c4 08             	add    esp,0x8
  b468d0:	3b c7                	cmp    eax,edi
  b468d2:	0f 84 c3 03 00 00    	je     0xb46c9b
  b468d8:	0f b6 04 bd 30 d6 06 	movzx  eax,BYTE PTR [edi*4+0x106d630]
  b468df:	01 
  b468e0:	8a 4e 48             	mov    cl,BYTE PTR [esi+0x48]
  b468e3:	f6 e9                	imul   cl
  b468e5:	02 44 24 24          	add    al,BYTE PTR [esp+0x24]
  b468e9:	8d 54 24 39          	lea    edx,[esp+0x39]
  b468ed:	88 44 24 38          	mov    BYTE PTR [esp+0x38],al
  b468f1:	0f b6 04 bd 50 d6 06 	movzx  eax,BYTE PTR [edi*4+0x106d650]
  b468f8:	01 
  b468f9:	f6 e9                	imul   cl
  b468fb:	02 44 24 25          	add    al,BYTE PTR [esp+0x25]
  b468ff:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  b46903:	88 44 24 39          	mov    BYTE PTR [esp+0x39],al
  b46907:	0f b6 44 24 26       	movzx  eax,BYTE PTR [esp+0x26]
  b4690c:	51                   	push   ecx
  b4690d:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  b46911:	88 44 24 3e          	mov    BYTE PTR [esp+0x3e],al
  b46915:	52                   	push   edx
  b46916:	8d 44 24 40          	lea    eax,[esp+0x40]
  b4691a:	50                   	push   eax
  b4691b:	51                   	push   ecx
  b4691c:	e8 0f 45 ff ff       	call   0xb3ae30
  b46921:	83 c4 10             	add    esp,0x10
  b46924:	8d 54 24 18          	lea    edx,[esp+0x18]
  b46928:	52                   	push   edx
  b46929:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  b4692d:	e8 8e 9c f6 ff       	call   0xab05c0
  b46932:	84 c0                	test   al,al
  b46934:	0f 84 61 03 00 00    	je     0xb46c9b
  b4693a:	66 8b 4c 24 38       	mov    cx,WORD PTR [esp+0x38]
  b4693f:	8a 54 24 3a          	mov    dl,BYTE PTR [esp+0x3a]
  b46943:	66 89 4c 24 18       	mov    WORD PTR [esp+0x18],cx
  b46948:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  b4694c:	88 54 24 1a          	mov    BYTE PTR [esp+0x1a],dl
  b46950:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  b46954:	e9 2c 03 00 00       	jmp    0xb46c85
  b46959:	e8 c2 ee 9a ff       	call   0x4f5820
  b4695e:	68 20 58 4f 00       	push   0x4f5820
  b46963:	6a 04                	push   0x4
  b46965:	6a 20                	push   0x20
  b46967:	8d 84 24 8c 04 00 00 	lea    eax,[esp+0x48c]
  b4696e:	50                   	push   eax
  b4696f:	e8 6c fd 8f ff       	call   0x4466e0
  b46974:	e9 fe f4 ff ff       	jmp    0xb45e77
  b46979:	80 7e 3d 00          	cmp    BYTE PTR [esi+0x3d],0x0
  b4697d:	0f 84 5d 01 00 00    	je     0xb46ae0
  b46983:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  b46986:	8d 84 24 f0 02 00 00 	lea    eax,[esp+0x2f0]
  b4698d:	50                   	push   eax
  b4698e:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  b46992:	51                   	push   ecx
  b46993:	52                   	push   edx
  b46994:	e8 b7 5d f9 ff       	call   0xadc750
  b46999:	83 c4 0c             	add    esp,0xc
  b4699c:	8d 84 24 d0 02 00 00 	lea    eax,[esp+0x2d0]
  b469a3:	50                   	push   eax
  b469a4:	8d 8c 24 f4 02 00 00 	lea    ecx,[esp+0x2f4]
  b469ab:	51                   	push   ecx
  b469ac:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b469af:	e8 8c 06 f7 ff       	call   0xab7040
  b469b4:	6a 00                	push   0x0
  b469b6:	e8 25 55 fb ff       	call   0xafbee0
  b469bb:	0f 57 c0             	xorps  xmm0,xmm0
  b469be:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  b469c5:	00 
  b469c6:	f3 0f 11 84 24 20 01 	movss  DWORD PTR [esp+0x120],xmm0
  b469cd:	00 00 
  b469cf:	f3 0f 11 84 24 1c 01 	movss  DWORD PTR [esp+0x11c],xmm0
  b469d6:	00 00 
  b469d8:	f3 0f 11 84 24 14 01 	movss  DWORD PTR [esp+0x114],xmm0
  b469df:	00 00 
  b469e1:	f3 0f 11 8c 24 18 01 	movss  DWORD PTR [esp+0x118],xmm1
  b469e8:	00 00 
  b469ea:	0f 28 84 24 14 01 00 	movaps xmm0,XMMWORD PTR [esp+0x114]
  b469f1:	00 
  b469f2:	f3 0f 10 0d 88 fd 03 	movss  xmm1,DWORD PTR ds:0x103fd88
  b469f9:	01 
  b469fa:	0f 29 84 24 74 02 00 	movaps XMMWORD PTR [esp+0x274],xmm0
  b46a01:	00 
  b46a02:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  b46a06:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  b46a0c:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b46a10:	83 c4 04             	add    esp,0x4
  b46a13:	6a 01                	push   0x1
  b46a15:	83 ec 08             	sub    esp,0x8
  b46a18:	8d 94 24 bc 02 00 00 	lea    edx,[esp+0x2bc]
  b46a1f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b46a23:	0f 5e c1             	divps  xmm0,xmm1
  b46a26:	0f 29 84 24 5c 02 00 	movaps XMMWORD PTR [esp+0x25c],xmm0
  b46a2d:	00 
  b46a2e:	d9 84 24 5c 02 00 00 	fld    DWORD PTR [esp+0x25c]
  b46a35:	0f 29 84 24 9c 02 00 	movaps XMMWORD PTR [esp+0x29c],xmm0
  b46a3c:	00 
  b46a3d:	d9 fe                	fsin
  b46a3f:	8d 84 24 dc 02 00 00 	lea    eax,[esp+0x2dc]
  b46a46:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  b46a4a:	d9 84 24 9c 02 00 00 	fld    DWORD PTR [esp+0x29c]
  b46a51:	d9 ff                	fcos
  b46a53:	f3 0f 10 4c 24 34    	movss  xmm1,DWORD PTR [esp+0x34]
  b46a59:	0f 28 84 24 7c 02 00 	movaps xmm0,XMMWORD PTR [esp+0x27c]
  b46a60:	00 
  b46a61:	0f 28 d0             	movaps xmm2,xmm0
  b46a64:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  b46a68:	0f 28 d8             	movaps xmm3,xmm0
  b46a6b:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  b46a6f:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b46a73:	0f 59 d1             	mulps  xmm2,xmm1
  b46a76:	0f 59 d9             	mulps  xmm3,xmm1
  b46a79:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b46a7d:	0f 59 c1             	mulps  xmm0,xmm1
  b46a80:	0f 29 84 24 1c 04 00 	movaps XMMWORD PTR [esp+0x41c],xmm0
  b46a87:	00 
  b46a88:	0f 29 94 24 4c 04 00 	movaps XMMWORD PTR [esp+0x44c],xmm2
  b46a8f:	00 
  b46a90:	0f 29 9c 24 fc 03 00 	movaps XMMWORD PTR [esp+0x3fc],xmm3
  b46a97:	00 
  b46a98:	0f c6 c3 10          	shufps xmm0,xmm3,0x10
  b46a9c:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  b46aa0:	f3 0f 10 4c 24 34    	movss  xmm1,DWORD PTR [esp+0x34]
  b46aa6:	d9 46 44             	fld    DWORD PTR [esi+0x44]
  b46aa9:	8b 0e                	mov    ecx,DWORD PTR [esi]
  b46aab:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b46aaf:	d9 46 40             	fld    DWORD PTR [esi+0x40]
  b46ab2:	d9 1c 24             	fstp   DWORD PTR [esp]
  b46ab5:	52                   	push   edx
  b46ab6:	50                   	push   eax
  b46ab7:	51                   	push   ecx
  b46ab8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b46abc:	0f c6 d1 32          	shufps xmm2,xmm1,0x32
  b46ac0:	0f c6 c2 88          	shufps xmm0,xmm2,0x88
  b46ac4:	0f 29 84 24 c8 02 00 	movaps XMMWORD PTR [esp+0x2c8],xmm0
  b46acb:	00 
  b46acc:	e8 0f bd 12 00       	call   0xc727e0
  b46ad1:	83 c4 18             	add    esp,0x18
  b46ad4:	84 c0                	test   al,al
  b46ad6:	0f 84 9b f3 ff ff    	je     0xb45e77
  b46adc:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
  b46ae0:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  b46ae4:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  b46ae8:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  b46aec:	89 94 24 58 01 00 00 	mov    DWORD PTR [esp+0x158],edx
  b46af3:	8d 94 24 50 01 00 00 	lea    edx,[esp+0x150]
  b46afa:	6a 00                	push   0x0
  b46afc:	52                   	push   edx
  b46afd:	89 84 24 64 01 00 00 	mov    DWORD PTR [esp+0x164],eax
  b46b04:	89 8c 24 68 01 00 00 	mov    DWORD PTR [esp+0x168],ecx
  b46b0b:	e8 50 ee ff ff       	call   0xb45960
  b46b10:	83 c4 08             	add    esp,0x8
  b46b13:	84 c0                	test   al,al
  b46b15:	0f 84 5c f3 ff ff    	je     0xb45e77
  b46b1b:	83 7c 24 30 00       	cmp    DWORD PTR [esp+0x30],0x0
  b46b20:	0f 85 7e 01 00 00    	jne    0xb46ca4
  b46b26:	83 7c 24 34 00       	cmp    DWORD PTR [esp+0x34],0x0
  b46b2b:	0f 85 73 01 00 00    	jne    0xb46ca4
  b46b31:	8b 5c 24 64          	mov    ebx,DWORD PTR [esp+0x64]
  b46b35:	85 db                	test   ebx,ebx
  b46b37:	0f 8c 67 01 00 00    	jl     0xb46ca4
  b46b3d:	8d 44 24 40          	lea    eax,[esp+0x40]
  b46b41:	50                   	push   eax
  b46b42:	8d 8c 24 94 00 00 00 	lea    ecx,[esp+0x94]
  b46b49:	51                   	push   ecx
  b46b4a:	e8 11 53 fb ff       	call   0xafbe60
  b46b4f:	83 c4 08             	add    esp,0x8
  b46b52:	3b c3                	cmp    eax,ebx
  b46b54:	0f 84 4a 01 00 00    	je     0xb46ca4
  b46b5a:	0f b6 04 9d 30 d6 06 	movzx  eax,BYTE PTR [ebx*4+0x106d630]
  b46b61:	01 
  b46b62:	8a 4e 48             	mov    cl,BYTE PTR [esi+0x48]
  b46b65:	f6 e9                	imul   cl
  b46b67:	02 44 24 24          	add    al,BYTE PTR [esp+0x24]
  b46b6b:	8a 54 24 26          	mov    dl,BYTE PTR [esp+0x26]
  b46b6f:	88 44 24 3c          	mov    BYTE PTR [esp+0x3c],al
  b46b73:	0f b6 04 9d 50 d6 06 	movzx  eax,BYTE PTR [ebx*4+0x106d650]
  b46b7a:	01 
  b46b7b:	f6 e9                	imul   cl
  b46b7d:	02 44 24 25          	add    al,BYTE PTR [esp+0x25]
  b46b81:	8d 4c 24 3d          	lea    ecx,[esp+0x3d]
  b46b85:	88 44 24 3d          	mov    BYTE PTR [esp+0x3d],al
  b46b89:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  b46b8d:	50                   	push   eax
  b46b8e:	88 54 24 42          	mov    BYTE PTR [esp+0x42],dl
  b46b92:	51                   	push   ecx
  b46b93:	8d 54 24 44          	lea    edx,[esp+0x44]
  b46b97:	52                   	push   edx
  b46b98:	57                   	push   edi
  b46b99:	e8 92 42 ff ff       	call   0xb3ae30
  b46b9e:	83 c4 10             	add    esp,0x10
  b46ba1:	8d 44 24 18          	lea    eax,[esp+0x18]
  b46ba5:	50                   	push   eax
  b46ba6:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  b46baa:	e8 11 9a f6 ff       	call   0xab05c0
  b46baf:	84 c0                	test   al,al
  b46bb1:	0f 84 ed 00 00 00    	je     0xb46ca4
  b46bb7:	66 8b 4c 24 3c       	mov    cx,WORD PTR [esp+0x3c]
  b46bbc:	8a 54 24 3e          	mov    dl,BYTE PTR [esp+0x3e]
  b46bc0:	66 89 4c 24 18       	mov    WORD PTR [esp+0x18],cx
  b46bc5:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  b46bc9:	88 54 24 1a          	mov    BYTE PTR [esp+0x1a],dl
  b46bcd:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  b46bd1:	e9 af 00 00 00       	jmp    0xb46c85
  b46bd6:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  b46bda:	85 c0                	test   eax,eax
  b46bdc:	7f 28                	jg     0xb46c06
  b46bde:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  b46be1:	8b 5e 48             	mov    ebx,DWORD PTR [esi+0x48]
  b46be4:	03 c0                	add    eax,eax
  b46be6:	8b 8c 00 30 d6 06 01 	mov    ecx,DWORD PTR [eax+eax*1+0x106d630]
  b46bed:	8b 94 00 50 d6 06 01 	mov    edx,DWORD PTR [eax+eax*1+0x106d650]
  b46bf4:	0f af cb             	imul   ecx,ebx
  b46bf7:	03 c0                	add    eax,eax
  b46bf9:	0f af d3             	imul   edx,ebx
  b46bfc:	c7 44 24 58 02 00 00 	mov    DWORD PTR [esp+0x58],0x2
  b46c03:	00 
  b46c04:	eb 6b                	jmp    0xb46c71
  b46c06:	25 01 00 00 80       	and    eax,0x80000001
  b46c0b:	79 05                	jns    0xb46c12
  b46c0d:	48                   	dec    eax
  b46c0e:	83 c8 fe             	or     eax,0xfffffffe
  b46c11:	40                   	inc    eax
  b46c12:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  b46c16:	74 20                	je     0xb46c38
  b46c18:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
  b46c1b:	83 c0 01             	add    eax,0x1
  b46c1e:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  b46c22:	03 db                	add    ebx,ebx
  b46c24:	8b 8c 1b 30 d6 06 01 	mov    ecx,DWORD PTR [ebx+ebx*1+0x106d630]
  b46c2b:	99                   	cdq
  b46c2c:	03 db                	add    ebx,ebx
  b46c2e:	2b c2                	sub    eax,edx
  b46c30:	8b 93 50 d6 06 01    	mov    edx,DWORD PTR [ebx+0x106d650]
  b46c36:	eb 28                	jmp    0xb46c60
  b46c38:	83 c0 01             	add    eax,0x1
  b46c3b:	8d 59 04             	lea    ebx,[ecx+0x4]
  b46c3e:	81 e3 07 00 00 80    	and    ebx,0x80000007
  b46c44:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  b46c48:	79 05                	jns    0xb46c4f
  b46c4a:	4b                   	dec    ebx
  b46c4b:	83 cb f8             	or     ebx,0xfffffff8
  b46c4e:	43                   	inc    ebx
  b46c4f:	8b 0c 9d 30 d6 06 01 	mov    ecx,DWORD PTR [ebx*4+0x106d630]
  b46c56:	99                   	cdq
  b46c57:	2b c2                	sub    eax,edx
  b46c59:	8b 14 9d 50 d6 06 01 	mov    edx,DWORD PTR [ebx*4+0x106d650]
  b46c60:	8b 7e 48             	mov    edi,DWORD PTR [esi+0x48]
  b46c63:	0f af cf             	imul   ecx,edi
  b46c66:	0f af d7             	imul   edx,edi
  b46c69:	d1 f8                	sar    eax,1
  b46c6b:	0f af c8             	imul   ecx,eax
  b46c6e:	0f af d0             	imul   edx,eax
  b46c71:	3b 4c 24 78          	cmp    ecx,DWORD PTR [esp+0x78]
  b46c75:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
  b46c79:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  b46c7d:	7f 6d                	jg     0xb46cec
  b46c7f:	3b 54 24 7c          	cmp    edx,DWORD PTR [esp+0x7c]
  b46c83:	7f 67                	jg     0xb46cec
  b46c85:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [esp+0xac]
  b46c8c:	39 44 24 50          	cmp    DWORD PTR [esp+0x50],eax
  b46c90:	7d 5a                	jge    0xb46cec
  b46c92:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
  b46c96:	e9 95 f1 ff ff       	jmp    0xb45e30
  b46c9b:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  b46c9e:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
  b46ca2:	eb 12                	jmp    0xb46cb6
  b46ca4:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  b46ca7:	85 c9                	test   ecx,ecx
  b46ca9:	74 0b                	je     0xb46cb6
  b46cab:	8b 94 24 70 01 00 00 	mov    edx,DWORD PTR [esp+0x170]
  b46cb2:	89 54 24 70          	mov    DWORD PTR [esp+0x70],edx
  b46cb6:	85 c9                	test   ecx,ecx
  b46cb8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  b46cbb:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  b46cbf:	89 10                	mov    DWORD PTR [eax],edx
  b46cc1:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  b46cc5:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  b46cc8:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  b46ccc:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  b46ccf:	74 06                	je     0xb46cd7
  b46cd1:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  b46cd5:	89 01                	mov    DWORD PTR [ecx],eax
  b46cd7:	8d 8c 24 50 01 00 00 	lea    ecx,[esp+0x150]
  b46cde:	e8 bd cd c4 ff       	call   0x793aa0
  b46ce3:	b0 01                	mov    al,0x1
  b46ce5:	5f                   	pop    edi
  b46ce6:	5e                   	pop    esi
  b46ce7:	5b                   	pop    ebx
  b46ce8:	8b e5                	mov    esp,ebp
  b46cea:	5d                   	pop    ebp
  b46ceb:	c3                   	ret
  b46cec:	8d 8c 24 50 01 00 00 	lea    ecx,[esp+0x150]
  b46cf3:	e8 a8 cd c4 ff       	call   0x793aa0
  b46cf8:	5f                   	pop    edi
  b46cf9:	5e                   	pop    esi
  b46cfa:	32 c0                	xor    al,al
  b46cfc:	5b                   	pop    ebx
  b46cfd:	8b e5                	mov    esp,ebp
  b46cff:	5d                   	pop    ebp
  b46d00:	c3                   	ret

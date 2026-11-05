# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007bcbe0 <.text+0x3bbbe0>:
  7bcbe0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  7bcbe4:	83 ec 14             	sub    esp,0x14
  7bcbe7:	53                   	push   ebx
  7bcbe8:	56                   	push   esi
  7bcbe9:	8b f1                	mov    esi,ecx
  7bcbeb:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  7bcbef:	50                   	push   eax
  7bcbf0:	51                   	push   ecx
  7bcbf1:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7bcbf5:	32 db                	xor    bl,bl
  7bcbf7:	e8 a4 f1 ff ff       	call   0x7bbda0
  7bcbfc:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcbfe:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcc02:	52                   	push   edx
  7bcc03:	e8 08 30 00 00       	call   0x7bfc10
  7bcc08:	84 c0                	test   al,al
  7bcc0a:	0f 84 6d 04 00 00    	je     0x7bd07d
  7bcc10:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7bcc14:	2b 44 24 0c          	sub    eax,DWORD PTR [esp+0xc]
  7bcc18:	88 5c 24 24          	mov    BYTE PTR [esp+0x24],bl
  7bcc1c:	39 44 24 08          	cmp    DWORD PTR [esp+0x8],eax
  7bcc20:	88 5c 24 20          	mov    BYTE PTR [esp+0x20],bl
  7bcc24:	0f 83 62 03 00 00    	jae    0x7bcf8c
  7bcc2a:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcc2e:	e8 fd ce fe ff       	call   0x7a9b30
  7bcc33:	3d f0 55 00 00       	cmp    eax,0x55f0
  7bcc38:	0f 8f b5 01 00 00    	jg     0x7bcdf3
  7bcc3e:	0f 84 8a 01 00 00    	je     0x7bcdce
  7bcc44:	3d 80 3e 00 00       	cmp    eax,0x3e80
  7bcc49:	0f 8f cb 00 00 00    	jg     0x7bcd1a
  7bcc4f:	0f 84 b4 00 00 00    	je     0x7bcd09
  7bcc55:	3d f8 2a 00 00       	cmp    eax,0x2af8
  7bcc5a:	7f 60                	jg     0x7bccbc
  7bcc5c:	74 4d                	je     0x7bccab
  7bcc5e:	3d 40 1f 00 00       	cmp    eax,0x1f40
  7bcc63:	74 34                	je     0x7bcc99
  7bcc65:	3d 28 23 00 00       	cmp    eax,0x2328
  7bcc6a:	74 1c                	je     0x7bcc88
  7bcc6c:	3d 10 27 00 00       	cmp    eax,0x2710
  7bcc71:	0f 85 ca 02 00 00    	jne    0x7bcf41
  7bcc77:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcc7b:	51                   	push   ecx
  7bcc7c:	8b ce                	mov    ecx,esi
  7bcc7e:	e8 9d db ff ff       	call   0x7ba820
  7bcc83:	e9 e5 02 00 00       	jmp    0x7bcf6d
  7bcc88:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcc8c:	52                   	push   edx
  7bcc8d:	8b ce                	mov    ecx,esi
  7bcc8f:	e8 7c cd ff ff       	call   0x7b9a10
  7bcc94:	e9 d4 02 00 00       	jmp    0x7bcf6d
  7bcc99:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7bcc9c:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bcca0:	50                   	push   eax
  7bcca1:	e8 9a 87 ff ff       	call   0x7b5440
  7bcca6:	e9 c2 02 00 00       	jmp    0x7bcf6d
  7bccab:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bccaf:	51                   	push   ecx
  7bccb0:	8b ce                	mov    ecx,esi
  7bccb2:	e8 f9 cd ff ff       	call   0x7b9ab0
  7bccb7:	e9 b1 02 00 00       	jmp    0x7bcf6d
  7bccbc:	3d e0 2e 00 00       	cmp    eax,0x2ee0
  7bccc1:	74 35                	je     0x7bccf8
  7bccc3:	3d c8 32 00 00       	cmp    eax,0x32c8
  7bccc8:	74 1c                	je     0x7bcce6
  7bccca:	3d 98 3a 00 00       	cmp    eax,0x3a98
  7bcccf:	0f 85 6c 02 00 00    	jne    0x7bcf41
  7bccd5:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bccd7:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bccdb:	52                   	push   edx
  7bccdc:	e8 bf 05 00 00       	call   0x7bd2a0
  7bcce1:	e9 87 02 00 00       	jmp    0x7bcf6d
  7bcce6:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  7bcce9:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bcced:	50                   	push   eax
  7bccee:	e8 1d 06 ff ff       	call   0x7ad310
  7bccf3:	e9 75 02 00 00       	jmp    0x7bcf6d
  7bccf8:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bccfc:	51                   	push   ecx
  7bccfd:	8b ce                	mov    ecx,esi
  7bccff:	e8 fc e9 ff ff       	call   0x7bb700
  7bcd04:	e9 64 02 00 00       	jmp    0x7bcf6d
  7bcd09:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcd0b:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcd0f:	52                   	push   edx
  7bcd10:	e8 0b 06 00 00       	call   0x7bd320
  7bcd15:	e9 53 02 00 00       	jmp    0x7bcf6d
  7bcd1a:	3d 38 4a 00 00       	cmp    eax,0x4a38
  7bcd1f:	7f 5d                	jg     0x7bcd7e
  7bcd21:	74 4a                	je     0x7bcd6d
  7bcd23:	2d 8d 3e 00 00       	sub    eax,0x3e8d
  7bcd28:	74 32                	je     0x7bcd5c
  7bcd2a:	83 e8 01             	sub    eax,0x1
  7bcd2d:	74 1c                	je     0x7bcd4b
  7bcd2f:	2d c2 07 00 00       	sub    eax,0x7c2
  7bcd34:	0f 85 07 02 00 00    	jne    0x7bcf41
  7bcd3a:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bcd3e:	50                   	push   eax
  7bcd3f:	8b ce                	mov    ecx,esi
  7bcd41:	e8 ca bb ff ff       	call   0x7b8910
  7bcd46:	e9 22 02 00 00       	jmp    0x7bcf6d
  7bcd4b:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcd4f:	e8 8c cd fe ff       	call   0x7a9ae0
  7bcd54:	d9 5e 2c             	fstp   DWORD PTR [esi+0x2c]
  7bcd57:	e9 11 02 00 00       	jmp    0x7bcf6d
  7bcd5c:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcd60:	51                   	push   ecx
  7bcd61:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcd63:	e8 48 04 00 00       	call   0x7bd1b0
  7bcd68:	e9 00 02 00 00       	jmp    0x7bcf6d
  7bcd6d:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcd71:	52                   	push   edx
  7bcd72:	8b ce                	mov    ecx,esi
  7bcd74:	e8 87 d8 ff ff       	call   0x7ba600
  7bcd79:	e9 ef 01 00 00       	jmp    0x7bcf6d
  7bcd7e:	2d 20 4e 00 00       	sub    eax,0x4e20
  7bcd83:	74 38                	je     0x7bcdbd
  7bcd85:	2d e8 03 00 00       	sub    eax,0x3e8
  7bcd8a:	74 1d                	je     0x7bcda9
  7bcd8c:	83 e8 01             	sub    eax,0x1
  7bcd8f:	0f 85 ac 01 00 00    	jne    0x7bcf41
  7bcd95:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcd99:	e8 42 cd fe ff       	call   0x7a9ae0
  7bcd9e:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  7bcda1:	d9 58 40             	fstp   DWORD PTR [eax+0x40]
  7bcda4:	e9 c4 01 00 00       	jmp    0x7bcf6d
  7bcda9:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcdad:	e8 2e cd fe ff       	call   0x7a9ae0
  7bcdb2:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7bcdb5:	d9 59 3c             	fstp   DWORD PTR [ecx+0x3c]
  7bcdb8:	e9 b0 01 00 00       	jmp    0x7bcf6d
  7bcdbd:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcdc1:	52                   	push   edx
  7bcdc2:	8b ce                	mov    ecx,esi
  7bcdc4:	e8 f7 e1 ff ff       	call   0x7bafc0
  7bcdc9:	e9 9f 01 00 00       	jmp    0x7bcf6d
  7bcdce:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  7bcdd2:	8b 16                	mov    edx,DWORD PTR [esi]
  7bcdd4:	8b c8                	mov    ecx,eax
  7bcdd6:	83 c0 01             	add    eax,0x1
  7bcdd9:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  7bcddd:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  7bcde1:	80 3c 01 00          	cmp    BYTE PTR [ecx+eax*1],0x0
  7bcde5:	0f 95 c1             	setne  cl
  7bcde8:	88 8a 0c 01 00 00    	mov    BYTE PTR [edx+0x10c],cl
  7bcdee:	e9 7a 01 00 00       	jmp    0x7bcf6d
  7bcdf3:	3d 30 75 00 00       	cmp    eax,0x7530
  7bcdf8:	0f 8f ca 00 00 00    	jg     0x7bcec8
  7bcdfe:	0f 84 b3 00 00 00    	je     0x7bceb7
  7bce04:	3d 90 65 00 00       	cmp    eax,0x6590
  7bce09:	7f 60                	jg     0x7bce6b
  7bce0b:	74 4d                	je     0x7bce5a
  7bce0d:	3d d8 59 00 00       	cmp    eax,0x59d8
  7bce12:	74 35                	je     0x7bce49
  7bce14:	3d c0 5d 00 00       	cmp    eax,0x5dc0
  7bce19:	74 1d                	je     0x7bce38
  7bce1b:	3d a8 61 00 00       	cmp    eax,0x61a8
  7bce20:	0f 85 1b 01 00 00    	jne    0x7bcf41
  7bce26:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  7bce29:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bce2d:	50                   	push   eax
  7bce2e:	e8 0d d4 fe ff       	call   0x7aa240
  7bce33:	e9 35 01 00 00       	jmp    0x7bcf6d
  7bce38:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bce3c:	51                   	push   ecx
  7bce3d:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bce3f:	e8 8c 03 00 00       	call   0x7bd1d0
  7bce44:	e9 24 01 00 00       	jmp    0x7bcf6d
  7bce49:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bce4b:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bce4f:	52                   	push   edx
  7bce50:	e8 5b 06 00 00       	call   0x7bd4b0
  7bce55:	e9 13 01 00 00       	jmp    0x7bcf6d
  7bce5a:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bce5c:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bce60:	50                   	push   eax
  7bce61:	e8 da 0c 00 00       	call   0x7bdb40
  7bce66:	e9 02 01 00 00       	jmp    0x7bcf6d
  7bce6b:	3d 78 69 00 00       	cmp    eax,0x6978
  7bce70:	74 34                	je     0x7bcea6
  7bce72:	3d 60 6d 00 00       	cmp    eax,0x6d60
  7bce77:	74 1c                	je     0x7bce95
  7bce79:	3d 48 71 00 00       	cmp    eax,0x7148
  7bce7e:	0f 85 bd 00 00 00    	jne    0x7bcf41
  7bce84:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bce88:	51                   	push   ecx
  7bce89:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bce8b:	e8 80 03 00 00       	call   0x7bd210
  7bce90:	e9 d8 00 00 00       	jmp    0x7bcf6d
  7bce95:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bce97:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bce9b:	52                   	push   edx
  7bce9c:	e8 3f 07 00 00       	call   0x7bd5e0
  7bcea1:	e9 c7 00 00 00       	jmp    0x7bcf6d
  7bcea6:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcea8:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bceac:	50                   	push   eax
  7bcead:	e8 7e 06 00 00       	call   0x7bd530
  7bceb2:	e9 b6 00 00 00       	jmp    0x7bcf6d
  7bceb7:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcebb:	51                   	push   ecx
  7bcebc:	8b ce                	mov    ecx,esi
  7bcebe:	e8 3d cc ff ff       	call   0x7b9b00
  7bcec3:	e9 a5 00 00 00       	jmp    0x7bcf6d
  7bcec8:	3d 58 15 01 00       	cmp    eax,0x11558
  7bcecd:	7f 5d                	jg     0x7bcf2c
  7bcecf:	74 4d                	je     0x7bcf1e
  7bced1:	3d 40 9c 00 00       	cmp    eax,0x9c40
  7bced6:	74 38                	je     0x7bcf10
  7bced8:	3d 50 c3 00 00       	cmp    eax,0xc350
  7bcedd:	74 1e                	je     0x7bcefd
  7bcedf:	3d 60 ea 00 00       	cmp    eax,0xea60
  7bcee4:	75 5b                	jne    0x7bcf41
  7bcee6:	8b 8e dc 00 00 00    	mov    ecx,DWORD PTR [esi+0xdc]
  7bceec:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcef0:	52                   	push   edx
  7bcef1:	e8 1a 93 ff ff       	call   0x7b6210
  7bcef6:	c6 44 24 24 01       	mov    BYTE PTR [esp+0x24],0x1
  7bcefb:	eb 70                	jmp    0x7bcf6d
  7bcefd:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bceff:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bcf03:	50                   	push   eax
  7bcf04:	e8 57 07 00 00       	call   0x7bd660
  7bcf09:	c6 44 24 20 01       	mov    BYTE PTR [esp+0x20],0x1
  7bcf0e:	eb 5d                	jmp    0x7bcf6d
  7bcf10:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcf14:	51                   	push   ecx
  7bcf15:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcf17:	e8 34 03 00 00       	call   0x7bd250
  7bcf1c:	eb 4f                	jmp    0x7bcf6d
  7bcf1e:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcf20:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcf24:	52                   	push   edx
  7bcf25:	e8 66 26 00 00       	call   0x7bf590
  7bcf2a:	eb 41                	jmp    0x7bcf6d
  7bcf2c:	3d 40 19 01 00       	cmp    eax,0x11940
  7bcf31:	74 2e                	je     0x7bcf61
  7bcf33:	3d 28 1d 01 00       	cmp    eax,0x11d28
  7bcf38:	74 19                	je     0x7bcf53
  7bcf3a:	3d 10 21 01 00       	cmp    eax,0x12110
  7bcf3f:	74 04                	je     0x7bcf45
  7bcf41:	b3 01                	mov    bl,0x1
  7bcf43:	eb 28                	jmp    0x7bcf6d
  7bcf45:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcf47:	8d 44 24 08          	lea    eax,[esp+0x8]
  7bcf4b:	50                   	push   eax
  7bcf4c:	e8 0f 03 00 00       	call   0x7bd260
  7bcf51:	eb 1a                	jmp    0x7bcf6d
  7bcf53:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcf57:	51                   	push   ecx
  7bcf58:	8b ce                	mov    ecx,esi
  7bcf5a:	e8 c1 d1 ff ff       	call   0x7ba120
  7bcf5f:	eb 0c                	jmp    0x7bcf6d
  7bcf61:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcf63:	8d 54 24 08          	lea    edx,[esp+0x8]
  7bcf67:	52                   	push   edx
  7bcf68:	e8 03 0a 00 00       	call   0x7bd970
  7bcf6d:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7bcf71:	2b 44 24 0c          	sub    eax,DWORD PTR [esp+0xc]
  7bcf75:	39 44 24 08          	cmp    DWORD PTR [esp+0x8],eax
  7bcf79:	73 11                	jae    0x7bcf8c
  7bcf7b:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7bcf7f:	e8 ac cb fe ff       	call   0x7a9b30
  7bcf84:	84 db                	test   bl,bl
  7bcf86:	0f 84 a7 fc ff ff    	je     0x7bcc33
  7bcf8c:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bcf8e:	e8 9d 15 00 00       	call   0x7be530
  7bcf93:	80 be e0 00 00 00 00 	cmp    BYTE PTR [esi+0xe0],0x0
  7bcf9a:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7bcf9d:	8b 01                	mov    eax,DWORD PTR [ecx]
  7bcf9f:	75 13                	jne    0x7bcfb4
  7bcfa1:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7bcfa4:	83 f8 01             	cmp    eax,0x1
  7bcfa7:	0f 94 c2             	sete   dl
  7bcfaa:	88 51 09             	mov    BYTE PTR [ecx+0x9],dl
  7bcfad:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  7bcfb0:	89 02                	mov    DWORD PTR [edx],eax
  7bcfb2:	eb 0d                	jmp    0x7bcfc1
  7bcfb4:	68 38 75 01 01       	push   0x1017538
  7bcfb9:	e8 f2 d7 ff ff       	call   0x7ba7b0
  7bcfbe:	83 c4 04             	add    esp,0x4
  7bcfc1:	80 be e0 00 00 00 00 	cmp    BYTE PTR [esi+0xe0],0x0
  7bcfc8:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7bcfcb:	8b 48 38             	mov    ecx,DWORD PTR [eax+0x38]
  7bcfce:	75 10                	jne    0x7bcfe0
  7bcfd0:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  7bcfd3:	83 f9 01             	cmp    ecx,0x1
  7bcfd6:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7bcfd9:	0f 94 c0             	sete   al
  7bcfdc:	88 01                	mov    BYTE PTR [ecx],al
  7bcfde:	eb 0d                	jmp    0x7bcfed
  7bcfe0:	68 80 75 01 01       	push   0x1017580
  7bcfe5:	e8 c6 d7 ff ff       	call   0x7ba7b0
  7bcfea:	83 c4 04             	add    esp,0x4
  7bcfed:	80 be e0 00 00 00 00 	cmp    BYTE PTR [esi+0xe0],0x0
  7bcff4:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  7bcff7:	8b 42 78             	mov    eax,DWORD PTR [edx+0x78]
  7bcffa:	75 14                	jne    0x7bd010
  7bcffc:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  7bcfff:	83 f8 01             	cmp    eax,0x1
  7bd002:	0f 94 c1             	sete   cl
  7bd005:	88 4a 09             	mov    BYTE PTR [edx+0x9],cl
  7bd008:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7bd00b:	89 41 78             	mov    DWORD PTR [ecx+0x78],eax
  7bd00e:	eb 0d                	jmp    0x7bd01d
  7bd010:	68 c8 75 01 01       	push   0x10175c8
  7bd015:	e8 96 d7 ff ff       	call   0x7ba7b0
  7bd01a:	83 c4 04             	add    esp,0x4
  7bd01d:	8b 16                	mov    edx,DWORD PTR [esi]
  7bd01f:	8b 82 ec 00 00 00    	mov    eax,DWORD PTR [edx+0xec]
  7bd025:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  7bd028:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  7bd02b:	e8 70 52 d8 ff       	call   0x5422a0
  7bd030:	83 7e 1c 02          	cmp    DWORD PTR [esi+0x1c],0x2
  7bd034:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  7bd037:	75 14                	jne    0x7bd04d
  7bd039:	f3 0f 10 05 b4 b5 f9 	movss  xmm0,DWORD PTR ds:0xf9b5b4
  7bd040:	00 
  7bd041:	c7 46 1c 01 00 00 00 	mov    DWORD PTR [esi+0x1c],0x1
  7bd048:	f3 0f 11 46 2c       	movss  DWORD PTR [esi+0x2c],xmm0
  7bd04d:	0f b7 0d 48 96 1d 01 	movzx  ecx,WORD PTR ds:0x11d9648
  7bd054:	51                   	push   ecx
  7bd055:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7bd058:	6a 00                	push   0x0
  7bd05a:	e8 91 87 da ff       	call   0x5657f0
  7bd05f:	80 7c 24 24 00       	cmp    BYTE PTR [esp+0x24],0x0
  7bd064:	75 07                	jne    0x7bd06d
  7bd066:	8b ce                	mov    ecx,esi
  7bd068:	e8 93 f6 ff ff       	call   0x7bc700
  7bd06d:	80 7c 24 20 00       	cmp    BYTE PTR [esp+0x20],0x0
  7bd072:	75 07                	jne    0x7bd07b
  7bd074:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7bd076:	e8 e5 07 00 00       	call   0x7bd860
  7bd07b:	b3 01                	mov    bl,0x1
  7bd07d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  7bd081:	85 c0                	test   eax,eax
  7bd083:	74 09                	je     0x7bd08e
  7bd085:	50                   	push   eax
  7bd086:	e8 55 74 d2 ff       	call   0x4e44e0
  7bd08b:	83 c4 04             	add    esp,0x4
  7bd08e:	5e                   	pop    esi
  7bd08f:	8a c3                	mov    al,bl
  7bd091:	5b                   	pop    ebx
  7bd092:	83 c4 14             	add    esp,0x14
  7bd095:	c2 08 00             	ret    0x8

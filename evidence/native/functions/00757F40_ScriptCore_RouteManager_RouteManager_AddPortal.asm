# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00757f40,0x00758233); analyst name RouteManager_AddPortal.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00757f40 <.text+0x356f40>:
  757f40:	55                   	push   ebp
  757f41:	8b ec                	mov    ebp,esp
  757f43:	83 e4 f0             	and    esp,0xfffffff0
  757f46:	81 ec d4 00 00 00    	sub    esp,0xd4
  757f4c:	53                   	push   ebx
  757f4d:	56                   	push   esi
  757f4e:	57                   	push   edi
  757f4f:	e8 3c 14 01 00       	call   0x769390
  757f54:	33 ff                	xor    edi,edi
  757f56:	3b c7                	cmp    eax,edi
  757f58:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  757f5c:	0f 84 c8 02 00 00    	je     0x75822a
  757f62:	e8 89 0d 0d 00       	call   0x828cf0
  757f67:	3b c7                	cmp    eax,edi
  757f69:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  757f6d:	0f 84 b7 02 00 00    	je     0x75822a
  757f73:	8b c8                	mov    ecx,eax
  757f75:	e8 46 16 0d 00       	call   0x8295c0
  757f7a:	3b c7                	cmp    eax,edi
  757f7c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  757f80:	0f 84 a4 02 00 00    	je     0x75822a
  757f86:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  757f8c:	3b cf                	cmp    ecx,edi
  757f8e:	0f 84 96 02 00 00    	je     0x75822a
  757f94:	d9 45 18             	fld    DWORD PTR [ebp+0x18]
  757f97:	83 ec 08             	sub    esp,0x8
  757f9a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  757f9e:	d9 45 10             	fld    DWORD PTR [ebp+0x10]
  757fa1:	d9 1c 24             	fstp   DWORD PTR [esp]
  757fa4:	e8 27 08 51 00       	call   0xc687d0
  757fa9:	8b f0                	mov    esi,eax
  757fab:	3b f7                	cmp    esi,edi
  757fad:	0f 84 77 02 00 00    	je     0x75822a
  757fb3:	8d 84 24 d0 00 00 00 	lea    eax,[esp+0xd0]
  757fba:	50                   	push   eax
  757fbb:	8d 4d 10             	lea    ecx,[ebp+0x10]
  757fbe:	51                   	push   ecx
  757fbf:	e8 9c 43 01 00       	call   0x76c360
  757fc4:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  757fcc:	8d 54 24 50          	lea    edx,[esp+0x50]
  757fd0:	52                   	push   edx
  757fd1:	8d 84 24 dc 00 00 00 	lea    eax,[esp+0xdc]
  757fd8:	50                   	push   eax
  757fd9:	56                   	push   esi
  757fda:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  757fe0:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  757fe6:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  757fea:	e8 31 49 38 00       	call   0xadc920
  757fef:	0f 28 84 24 e4 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xe4]
  757ff7:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  757ffb:	0f 29 84 24 a4 00 00 00 	movaps XMMWORD PTR [esp+0xa4],xmm0
  758003:	0f 29 84 24 b4 00 00 00 	movaps XMMWORD PTR [esp+0xb4],xmm0
  75800b:	f3 0f 10 84 24 a4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa4]
  758014:	8d 94 24 d4 00 00 00 	lea    edx,[esp+0xd4]
  75801b:	52                   	push   edx
  75801c:	8d 45 1c             	lea    eax,[ebp+0x1c]
  75801f:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  758025:	f3 0f 10 84 24 c0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xc0]
  75802e:	50                   	push   eax
  75802f:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  758035:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  758039:	e8 22 43 01 00       	call   0x76c360
  75803e:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  758046:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  75804a:	51                   	push   ecx
  75804b:	8d 94 24 e0 00 00 00 	lea    edx,[esp+0xe0]
  758052:	52                   	push   edx
  758053:	56                   	push   esi
  758054:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  75805a:	f3 0f 11 84 24 80 00 00 00 	movss  DWORD PTR [esp+0x80],xmm0
  758063:	89 bc 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edi
  75806a:	e8 b1 48 38 00       	call   0xadc920
  75806f:	0f 28 84 24 e8 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xe8]
  758077:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  75807a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  75807d:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  758084:	83 c4 28             	add    esp,0x28
  758087:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  75808b:	51                   	push   ecx
  75808c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  758090:	0f 29 84 24 a4 00 00 00 	movaps XMMWORD PTR [esp+0xa4],xmm0
  758098:	53                   	push   ebx
  758099:	0f 29 84 24 98 00 00 00 	movaps XMMWORD PTR [esp+0x98],xmm0
  7580a1:	f3 0f 10 84 24 a8 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa8]
  7580aa:	52                   	push   edx
  7580ab:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  7580b1:	f3 0f 10 84 24 a4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xa4]
  7580ba:	56                   	push   esi
  7580bb:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  7580c1:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  7580c5:	89 7c 24 40          	mov    DWORD PTR [esp+0x40],edi
  7580c9:	89 7c 24 44          	mov    DWORD PTR [esp+0x44],edi
  7580cd:	89 7c 24 48          	mov    DWORD PTR [esp+0x48],edi
  7580d1:	c7 44 24 4c e8 55 00 01 	mov    DWORD PTR [esp+0x4c],0x10055e8
  7580d9:	e8 a2 7e ed ff       	call   0x62ff80
  7580de:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  7580e1:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
  7580e4:	8d 94 24 bc 00 00 00 	lea    edx,[esp+0xbc]
  7580eb:	52                   	push   edx
  7580ec:	8d 54 24 28          	lea    edx,[esp+0x28]
  7580f0:	52                   	push   edx
  7580f1:	8d 54 24 20          	lea    edx,[esp+0x20]
  7580f5:	52                   	push   edx
  7580f6:	51                   	push   ecx
  7580f7:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  7580fb:	50                   	push   eax
  7580fc:	8d 44 24 44          	lea    eax,[esp+0x44]
  758100:	50                   	push   eax
  758101:	e8 aa 1b 0d 00       	call   0x829cb0
  758106:	84 c0                	test   al,al
  758108:	0f 85 13 01 00 00    	jne    0x758221
  75810e:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  758111:	d9 45 28             	fld    DWORD PTR [ebp+0x28]
  758114:	8b 55 38             	mov    edx,DWORD PTR [ebp+0x38]
  758117:	6a ff                	push   0xffffffff
  758119:	57                   	push   edi
  75811a:	89 8c 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],ecx
  758121:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  758125:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  758129:	51                   	push   ecx
  75812a:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  75812d:	52                   	push   edx
  75812e:	0f b6 55 30          	movzx  edx,BYTE PTR [ebp+0x30]
  758132:	51                   	push   ecx
  758133:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  758136:	81 e2 01 ff ff ff    	and    edx,0xffffff01
  75813c:	52                   	push   edx
  75813d:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  758141:	57                   	push   edi
  758142:	51                   	push   ecx
  758143:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  75814a:	66 89 bc 24 a8 00 00 00 	mov    WORD PTR [esp+0xa8],di
  758152:	d9 1c 24             	fstp   DWORD PTR [esp]
  758155:	51                   	push   ecx
  758156:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  75815a:	52                   	push   edx
  75815b:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  75815f:	83 ec 08             	sub    esp,0x8
  758162:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  758169:	66 89 bc 24 ba 00 00 00 	mov    WORD PTR [esp+0xba],di
  758171:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  758175:	66 89 bc 24 bc 00 00 00 	mov    WORD PTR [esp+0xbc],di
  75817d:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  758181:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  758188:	d9 1c 24             	fstp   DWORD PTR [esp]
  75818b:	51                   	push   ecx
  75818c:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  758190:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  758194:	52                   	push   edx
  758195:	83 ec 08             	sub    esp,0x8
  758198:	89 9c 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],ebx
  75819f:	89 bc 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],edi
  7581a6:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7581aa:	66 89 bc 24 b0 00 00 00 	mov    WORD PTR [esp+0xb0],di
  7581b2:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  7581b6:	66 89 bc 24 b2 00 00 00 	mov    WORD PTR [esp+0xb2],di
  7581be:	d9 1c 24             	fstp   DWORD PTR [esp]
  7581c1:	53                   	push   ebx
  7581c2:	50                   	push   eax
  7581c3:	56                   	push   esi
  7581c4:	66 89 bc 24 c0 00 00 00 	mov    WORD PTR [esp+0xc0],di
  7581cc:	89 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],eax
  7581d3:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
  7581da:	89 bc 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],edi
  7581e1:	89 7c 24 5c          	mov    DWORD PTR [esp+0x5c],edi
  7581e5:	e8 16 00 ee ff       	call   0x638200
  7581ea:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7581ee:	3b cf                	cmp    ecx,edi
  7581f0:	74 2f                	je     0x758221
  7581f2:	8b 01                	mov    eax,DWORD PTR [ecx]
  7581f4:	8b 10                	mov    edx,DWORD PTR [eax]
  7581f6:	ff d2                	call   edx
  7581f8:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  7581fc:	8b 01                	mov    eax,DWORD PTR [ecx]
  7581fe:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  758202:	8b 80 c8 00 00 00    	mov    eax,DWORD PTR [eax+0xc8]
  758208:	6a 28                	push   0x28
  75820a:	52                   	push   edx
  75820b:	ff d0                	call   eax
  75820d:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  758211:	8b f0                	mov    esi,eax
  758213:	e8 38 ec ec ff       	call   0x626e50
  758218:	8b c6                	mov    eax,esi
  75821a:	5f                   	pop    edi
  75821b:	5e                   	pop    esi
  75821c:	5b                   	pop    ebx
  75821d:	8b e5                	mov    esp,ebp
  75821f:	5d                   	pop    ebp
  758220:	c3                   	ret
  758221:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  758225:	e8 26 ec ec ff       	call   0x626e50
  75822a:	5f                   	pop    edi
  75822b:	5e                   	pop    esi
  75822c:	33 c0                	xor    eax,eax
  75822e:	5b                   	pop    ebx
  75822f:	8b e5                	mov    esp,ebp
  758231:	5d                   	pop    ebp
  758232:	c3                   	ret

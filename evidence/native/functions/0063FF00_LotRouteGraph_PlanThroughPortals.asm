# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0063ff00,0x0064161d); analyst name LotRouteGraph_PlanThroughPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0063ff00 <.text+0x23ef00>:
  63ff00:	81 ec c0 01 00 00    	sub    esp,0x1c0
  63ff06:	55                   	push   ebp
  63ff07:	8b e9                	mov    ebp,ecx
  63ff09:	80 bd 0c 01 00 00 00 	cmp    BYTE PTR [ebp+0x10c],0x0
  63ff10:	75 0f                	jne    0x63ff21
  63ff12:	b8 01 00 00 00       	mov    eax,0x1
  63ff17:	5d                   	pop    ebp
  63ff18:	81 c4 c0 01 00 00    	add    esp,0x1c0
  63ff1e:	c2 34 00             	ret    0x34
  63ff21:	8b 84 24 f8 01 00 00 	mov    eax,DWORD PTR [esp+0x1f8]
  63ff28:	85 c0                	test   eax,eax
  63ff2a:	74 03                	je     0x63ff2f
  63ff2c:	c6 00 00             	mov    BYTE PTR [eax],0x0
  63ff2f:	83 bc 24 dc 01 00 00 00 	cmp    DWORD PTR [esp+0x1dc],0x0
  63ff37:	75 0a                	jne    0x63ff43
  63ff39:	83 bc 24 f4 01 00 00 00 	cmp    DWORD PTR [esp+0x1f4],0x0
  63ff41:	74 cf                	je     0x63ff12
  63ff43:	8b 84 24 d8 01 00 00 	mov    eax,DWORD PTR [esp+0x1d8]
  63ff4a:	8b 08                	mov    ecx,DWORD PTR [eax]
  63ff4c:	3b 48 04             	cmp    ecx,DWORD PTR [eax+0x4]
  63ff4f:	75 0f                	jne    0x63ff60
  63ff51:	b8 03 00 00 00       	mov    eax,0x3
  63ff56:	5d                   	pop    ebp
  63ff57:	81 c4 c0 01 00 00    	add    esp,0x1c0
  63ff5d:	c2 34 00             	ret    0x34
  63ff60:	8b 84 24 cc 01 00 00 	mov    eax,DWORD PTR [esp+0x1cc]
  63ff67:	8b 10                	mov    edx,DWORD PTR [eax]
  63ff69:	3b 50 04             	cmp    edx,DWORD PTR [eax+0x4]
  63ff6c:	75 0f                	jne    0x63ff7d
  63ff6e:	b8 02 00 00 00       	mov    eax,0x2
  63ff73:	5d                   	pop    ebp
  63ff74:	81 c4 c0 01 00 00    	add    esp,0x1c0
  63ff7a:	c2 34 00             	ret    0x34
  63ff7d:	83 bd bc 00 00 00 00 	cmp    DWORD PTR [ebp+0xbc],0x0
  63ff84:	56                   	push   esi
  63ff85:	0f 84 82 16 00 00    	je     0x64160d
  63ff8b:	8b b4 24 f0 01 00 00 	mov    esi,DWORD PTR [esp+0x1f0]
  63ff92:	85 f6                	test   esi,esi
  63ff94:	0f 84 73 16 00 00    	je     0x64160d
  63ff9a:	53                   	push   ebx
  63ff9b:	8b 5e 48             	mov    ebx,DWORD PTR [esi+0x48]
  63ff9e:	57                   	push   edi
  63ff9f:	8b 7e 4c             	mov    edi,DWORD PTR [esi+0x4c]
  63ffa2:	57                   	push   edi
  63ffa3:	53                   	push   ebx
  63ffa4:	8b cd                	mov    ecx,ebp
  63ffa6:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  63ffaa:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  63ffae:	e8 ad 93 fe ff       	call   0x629360
  63ffb3:	84 c0                	test   al,al
  63ffb5:	75 12                	jne    0x63ffc9
  63ffb7:	5f                   	pop    edi
  63ffb8:	5b                   	pop    ebx
  63ffb9:	5e                   	pop    esi
  63ffba:	b8 01 00 00 00       	mov    eax,0x1
  63ffbf:	5d                   	pop    ebp
  63ffc0:	81 c4 c0 01 00 00    	add    esp,0x1c0
  63ffc6:	c2 34 00             	ret    0x34
  63ffc9:	8d 44 24 24          	lea    eax,[esp+0x24]
  63ffcd:	50                   	push   eax
  63ffce:	8d 4d 48             	lea    ecx,[ebp+0x48]
  63ffd1:	e8 fa f2 fe ff       	call   0x62f2d0
  63ffd6:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  63ffdd:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  63ffe1:	c7 84 24 70 01 00 00 d0 cf fe 00 	mov    DWORD PTR [esp+0x170],0xfecfd0
  63ffec:	e8 2f a0 fe ff       	call   0x62a020
  63fff1:	83 bc 24 00 02 00 00 00 	cmp    DWORD PTR [esp+0x200],0x0
  63fff9:	8b 8c 24 d4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1d4]
  640000:	8b 84 24 f4 01 00 00 	mov    eax,DWORD PTR [esp+0x1f4]
  640007:	8d 94 24 70 01 00 00 	lea    edx,[esp+0x170]
  64000e:	89 8c 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],ecx
  640015:	89 ac 24 14 01 00 00 	mov    DWORD PTR [esp+0x114],ebp
  64001c:	c7 84 24 1c 01 00 00 00 00 00 00 	mov    DWORD PTR [esp+0x11c],0x0
  640027:	89 b4 24 24 01 00 00 	mov    DWORD PTR [esp+0x124],esi
  64002e:	89 94 24 18 01 00 00 	mov    DWORD PTR [esp+0x118],edx
  640035:	74 03                	je     0x64003a
  640037:	83 c8 0f             	or     eax,0xf
  64003a:	8b 8c 24 d8 01 00 00 	mov    ecx,DWORD PTR [esp+0x1d8]
  640041:	8b 11                	mov    edx,DWORD PTR [ecx]
  640043:	0d 00 00 01 00       	or     eax,0x10000
  640048:	89 84 24 20 01 00 00 	mov    DWORD PTR [esp+0x120],eax
  64004f:	8d 44 24 48          	lea    eax,[esp+0x48]
  640053:	50                   	push   eax
  640054:	52                   	push   edx
  640055:	57                   	push   edi
  640056:	53                   	push   ebx
  640057:	8b cd                	mov    ecx,ebp
  640059:	e8 02 f5 fe ff       	call   0x62f560
  64005e:	8b 8c 24 dc 01 00 00 	mov    ecx,DWORD PTR [esp+0x1dc]
  640065:	8d 84 24 c4 00 00 00 	lea    eax,[esp+0xc4]
  64006c:	50                   	push   eax
  64006d:	51                   	push   ecx
  64006e:	57                   	push   edi
  64006f:	53                   	push   ebx
  640070:	8b cd                	mov    ecx,ebp
  640072:	e8 e9 f4 fe ff       	call   0x62f560
  640077:	8b 94 24 e4 01 00 00 	mov    edx,DWORD PTR [esp+0x1e4]
  64007e:	52                   	push   edx
  64007f:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  640083:	e8 18 87 fe ff       	call   0x6287a0
  640088:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  64008c:	8b 74 24 54          	mov    esi,DWORD PTR [esp+0x54]
  640090:	3b f0                	cmp    esi,eax
  640092:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  640096:	74 22                	je     0x6400ba
  640098:	56                   	push   esi
  640099:	56                   	push   esi
  64009a:	57                   	push   edi
  64009b:	53                   	push   ebx
  64009c:	8b cd                	mov    ecx,ebp
  64009e:	e8 bd f4 fe ff       	call   0x62f560
  6400a3:	8d 46 0c             	lea    eax,[esi+0xc]
  6400a6:	50                   	push   eax
  6400a7:	50                   	push   eax
  6400a8:	57                   	push   edi
  6400a9:	53                   	push   ebx
  6400aa:	8b cd                	mov    ecx,ebp
  6400ac:	e8 6f f5 fe ff       	call   0x62f620
  6400b1:	83 c6 1c             	add    esi,0x1c
  6400b4:	3b 74 24 18          	cmp    esi,DWORD PTR [esp+0x18]
  6400b8:	75 de                	jne    0x640098
  6400ba:	8b b4 24 f8 01 00 00 	mov    esi,DWORD PTR [esp+0x1f8]
  6400c1:	8b ce                	mov    ecx,esi
  6400c3:	e8 c8 19 47 00       	call   0xab1a90
  6400c8:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  6400cc:	80 be b0 04 00 00 00 	cmp    BYTE PTR [esi+0x4b0],0x0
  6400d3:	0f 84 d7 00 00 00    	je     0x6401b0
  6400d9:	8b ce                	mov    ecx,esi
  6400db:	e8 b0 04 47 00       	call   0xab0590
  6400e0:	39 44 24 50          	cmp    DWORD PTR [esp+0x50],eax
  6400e4:	75 4e                	jne    0x640134
  6400e6:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  6400ec:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  6400f0:	8d 8c 24 74 01 00 00 	lea    ecx,[esp+0x174]
  6400f7:	f3 0f 11 84 24 74 01 00 00 	movss  DWORD PTR [esp+0x174],xmm0
  640100:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  640106:	51                   	push   ecx
  640107:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  64010d:	f3 0f 11 84 24 7c 01 00 00 	movss  DWORD PTR [esp+0x17c],xmm0
  640116:	89 84 24 80 01 00 00 	mov    DWORD PTR [esp+0x180],eax
  64011d:	e8 6e c5 44 00       	call   0xa8c690
  640122:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  640126:	df f1                	fcomip st,st(1)
  640128:	dd d8                	fstp   st(0)
  64012a:	c7 44 24 34 01 00 00 00 	mov    DWORD PTR [esp+0x34],0x1
  640132:	73 08                	jae    0x64013c
  640134:	c7 44 24 34 00 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
  64013c:	8b ce                	mov    ecx,esi
  64013e:	e8 4d 04 47 00       	call   0xab0590
  640143:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
  64014a:	3b c8                	cmp    ecx,eax
  64014c:	75 4f                	jne    0x64019d
  64014e:	f3 0f 10 84 24 c4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xc4]
  640157:	8d 94 24 84 00 00 00 	lea    edx,[esp+0x84]
  64015e:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  640167:	f3 0f 10 84 24 c8 00 00 00 	movss  xmm0,DWORD PTR [esp+0xc8]
  640170:	89 8c 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],ecx
  640177:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  64017d:	52                   	push   edx
  64017e:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  640187:	e8 04 c5 44 00       	call   0xa8c690
  64018c:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  640190:	df f1                	fcomip st,st(1)
  640192:	dd d8                	fstp   st(0)
  640194:	72 07                	jb     0x64019d
  640196:	b8 01 00 00 00       	mov    eax,0x1
  64019b:	eb 02                	jmp    0x64019f
  64019d:	33 c0                	xor    eax,eax
  64019f:	39 44 24 34          	cmp    DWORD PTR [esp+0x34],eax
  6401a3:	74 0b                	je     0x6401b0
  6401a5:	81 8c 24 20 01 00 00 00 00 00 02 	or     DWORD PTR [esp+0x120],0x2000000
  6401b0:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  6401b4:	8b 74 24 54          	mov    esi,DWORD PTR [esp+0x54]
  6401b8:	2b ce                	sub    ecx,esi
  6401ba:	b8 93 24 49 92       	mov    eax,0x92492493
  6401bf:	f7 e9                	imul   ecx
  6401c1:	03 d1                	add    edx,ecx
  6401c3:	c1 fa 04             	sar    edx,0x4
  6401c6:	8b c2                	mov    eax,edx
  6401c8:	c1 e8 1f             	shr    eax,0x1f
  6401cb:	03 c2                	add    eax,edx
  6401cd:	83 f8 01             	cmp    eax,0x1
  6401d0:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  6401d5:	0f 85 c2 00 00 00    	jne    0x64029d
  6401db:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  6401df:	f3 0f 10 4e 0c       	movss  xmm1,DWORD PTR [esi+0xc]
  6401e4:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6401ea:	f3 0f 10 46 04       	movss  xmm0,DWORD PTR [esi+0x4]
  6401ef:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6401f5:	0f 57 c0             	xorps  xmm0,xmm0
  6401f8:	0f 2e c8             	ucomiss xmm1,xmm0
  6401fb:	9f                   	lahf
  6401fc:	f6 c4 44             	test   ah,0x44
  6401ff:	7a 12                	jp     0x640213
  640201:	f3 0f 10 4e 10       	movss  xmm1,DWORD PTR [esi+0x10]
  640206:	0f 2e c8             	ucomiss xmm1,xmm0
  640209:	9f                   	lahf
  64020a:	f6 c4 44             	test   ah,0x44
  64020d:	0f 8b 8a 00 00 00    	jnp    0x64029d
  640213:	d9 46 0c             	fld    DWORD PTR [esi+0xc]
  640216:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  640219:	d9 05 f8 92 fe 00    	fld    DWORD PTR ds:0xfe92f8
  64021f:	83 ec 14             	sub    esp,0x14
  640222:	dc c9                	fmul   st(1),st
  640224:	8d 8c 24 e4 00 00 00 	lea    ecx,[esp+0xe4]
  64022b:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  64022f:	d9 c0                	fld    st(0)
  640231:	de e3                	fsubrp st(3),st
  640233:	d9 ca                	fxch   st(2)
  640235:	d9 54 24 2c          	fst    DWORD PTR [esp+0x2c]
  640239:	d9 46 10             	fld    DWORD PTR [esi+0x10]
  64023c:	de ca                	fmulp  st(2),st
  64023e:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  640242:	d9 c0                	fld    st(0)
  640244:	de e3                	fsubrp st(3),st
  640246:	d9 ca                	fxch   st(2)
  640248:	d9 54 24 28          	fst    DWORD PTR [esp+0x28]
  64024c:	d9 05 b4 35 fb 00    	fld    DWORD PTR ds:0xfb35b4
  640252:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  640256:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  64025a:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  64025e:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  640262:	d9 1c 24             	fstp   DWORD PTR [esp]
  640265:	51                   	push   ecx
  640266:	52                   	push   edx
  640267:	57                   	push   edi
  640268:	53                   	push   ebx
  640269:	8b cd                	mov    ecx,ebp
  64026b:	e8 c0 00 ff ff       	call   0x630330
  640270:	8b c8                	mov    ecx,eax
  640272:	e8 09 73 02 00       	call   0x667580
  640277:	84 c0                	test   al,al
  640279:	75 22                	jne    0x64029d
  64027b:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  64027f:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  640285:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  640289:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  64028d:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  640293:	f3 0f 11 41 04       	movss  DWORD PTR [ecx+0x4],xmm0
  640298:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  64029d:	8b 8c 24 d4 01 00 00 	mov    ecx,DWORD PTR [esp+0x1d4]
  6402a4:	d9 05 ec e6 06 01    	fld    DWORD PTR ds:0x106e6ec
  6402aa:	8b 94 24 d8 01 00 00 	mov    edx,DWORD PTR [esp+0x1d8]
  6402b1:	8b 02                	mov    eax,DWORD PTR [edx]
  6402b3:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  6402b6:	8b b4 24 f8 01 00 00 	mov    esi,DWORD PTR [esp+0x1f8]
  6402bd:	51                   	push   ecx
  6402be:	51                   	push   ecx
  6402bf:	d9 1c 24             	fstp   DWORD PTR [esp]
  6402c2:	52                   	push   edx
  6402c3:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  6402c6:	83 ec 08             	sub    esp,0x8
  6402c9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6402cd:	8b cd                	mov    ecx,ebp
  6402cf:	d9 00                	fld    DWORD PTR [eax]
  6402d1:	d9 1c 24             	fstp   DWORD PTR [esp]
  6402d4:	56                   	push   esi
  6402d5:	e8 56 54 ff ff       	call   0x635730
  6402da:	84 c0                	test   al,al
  6402dc:	88 44 24 33          	mov    BYTE PTR [esp+0x33],al
  6402e0:	75 5d                	jne    0x64033f
  6402e2:	8b ce                	mov    ecx,esi
  6402e4:	e8 a7 02 47 00       	call   0xab0590
  6402e9:	39 44 24 50          	cmp    DWORD PTR [esp+0x50],eax
  6402ed:	7e 50                	jle    0x64033f
  6402ef:	8b b6 90 02 00 00    	mov    esi,DWORD PTR [esi+0x290]
  6402f5:	85 f6                	test   esi,esi
  6402f7:	74 46                	je     0x64033f
  6402f9:	83 7c 24 50 00       	cmp    DWORD PTR [esp+0x50],0x0
  6402fe:	7e 3f                	jle    0x64033f
  640300:	f3 0f 2c 44 24 48    	cvttss2si eax,DWORD PTR [esp+0x48]
  640306:	6a 01                	push   0x1
  640308:	88 44 24 20          	mov    BYTE PTR [esp+0x20],al
  64030c:	f3 0f 2c 44 24 50    	cvttss2si eax,DWORD PTR [esp+0x50]
  640312:	6a 0f                	push   0xf
  640314:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  640318:	88 44 24 25          	mov    BYTE PTR [esp+0x25],al
  64031c:	8a 44 24 58          	mov    al,BYTE PTR [esp+0x58]
  640320:	51                   	push   ecx
  640321:	8b ce                	mov    ecx,esi
  640323:	88 44 24 2a          	mov    BYTE PTR [esp+0x2a],al
  640327:	e8 84 dd 44 00       	call   0xa8e0b0
  64032c:	84 c0                	test   al,al
  64032e:	75 0f                	jne    0x64033f
  640330:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  640334:	83 e8 01             	sub    eax,0x1
  640337:	85 c0                	test   eax,eax
  640339:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  64033d:	7f c1                	jg     0x640300
  64033f:	8b b4 24 f8 01 00 00 	mov    esi,DWORD PTR [esp+0x1f8]
  640346:	8d 54 24 48          	lea    edx,[esp+0x48]
  64034a:	52                   	push   edx
  64034b:	56                   	push   esi
  64034c:	8b cd                	mov    ecx,ebp
  64034e:	e8 2d 4c fe ff       	call   0x624f80
  640353:	0f b7 f8             	movzx  edi,ax
  640356:	8d 84 24 c4 00 00 00 	lea    eax,[esp+0xc4]
  64035d:	50                   	push   eax
  64035e:	56                   	push   esi
  64035f:	8b cd                	mov    ecx,ebp
  640361:	e8 1a 4c fe ff       	call   0x624f80
  640366:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  64036a:	57                   	push   edi
  64036b:	0f b7 f0             	movzx  esi,ax
  64036e:	51                   	push   ecx
  64036f:	53                   	push   ebx
  640370:	8b cd                	mov    ecx,ebp
  640372:	89 74 24 38          	mov    DWORD PTR [esp+0x38],esi
  640376:	e8 f5 f8 ff ff       	call   0x63fc70
  64037b:	66 3b f7             	cmp    si,di
  64037e:	74 0e                	je     0x64038e
  640380:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  640384:	56                   	push   esi
  640385:	52                   	push   edx
  640386:	53                   	push   ebx
  640387:	8b cd                	mov    ecx,ebp
  640389:	e8 e2 f8 ff ff       	call   0x63fc70
  64038e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  640392:	50                   	push   eax
  640393:	53                   	push   ebx
  640394:	55                   	push   ebp
  640395:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  640399:	e8 72 20 ff ff       	call   0x632410
  64039e:	6a 00                	push   0x0
  6403a0:	6a 00                	push   0x0
  6403a2:	6a 00                	push   0x0
  6403a4:	6a 00                	push   0x0
  6403a6:	68 a0 d8 fe 00       	push   0xfed8a0
  6403ab:	6a 18                	push   0x18
  6403ad:	e8 4e 41 ea ff       	call   0x4e4500
  6403b2:	83 c4 18             	add    esp,0x18
  6403b5:	85 c0                	test   eax,eax
  6403b7:	0f 84 d8 01 00 00    	je     0x640595
  6403bd:	8b c8                	mov    ecx,eax
  6403bf:	e8 5c ea 00 00       	call   0x64ee20
  6403c4:	8b d8                	mov    ebx,eax
  6403c6:	85 db                	test   ebx,ebx
  6403c8:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  6403cc:	74 08                	je     0x6403d6
  6403ce:	8b 13                	mov    edx,DWORD PTR [ebx]
  6403d0:	8b 02                	mov    eax,DWORD PTR [edx]
  6403d2:	8b cb                	mov    ecx,ebx
  6403d4:	ff d0                	call   eax
  6403d6:	66 3b 7c 24 2c       	cmp    di,WORD PTR [esp+0x2c]
  6403db:	0f 85 95 02 00 00    	jne    0x640676
  6403e1:	d9 84 24 e0 01 00 00 	fld    DWORD PTR [esp+0x1e0]
  6403e8:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  6403ec:	6a 00                	push   0x0
  6403ee:	6a 00                	push   0x0
  6403f0:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  6403f4:	51                   	push   ecx
  6403f5:	53                   	push   ebx
  6403f6:	8d 54 24 64          	lea    edx,[esp+0x64]
  6403fa:	52                   	push   edx
  6403fb:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  6403ff:	51                   	push   ecx
  640400:	d9 1c 24             	fstp   DWORD PTR [esp]
  640403:	8d 84 24 dc 00 00 00 	lea    eax,[esp+0xdc]
  64040a:	50                   	push   eax
  64040b:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  64040f:	51                   	push   ecx
  640410:	52                   	push   edx
  640411:	56                   	push   esi
  640412:	8d 84 24 f8 00 00 00 	lea    eax,[esp+0xf8]
  640419:	50                   	push   eax
  64041a:	8b cd                	mov    ecx,ebp
  64041c:	e8 3f 32 ff ff       	call   0x633660
  640421:	85 c0                	test   eax,eax
  640423:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  640427:	0f 85 e9 01 00 00    	jne    0x640616
  64042d:	38 44 24 13          	cmp    BYTE PTR [esp+0x13],al
  640431:	0f 84 91 00 00 00    	je     0x6404c8
  640437:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  64043a:	2b 4b 08             	sub    ecx,DWORD PTR [ebx+0x8]
  64043d:	f7 c1 c0 ff ff ff    	test   ecx,0xffffffc0
  640443:	0f 84 7f 00 00 00    	je     0x6404c8
  640449:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  64044c:	2b 53 08             	sub    edx,DWORD PTR [ebx+0x8]
  64044f:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  640452:	f3 0f 10 05 f8 92 fe 00 	movss  xmm0,DWORD PTR ds:0xfe92f8
  64045a:	c1 fa 06             	sar    edx,0x6
  64045d:	c1 e2 06             	shl    edx,0x6
  640460:	8d 44 02 c0          	lea    eax,[edx+eax*1-0x40]
  640464:	8b f0                	mov    esi,eax
  640466:	b9 10 00 00 00       	mov    ecx,0x10
  64046b:	8d bc 24 30 01 00 00 	lea    edi,[esp+0x130]
  640472:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640474:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
  64047b:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  64047f:	f3 0f 10 48 0c       	movss  xmm1,DWORD PTR [eax+0xc]
  640484:	f3 0f 59 c8          	mulss  xmm1,xmm0
  640488:	f3 0f 58 8c 24 30 01 00 00 	addss  xmm1,DWORD PTR [esp+0x130]
  640491:	f3 0f 11 8c 24 30 01 00 00 	movss  DWORD PTR [esp+0x130],xmm1
  64049a:	f3 0f 10 48 10       	movss  xmm1,DWORD PTR [eax+0x10]
  64049f:	8d 8c 24 30 01 00 00 	lea    ecx,[esp+0x130]
  6404a6:	f3 0f 59 c8          	mulss  xmm1,xmm0
  6404aa:	f3 0f 58 8c 24 38 01 00 00 	addss  xmm1,DWORD PTR [esp+0x138]
  6404b3:	51                   	push   ecx
  6404b4:	8b cb                	mov    ecx,ebx
  6404b6:	f3 0f 11 8c 24 3c 01 00 00 	movss  DWORD PTR [esp+0x13c],xmm1
  6404bf:	e8 9c a5 fe ff       	call   0x62aa60
  6404c4:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  6404c8:	80 3d 4c 92 15 01 00 	cmp    BYTE PTR ds:0x115924c,0x0
  6404cf:	74 4b                	je     0x64051c
  6404d1:	8b 94 24 d8 01 00 00 	mov    edx,DWORD PTR [esp+0x1d8]
  6404d8:	8b 02                	mov    eax,DWORD PTR [edx]
  6404da:	50                   	push   eax
  6404db:	8d 8c 24 34 01 00 00 	lea    ecx,[esp+0x134]
  6404e2:	e8 79 57 fe ff       	call   0x625c60
  6404e7:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  6404eb:	8d 8c 24 30 01 00 00 	lea    ecx,[esp+0x130]
  6404f2:	51                   	push   ecx
  6404f3:	8b d1                	mov    edx,ecx
  6404f5:	52                   	push   edx
  6404f6:	50                   	push   eax
  6404f7:	56                   	push   esi
  6404f8:	8b cd                	mov    ecx,ebp
  6404fa:	e8 61 f0 fe ff       	call   0x62f560
  6404ff:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  640503:	51                   	push   ecx
  640504:	8d 94 24 34 01 00 00 	lea    edx,[esp+0x134]
  64050b:	52                   	push   edx
  64050c:	53                   	push   ebx
  64050d:	8d 84 24 dc 00 00 00 	lea    eax,[esp+0xdc]
  640514:	50                   	push   eax
  640515:	8b cd                	mov    ecx,ebp
  640517:	e8 54 24 ff ff       	call   0x632970
  64051c:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  640520:	53                   	push   ebx
  640521:	51                   	push   ecx
  640522:	56                   	push   esi
  640523:	8b cd                	mov    ecx,ebp
  640525:	e8 36 f4 fe ff       	call   0x62f960
  64052a:	8b 84 24 e8 01 00 00 	mov    eax,DWORD PTR [esp+0x1e8]
  640531:	85 c0                	test   eax,eax
  640533:	74 0a                	je     0x64053f
  640535:	89 18                	mov    DWORD PTR [eax],ebx
  640537:	8b 13                	mov    edx,DWORD PTR [ebx]
  640539:	8b 02                	mov    eax,DWORD PTR [edx]
  64053b:	8b cb                	mov    ecx,ebx
  64053d:	ff d0                	call   eax
  64053f:	8b 84 24 ec 01 00 00 	mov    eax,DWORD PTR [esp+0x1ec]
  640546:	85 c0                	test   eax,eax
  640548:	74 06                	je     0x640550
  64054a:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  640550:	8b 84 24 f0 01 00 00 	mov    eax,DWORD PTR [esp+0x1f0]
  640557:	85 c0                	test   eax,eax
  640559:	74 06                	je     0x640561
  64055b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  64055f:	89 08                	mov    DWORD PTR [eax],ecx
  640561:	8b bc 24 00 02 00 00 	mov    edi,DWORD PTR [esp+0x200]
  640568:	85 ff                	test   edi,edi
  64056a:	74 5e                	je     0x6405ca
  64056c:	83 3f 00             	cmp    DWORD PTR [edi],0x0
  64056f:	75 37                	jne    0x6405a8
  640571:	6a 00                	push   0x0
  640573:	6a 00                	push   0x0
  640575:	6a 00                	push   0x0
  640577:	6a 00                	push   0x0
  640579:	68 34 dd fe 00       	push   0xfedd34
  64057e:	6a 18                	push   0x18
  640580:	e8 7b 3f ea ff       	call   0x4e4500
  640585:	83 c4 18             	add    esp,0x18
  640588:	85 c0                	test   eax,eax
  64058a:	74 14                	je     0x6405a0
  64058c:	8b c8                	mov    ecx,eax
  64058e:	e8 ad e8 00 00       	call   0x64ee40
  640593:	eb 0d                	jmp    0x6405a2
  640595:	33 db                	xor    ebx,ebx
  640597:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  64059b:	e9 36 fe ff ff       	jmp    0x6403d6
  6405a0:	33 c0                	xor    eax,eax
  6405a2:	89 07                	mov    DWORD PTR [edi],eax
  6405a4:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  6405a8:	8b 17                	mov    edx,DWORD PTR [edi]
  6405aa:	52                   	push   edx
  6405ab:	8d 84 24 d4 00 00 00 	lea    eax,[esp+0xd4]
  6405b2:	50                   	push   eax
  6405b3:	8b cd                	mov    ecx,ebp
  6405b5:	e8 a6 74 fe ff       	call   0x627a60
  6405ba:	8b 0f                	mov    ecx,DWORD PTR [edi]
  6405bc:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  6405c0:	51                   	push   ecx
  6405c1:	52                   	push   edx
  6405c2:	56                   	push   esi
  6405c3:	8b cd                	mov    ecx,ebp
  6405c5:	e8 96 f5 fe ff       	call   0x62fb60
  6405ca:	85 db                	test   ebx,ebx
  6405cc:	74 09                	je     0x6405d7
  6405ce:	8b 03                	mov    eax,DWORD PTR [ebx]
  6405d0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6405d3:	8b cb                	mov    ecx,ebx
  6405d5:	ff d2                	call   edx
  6405d7:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  6405db:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  6405df:	50                   	push   eax
  6405e0:	51                   	push   ecx
  6405e1:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  6405e5:	e8 e6 c7 ff ff       	call   0x63cdd0
  6405ea:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  6405ee:	85 c0                	test   eax,eax
  6405f0:	74 09                	je     0x6405fb
  6405f2:	50                   	push   eax
  6405f3:	e8 e8 3e ea ff       	call   0x4e44e0
  6405f8:	83 c4 04             	add    esp,0x4
  6405fb:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  640602:	e8 29 8d fe ff       	call   0x629330
  640607:	5f                   	pop    edi
  640608:	5b                   	pop    ebx
  640609:	5e                   	pop    esi
  64060a:	33 c0                	xor    eax,eax
  64060c:	5d                   	pop    ebp
  64060d:	81 c4 c0 01 00 00    	add    esp,0x1c0
  640613:	c2 34 00             	ret    0x34
  640616:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  64061a:	57                   	push   edi
  64061b:	56                   	push   esi
  64061c:	8b cd                	mov    ecx,ebp
  64061e:	e8 ad 57 fe ff       	call   0x625dd0
  640623:	83 f8 02             	cmp    eax,0x2
  640626:	73 52                	jae    0x64067a
  640628:	85 db                	test   ebx,ebx
  64062a:	74 09                	je     0x640635
  64062c:	8b 13                	mov    edx,DWORD PTR [ebx]
  64062e:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  640631:	8b cb                	mov    ecx,ebx
  640633:	ff d0                	call   eax
  640635:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  640639:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  64063d:	51                   	push   ecx
  64063e:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  640642:	52                   	push   edx
  640643:	e8 88 c7 ff ff       	call   0x63cdd0
  640648:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  64064c:	85 c0                	test   eax,eax
  64064e:	74 09                	je     0x640659
  640650:	50                   	push   eax
  640651:	e8 8a 3e ea ff       	call   0x4e44e0
  640656:	83 c4 04             	add    esp,0x4
  640659:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  640660:	e8 cb 8c fe ff       	call   0x629330
  640665:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  640669:	5f                   	pop    edi
  64066a:	5b                   	pop    ebx
  64066b:	5e                   	pop    esi
  64066c:	5d                   	pop    ebp
  64066d:	81 c4 c0 01 00 00    	add    esp,0x1c0
  640673:	c2 34 00             	ret    0x34
  640676:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  64067a:	57                   	push   edi
  64067b:	56                   	push   esi
  64067c:	8b cd                	mov    ecx,ebp
  64067e:	e8 4d 57 fe ff       	call   0x625dd0
  640683:	66 3b 7c 24 2c       	cmp    di,WORD PTR [esp+0x2c]
  640688:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  64068c:	75 02                	jne    0x640690
  64068e:	eb 0d                	jmp    0x64069d
  640690:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  640694:	50                   	push   eax
  640695:	56                   	push   esi
  640696:	8b cd                	mov    ecx,ebp
  640698:	e8 33 57 fe ff       	call   0x625dd0
  64069d:	80 7c 24 33 00       	cmp    BYTE PTR [esp+0x33],0x0
  6406a2:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  6406a6:	74 1a                	je     0x6406c2
  6406a8:	83 7c 24 14 01       	cmp    DWORD PTR [esp+0x14],0x1
  6406ad:	72 05                	jb     0x6406b4
  6406af:	83 f8 01             	cmp    eax,0x1
  6406b2:	73 0e                	jae    0x6406c2
  6406b4:	83 bc 24 00 02 00 00 00 	cmp    DWORD PTR [esp+0x200],0x0
  6406bc:	0f 84 2a 02 00 00    	je     0x6408ec
  6406c2:	8b 84 24 04 02 00 00 	mov    eax,DWORD PTR [esp+0x204]
  6406c9:	85 c0                	test   eax,eax
  6406cb:	74 03                	je     0x6406d0
  6406cd:	c6 00 01             	mov    BYTE PTR [eax],0x1
  6406d0:	0f b7 74 24 2c       	movzx  esi,WORD PTR [esp+0x2c]
  6406d5:	68 fe ff 00 00       	push   0xfffe
  6406da:	33 c0                	xor    eax,eax
  6406dc:	68 fe ff 00 00       	push   0xfffe
  6406e1:	6a 01                	push   0x1
  6406e3:	89 84 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],eax
  6406ea:	89 84 24 40 01 00 00 	mov    DWORD PTR [esp+0x140],eax
  6406f1:	89 84 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],eax
  6406f8:	0f b7 ff             	movzx  edi,di
  6406fb:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  6406ff:	51                   	push   ecx
  640700:	8b c6                	mov    eax,esi
  640702:	c1 e0 10             	shl    eax,0x10
  640705:	05 ff ff 00 00       	add    eax,0xffff
  64070a:	8d 94 24 40 01 00 00 	lea    edx,[esp+0x140]
  640711:	52                   	push   edx
  640712:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  640716:	50                   	push   eax
  640717:	c1 e7 10             	shl    edi,0x10
  64071a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  64071e:	81 c7 fe ff 00 00    	add    edi,0xfffe
  640724:	57                   	push   edi
  640725:	8d 84 24 e0 00 00 00 	lea    eax,[esp+0xe0]
  64072c:	50                   	push   eax
  64072d:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  640731:	51                   	push   ecx
  640732:	52                   	push   edx
  640733:	8d 84 24 f8 00 00 00 	lea    eax,[esp+0xf8]
  64073a:	50                   	push   eax
  64073b:	8b cd                	mov    ecx,ebp
  64073d:	c7 84 24 68 01 00 00 20 dd fe 00 	mov    DWORD PTR [esp+0x168],0xfedd20
  640748:	e8 13 e4 ff ff       	call   0x63eb60
  64074d:	84 c0                	test   al,al
  64074f:	74 14                	je     0x640765
  640751:	8b 8c 24 30 01 00 00 	mov    ecx,DWORD PTR [esp+0x130]
  640758:	3b 8c 24 34 01 00 00 	cmp    ecx,DWORD PTR [esp+0x134]
  64075f:	0f 85 23 02 00 00    	jne    0x640988
  640765:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  640769:	83 f8 01             	cmp    eax,0x1
  64076c:	0f 86 4f 01 00 00    	jbe    0x6408c1
  640772:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  640776:	8b 89 90 00 00 00    	mov    ecx,DWORD PTR [ecx+0x90]
  64077c:	8b d6                	mov    edx,esi
  64077e:	c1 e2 04             	shl    edx,0x4
  640781:	03 d6                	add    edx,esi
  640783:	8d 14 91             	lea    edx,[ecx+edx*4]
  640786:	33 f6                	xor    esi,esi
  640788:	85 c0                	test   eax,eax
  64078a:	89 94 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edx
  640791:	0f 86 2a 01 00 00    	jbe    0x6408c1
  640797:	eb 07                	jmp    0x6407a0
  640799:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  6407a0:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  6407a7:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  6407aa:	0f b7 14 71          	movzx  edx,WORD PTR [ecx+esi*2]
  6407ae:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  6407b1:	66 8b 4c 24 2c       	mov    cx,WORD PTR [esp+0x2c]
  6407b6:	8b 04 90             	mov    eax,DWORD PTR [eax+edx*4]
  6407b9:	66 39 48 48          	cmp    WORD PTR [eax+0x48],cx
  6407bd:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  6407c4:	75 0e                	jne    0x6407d4
  6407c6:	83 c0 14             	add    eax,0x14
  6407c9:	50                   	push   eax
  6407ca:	8d 94 24 78 01 00 00 	lea    edx,[esp+0x178]
  6407d1:	52                   	push   edx
  6407d2:	eb 0c                	jmp    0x6407e0
  6407d4:	83 c0 20             	add    eax,0x20
  6407d7:	50                   	push   eax
  6407d8:	8d 84 24 78 01 00 00 	lea    eax,[esp+0x178]
  6407df:	50                   	push   eax
  6407e0:	e8 eb b8 fd ff       	call   0x61c0d0
  6407e5:	8b 8c 24 30 01 00 00 	mov    ecx,DWORD PTR [esp+0x130]
  6407ec:	68 fe ff 00 00       	push   0xfffe
  6407f1:	68 fe ff 00 00       	push   0xfffe
  6407f6:	6a 01                	push   0x1
  6407f8:	8d 54 24 20          	lea    edx,[esp+0x20]
  6407fc:	52                   	push   edx
  6407fd:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
  640804:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  640808:	8d 84 24 40 01 00 00 	lea    eax,[esp+0x140]
  64080f:	50                   	push   eax
  640810:	51                   	push   ecx
  640811:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  640815:	57                   	push   edi
  640816:	8d 94 24 a0 00 00 00 	lea    edx,[esp+0xa0]
  64081d:	52                   	push   edx
  64081e:	8d 44 24 68          	lea    eax,[esp+0x68]
  640822:	50                   	push   eax
  640823:	51                   	push   ecx
  640824:	8d 94 24 f8 00 00 00 	lea    edx,[esp+0xf8]
  64082b:	52                   	push   edx
  64082c:	8b cd                	mov    ecx,ebp
  64082e:	e8 2d e3 ff ff       	call   0x63eb60
  640833:	84 c0                	test   al,al
  640835:	74 7d                	je     0x6408b4
  640837:	8b 84 24 30 01 00 00 	mov    eax,DWORD PTR [esp+0x130]
  64083e:	3b 84 24 34 01 00 00 	cmp    eax,DWORD PTR [esp+0x134]
  640845:	74 6d                	je     0x6408b4
  640847:	8d 8c 24 74 01 00 00 	lea    ecx,[esp+0x174]
  64084e:	e8 cd e5 00 00       	call   0x64ee20
  640853:	d9 84 24 e0 01 00 00 	fld    DWORD PTR [esp+0x1e0]
  64085a:	6a 00                	push   0x0
  64085c:	6a 00                	push   0x0
  64085e:	8d 8c 24 d4 01 00 00 	lea    ecx,[esp+0x1d4]
  640865:	51                   	push   ecx
  640866:	8d 94 24 80 01 00 00 	lea    edx,[esp+0x180]
  64086d:	52                   	push   edx
  64086e:	8d 44 24 64          	lea    eax,[esp+0x64]
  640872:	50                   	push   eax
  640873:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  640877:	51                   	push   ecx
  640878:	d9 1c 24             	fstp   DWORD PTR [esp]
  64087b:	8d 8c 24 dc 00 00 00 	lea    ecx,[esp+0xdc]
  640882:	51                   	push   ecx
  640883:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  640887:	8d 94 24 a0 00 00 00 	lea    edx,[esp+0xa0]
  64088e:	52                   	push   edx
  64088f:	50                   	push   eax
  640890:	51                   	push   ecx
  640891:	8d 94 24 f8 00 00 00 	lea    edx,[esp+0xf8]
  640898:	52                   	push   edx
  640899:	8b cd                	mov    ecx,ebp
  64089b:	e8 c0 2d ff ff       	call   0x633660
  6408a0:	85 c0                	test   eax,eax
  6408a2:	8d 8c 24 74 01 00 00 	lea    ecx,[esp+0x174]
  6408a9:	0f 84 8c 00 00 00    	je     0x64093b
  6408af:	e8 8c 62 fe ff       	call   0x626b40
  6408b4:	83 c6 01             	add    esi,0x1
  6408b7:	3b 74 24 34          	cmp    esi,DWORD PTR [esp+0x34]
  6408bb:	0f 82 df fe ff ff    	jb     0x6407a0
  6408c1:	83 bc 24 00 02 00 00 00 	cmp    DWORD PTR [esp+0x200],0x0
  6408c9:	75 77                	jne    0x640942
  6408cb:	80 7c 24 33 00       	cmp    BYTE PTR [esp+0x33],0x0
  6408d0:	74 70                	je     0x640942
  6408d2:	83 bc 24 30 01 00 00 00 	cmp    DWORD PTR [esp+0x130],0x0
  6408da:	74 10                	je     0x6408ec
  6408dc:	8b 84 24 30 01 00 00 	mov    eax,DWORD PTR [esp+0x130]
  6408e3:	50                   	push   eax
  6408e4:	e8 f7 3b ea ff       	call   0x4e44e0
  6408e9:	83 c4 04             	add    esp,0x4
  6408ec:	85 db                	test   ebx,ebx
  6408ee:	74 09                	je     0x6408f9
  6408f0:	8b 13                	mov    edx,DWORD PTR [ebx]
  6408f2:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6408f5:	8b cb                	mov    ecx,ebx
  6408f7:	ff d0                	call   eax
  6408f9:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  6408fd:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  640901:	51                   	push   ecx
  640902:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  640906:	52                   	push   edx
  640907:	e8 c4 c4 ff ff       	call   0x63cdd0
  64090c:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  640910:	85 c0                	test   eax,eax
  640912:	74 09                	je     0x64091d
  640914:	50                   	push   eax
  640915:	e8 c6 3b ea ff       	call   0x4e44e0
  64091a:	83 c4 04             	add    esp,0x4
  64091d:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  640924:	e8 07 8a fe ff       	call   0x629330
  640929:	5f                   	pop    edi
  64092a:	5b                   	pop    ebx
  64092b:	5e                   	pop    esi
  64092c:	b8 05 00 00 00       	mov    eax,0x5
  640931:	5d                   	pop    ebp
  640932:	81 c4 c0 01 00 00    	add    esp,0x1c0
  640938:	c2 34 00             	ret    0x34
  64093b:	e8 00 62 fe ff       	call   0x626b40
  640940:	eb 46                	jmp    0x640988
  640942:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  640946:	3b 44 24 18          	cmp    eax,DWORD PTR [esp+0x18]
  64094a:	74 3c                	je     0x640988
  64094c:	68 fe ff 00 00       	push   0xfffe
  640951:	68 fe ff 00 00       	push   0xfffe
  640956:	6a 01                	push   0x1
  640958:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  64095c:	51                   	push   ecx
  64095d:	8d 94 24 40 01 00 00 	lea    edx,[esp+0x140]
  640964:	52                   	push   edx
  640965:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  640969:	50                   	push   eax
  64096a:	57                   	push   edi
  64096b:	8d 84 24 e0 00 00 00 	lea    eax,[esp+0xe0]
  640972:	50                   	push   eax
  640973:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  640977:	51                   	push   ecx
  640978:	52                   	push   edx
  640979:	8d 84 24 f8 00 00 00 	lea    eax,[esp+0xf8]
  640980:	50                   	push   eax
  640981:	8b cd                	mov    ecx,ebp
  640983:	e8 d8 e1 ff ff       	call   0x63eb60
  640988:	8b b4 24 00 02 00 00 	mov    esi,DWORD PTR [esp+0x200]
  64098f:	85 f6                	test   esi,esi
  640991:	74 31                	je     0x6409c4
  640993:	83 3e 00             	cmp    DWORD PTR [esi],0x0
  640996:	75 2c                	jne    0x6409c4
  640998:	6a 00                	push   0x0
  64099a:	6a 00                	push   0x0
  64099c:	6a 00                	push   0x0
  64099e:	6a 00                	push   0x0
  6409a0:	68 34 dd fe 00       	push   0xfedd34
  6409a5:	6a 18                	push   0x18
  6409a7:	e8 54 3b ea ff       	call   0x4e4500
  6409ac:	83 c4 18             	add    esp,0x18
  6409af:	85 c0                	test   eax,eax
  6409b1:	74 09                	je     0x6409bc
  6409b3:	8b c8                	mov    ecx,eax
  6409b5:	e8 86 e4 00 00       	call   0x64ee40
  6409ba:	eb 02                	jmp    0x6409be
  6409bc:	33 c0                	xor    eax,eax
  6409be:	89 06                	mov    DWORD PTR [esi],eax
  6409c0:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  6409c4:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  6409c8:	e8 53 e4 00 00       	call   0x64ee20
  6409cd:	8b b4 24 30 01 00 00 	mov    esi,DWORD PTR [esp+0x130]
  6409d4:	3b b4 24 34 01 00 00 	cmp    esi,DWORD PTR [esp+0x134]
  6409db:	6a 00                	push   0x0
  6409dd:	0f 84 ad 08 00 00    	je     0x641290
  6409e3:	8b 16                	mov    edx,DWORD PTR [esi]
  6409e5:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  6409e9:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  6409ed:	51                   	push   ecx
  6409ee:	8b 8c 24 18 01 00 00 	mov    ecx,DWORD PTR [esp+0x118]
  6409f5:	6a 00                	push   0x0
  6409f7:	52                   	push   edx
  6409f8:	50                   	push   eax
  6409f9:	51                   	push   ecx
  6409fa:	8b cd                	mov    ecx,ebp
  6409fc:	e8 cf 62 fe ff       	call   0x626cd0
  640a01:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  640a05:	50                   	push   eax
  640a06:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  640a0a:	8d 54 24 54          	lea    edx,[esp+0x54]
  640a0e:	52                   	push   edx
  640a0f:	50                   	push   eax
  640a10:	51                   	push   ecx
  640a11:	8d 94 24 e8 00 00 00 	lea    edx,[esp+0xe8]
  640a18:	52                   	push   edx
  640a19:	8b cd                	mov    ecx,ebp
  640a1b:	e8 30 24 ff ff       	call   0x632e50
  640a20:	8b f8                	mov    edi,eax
  640a22:	85 ff                	test   edi,edi
  640a24:	74 2e                	je     0x640a54
  640a26:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  640a2a:	e8 11 61 fe ff       	call   0x626b40
  640a2f:	56                   	push   esi
  640a30:	e8 ab 3a ea ff       	call   0x4e44e0
  640a35:	83 c4 04             	add    esp,0x4
  640a38:	85 db                	test   ebx,ebx
  640a3a:	74 09                	je     0x640a45
  640a3c:	8b 03                	mov    eax,DWORD PTR [ebx]
  640a3e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  640a41:	8b cb                	mov    ecx,ebx
  640a43:	ff d2                	call   edx
  640a45:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  640a49:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  640a4d:	50                   	push   eax
  640a4e:	51                   	push   ecx
  640a4f:	e9 b9 08 00 00       	jmp    0x64130d
  640a54:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  640a59:	0f 84 89 00 00 00    	je     0x640ae8
  640a5f:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  640a62:	2b 53 08             	sub    edx,DWORD PTR [ebx+0x8]
  640a65:	f7 c2 c0 ff ff ff    	test   edx,0xffffffc0
  640a6b:	74 7b                	je     0x640ae8
  640a6d:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  640a70:	2b 43 08             	sub    eax,DWORD PTR [ebx+0x8]
  640a73:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  640a76:	f3 0f 10 05 f8 92 fe 00 	movss  xmm0,DWORD PTR ds:0xfe92f8
  640a7e:	c1 f8 06             	sar    eax,0x6
  640a81:	c1 e0 06             	shl    eax,0x6
  640a84:	8d 44 08 c0          	lea    eax,[eax+ecx*1-0x40]
  640a88:	8b f0                	mov    esi,eax
  640a8a:	b9 10 00 00 00       	mov    ecx,0x10
  640a8f:	8d bc 24 84 00 00 00 	lea    edi,[esp+0x84]
  640a96:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640a98:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
  640a9f:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  640aa3:	f3 0f 10 48 0c       	movss  xmm1,DWORD PTR [eax+0xc]
  640aa8:	f3 0f 59 c8          	mulss  xmm1,xmm0
  640aac:	f3 0f 58 8c 24 84 00 00 00 	addss  xmm1,DWORD PTR [esp+0x84]
  640ab5:	f3 0f 11 8c 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm1
  640abe:	f3 0f 10 48 10       	movss  xmm1,DWORD PTR [eax+0x10]
  640ac3:	8d 94 24 84 00 00 00 	lea    edx,[esp+0x84]
  640aca:	f3 0f 59 c8          	mulss  xmm1,xmm0
  640ace:	f3 0f 58 8c 24 8c 00 00 00 	addss  xmm1,DWORD PTR [esp+0x8c]
  640ad7:	52                   	push   edx
  640ad8:	8b cb                	mov    ecx,ebx
  640ada:	f3 0f 11 8c 24 90 00 00 00 	movss  DWORD PTR [esp+0x90],xmm1
  640ae3:	e8 78 9f fe ff       	call   0x62aa60
  640ae8:	8b 84 24 00 02 00 00 	mov    eax,DWORD PTR [esp+0x200]
  640aef:	85 c0                	test   eax,eax
  640af1:	74 12                	je     0x640b05
  640af3:	8b 00                	mov    eax,DWORD PTR [eax]
  640af5:	50                   	push   eax
  640af6:	8d 8c 24 d4 00 00 00 	lea    ecx,[esp+0xd4]
  640afd:	51                   	push   ecx
  640afe:	8b cd                	mov    ecx,ebp
  640b00:	e8 5b 6f fe ff       	call   0x627a60
  640b05:	8b 74 24 70          	mov    esi,DWORD PTR [esp+0x70]
  640b09:	2b 74 24 6c          	sub    esi,DWORD PTR [esp+0x6c]
  640b0d:	c1 fe 06             	sar    esi,0x6
  640b10:	8d 5e ff             	lea    ebx,[esi-0x1]
  640b13:	85 db                	test   ebx,ebx
  640b15:	76 21                	jbe    0x640b38
  640b17:	33 ff                	xor    edi,edi
  640b19:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  640b20:	8b 54 24 6c          	mov    edx,DWORD PTR [esp+0x6c]
  640b24:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  640b28:	03 d7                	add    edx,edi
  640b2a:	52                   	push   edx
  640b2b:	e8 30 9f fe ff       	call   0x62aa60
  640b30:	83 c7 40             	add    edi,0x40
  640b33:	83 eb 01             	sub    ebx,0x1
  640b36:	75 e8                	jne    0x640b20
  640b38:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  640b3c:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  640b40:	c1 e6 06             	shl    esi,0x6
  640b43:	8d 74 06 c0          	lea    esi,[esi+eax*1-0x40]
  640b47:	b9 10 00 00 00       	mov    ecx,0x10
  640b4c:	8d bc 24 84 00 00 00 	lea    edi,[esp+0x84]
  640b53:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640b55:	8b b4 24 30 01 00 00 	mov    esi,DWORD PTR [esp+0x130]
  640b5c:	8b 0e                	mov    ecx,DWORD PTR [esi]
  640b5e:	51                   	push   ecx
  640b5f:	52                   	push   edx
  640b60:	8b cd                	mov    ecx,ebp
  640b62:	c7 84 24 a8 00 00 00 02 00 00 00 	mov    DWORD PTR [esp+0xa8],0x2
  640b6d:	e8 ae 52 fe ff       	call   0x625e20
  640b72:	0f b7 48 34          	movzx  ecx,WORD PTR [eax+0x34]
  640b76:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  640b79:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  640b7d:	89 8c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ecx
  640b84:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  640b87:	89 94 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],edx
  640b8e:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  640b91:	8d 84 24 84 00 00 00 	lea    eax,[esp+0x84]
  640b98:	89 8c 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],ecx
  640b9f:	50                   	push   eax
  640ba0:	8b cb                	mov    ecx,ebx
  640ba2:	89 94 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edx
  640ba9:	e8 b2 9e fe ff       	call   0x62aa60
  640bae:	8b 84 24 34 01 00 00 	mov    eax,DWORD PTR [esp+0x134]
  640bb5:	2b c6                	sub    eax,esi
  640bb7:	c1 f8 02             	sar    eax,0x2
  640bba:	83 c0 ff             	add    eax,0xffffffff
  640bbd:	83 f8 01             	cmp    eax,0x1
  640bc0:	c7 44 24 2c 01 00 00 00 	mov    DWORD PTR [esp+0x2c],0x1
  640bc8:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  640bcc:	0f 86 34 03 00 00    	jbe    0x640f06
  640bd2:	eb 0c                	jmp    0x640be0
  640bd4:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  640bdb:	eb 03                	jmp    0x640be0
  640bdd:	8d 49 00             	lea    ecx,[ecx+0x0]
  640be0:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  640be4:	8b bc 24 30 01 00 00 	mov    edi,DWORD PTR [esp+0x130]
  640beb:	8b 74 24 2c          	mov    esi,DWORD PTR [esp+0x2c]
  640bef:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  640bf3:	6a 00                	push   0x0
  640bf5:	8d 54 24 68          	lea    edx,[esp+0x68]
  640bf9:	52                   	push   edx
  640bfa:	89 4c 24 78          	mov    DWORD PTR [esp+0x78],ecx
  640bfe:	8b 44 b7 04          	mov    eax,DWORD PTR [edi+esi*4+0x4]
  640c02:	8b 8c 24 18 01 00 00 	mov    ecx,DWORD PTR [esp+0x118]
  640c09:	6a 00                	push   0x0
  640c0b:	50                   	push   eax
  640c0c:	53                   	push   ebx
  640c0d:	51                   	push   ecx
  640c0e:	8b cd                	mov    ecx,ebp
  640c10:	e8 bb 60 fe ff       	call   0x626cd0
  640c15:	8b 14 b7             	mov    edx,DWORD PTR [edi+esi*4]
  640c18:	50                   	push   eax
  640c19:	8b 84 24 1c 01 00 00 	mov    eax,DWORD PTR [esp+0x11c]
  640c20:	6a 01                	push   0x1
  640c22:	52                   	push   edx
  640c23:	53                   	push   ebx
  640c24:	50                   	push   eax
  640c25:	8b cd                	mov    ecx,ebp
  640c27:	e8 a4 60 fe ff       	call   0x626cd0
  640c2c:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  640c30:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  640c34:	50                   	push   eax
  640c35:	51                   	push   ecx
  640c36:	52                   	push   edx
  640c37:	8d 84 24 e8 00 00 00 	lea    eax,[esp+0xe8]
  640c3e:	50                   	push   eax
  640c3f:	8b cd                	mov    ecx,ebp
  640c41:	e8 0a 22 ff ff       	call   0x632e50
  640c46:	8b f0                	mov    esi,eax
  640c48:	33 db                	xor    ebx,ebx
  640c4a:	3b f3                	cmp    esi,ebx
  640c4c:	0f 85 dc 03 00 00    	jne    0x64102e
  640c52:	38 5c 24 13          	cmp    BYTE PTR [esp+0x13],bl
  640c56:	0f 84 89 00 00 00    	je     0x640ce5
  640c5c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  640c60:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  640c63:	2b 48 08             	sub    ecx,DWORD PTR [eax+0x8]
  640c66:	f7 c1 c0 ff ff ff    	test   ecx,0xffffffc0
  640c6c:	74 77                	je     0x640ce5
  640c6e:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  640c71:	2b 50 08             	sub    edx,DWORD PTR [eax+0x8]
  640c74:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  640c77:	f3 0f 10 05 f8 92 fe 00 	movss  xmm0,DWORD PTR ds:0xfe92f8
  640c7f:	c1 fa 06             	sar    edx,0x6
  640c82:	c1 e2 06             	shl    edx,0x6
  640c85:	8d 54 0a c0          	lea    edx,[edx+ecx*1-0x40]
  640c89:	8b f2                	mov    esi,edx
  640c8b:	b9 10 00 00 00       	mov    ecx,0x10
  640c90:	8d bc 24 8c 01 00 00 	lea    edi,[esp+0x18c]
  640c97:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640c99:	89 5a 1c             	mov    DWORD PTR [edx+0x1c],ebx
  640c9c:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  640ca0:	f3 0f 10 49 0c       	movss  xmm1,DWORD PTR [ecx+0xc]
  640ca5:	f3 0f 59 c8          	mulss  xmm1,xmm0
  640ca9:	f3 0f 58 8c 24 8c 01 00 00 	addss  xmm1,DWORD PTR [esp+0x18c]
  640cb2:	f3 0f 11 8c 24 8c 01 00 00 	movss  DWORD PTR [esp+0x18c],xmm1
  640cbb:	f3 0f 10 49 10       	movss  xmm1,DWORD PTR [ecx+0x10]
  640cc0:	8d 94 24 8c 01 00 00 	lea    edx,[esp+0x18c]
  640cc7:	f3 0f 59 c8          	mulss  xmm1,xmm0
  640ccb:	f3 0f 58 8c 24 94 01 00 00 	addss  xmm1,DWORD PTR [esp+0x194]
  640cd4:	52                   	push   edx
  640cd5:	8b c8                	mov    ecx,eax
  640cd7:	f3 0f 11 8c 24 98 01 00 00 	movss  DWORD PTR [esp+0x198],xmm1
  640ce0:	e8 7b 9d fe ff       	call   0x62aa60
  640ce5:	8b 84 24 00 02 00 00 	mov    eax,DWORD PTR [esp+0x200]
  640cec:	3b c3                	cmp    eax,ebx
  640cee:	74 12                	je     0x640d02
  640cf0:	8b 00                	mov    eax,DWORD PTR [eax]
  640cf2:	50                   	push   eax
  640cf3:	8d 8c 24 d4 00 00 00 	lea    ecx,[esp+0xd4]
  640cfa:	51                   	push   ecx
  640cfb:	8b cd                	mov    ecx,ebp
  640cfd:	e8 5e 6d fe ff       	call   0x627a60
  640d02:	8b 74 24 6c          	mov    esi,DWORD PTR [esp+0x6c]
  640d06:	8b 94 24 30 01 00 00 	mov    edx,DWORD PTR [esp+0x130]
  640d0d:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  640d11:	b9 10 00 00 00       	mov    ecx,0x10
  640d16:	8d bc 24 84 00 00 00 	lea    edi,[esp+0x84]
  640d1d:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640d1f:	8b 0c 82             	mov    ecx,DWORD PTR [edx+eax*4]
  640d22:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  640d26:	51                   	push   ecx
  640d27:	52                   	push   edx
  640d28:	8b cd                	mov    ecx,ebp
  640d2a:	c7 84 24 a8 00 00 00 03 00 00 00 	mov    DWORD PTR [esp+0xa8],0x3
  640d35:	e8 e6 50 fe ff       	call   0x625e20
  640d3a:	0f b7 48 34          	movzx  ecx,WORD PTR [eax+0x34]
  640d3e:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  640d42:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  640d45:	8b 7b 0c             	mov    edi,DWORD PTR [ebx+0xc]
  640d48:	f3 0f 10 40 2c       	movss  xmm0,DWORD PTR [eax+0x2c]
  640d4d:	83 c3 08             	add    ebx,0x8
  640d50:	3b 7b 08             	cmp    edi,DWORD PTR [ebx+0x8]
  640d53:	89 8c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ecx
  640d5a:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  640d5d:	89 94 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],edx
  640d64:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  640d67:	89 8c 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],ecx
  640d6e:	89 94 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],edx
  640d75:	f3 0f 11 84 24 94 00 00 00 	movss  DWORD PTR [esp+0x94],xmm0
  640d7e:	73 1a                	jae    0x640d9a
  640d80:	85 ff                	test   edi,edi
  640d82:	8d 47 40             	lea    eax,[edi+0x40]
  640d85:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  640d88:	74 20                	je     0x640daa
  640d8a:	b9 10 00 00 00       	mov    ecx,0x10
  640d8f:	8d b4 24 84 00 00 00 	lea    esi,[esp+0x84]
  640d96:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640d98:	eb 10                	jmp    0x640daa
  640d9a:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  640da1:	51                   	push   ecx
  640da2:	57                   	push   edi
  640da3:	8b cb                	mov    ecx,ebx
  640da5:	e8 26 e7 44 00       	call   0xa8f4d0
  640daa:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  640dae:	2b 44 24 6c          	sub    eax,DWORD PTR [esp+0x6c]
  640db2:	c1 f8 06             	sar    eax,0x6
  640db5:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  640dbc:	83 c0 ff             	add    eax,0xffffffff
  640dbf:	83 f8 01             	cmp    eax,0x1
  640dc2:	76 4a                	jbe    0x640e0e
  640dc4:	83 c0 ff             	add    eax,0xffffffff
  640dc7:	c7 44 24 14 40 00 00 00 	mov    DWORD PTR [esp+0x14],0x40
  640dcf:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  640dd3:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  640dd6:	3b 7b 08             	cmp    edi,DWORD PTR [ebx+0x8]
  640dd9:	8b 54 24 6c          	mov    edx,DWORD PTR [esp+0x6c]
  640ddd:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  640de1:	8d 34 02             	lea    esi,[edx+eax*1]
  640de4:	73 13                	jae    0x640df9
  640de6:	85 ff                	test   edi,edi
  640de8:	8d 4f 40             	lea    ecx,[edi+0x40]
  640deb:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  640dee:	74 12                	je     0x640e02
  640df0:	b9 10 00 00 00       	mov    ecx,0x10
  640df5:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640df7:	eb 09                	jmp    0x640e02
  640df9:	56                   	push   esi
  640dfa:	57                   	push   edi
  640dfb:	8b cb                	mov    ecx,ebx
  640dfd:	e8 ce e6 44 00       	call   0xa8f4d0
  640e02:	83 44 24 14 40       	add    DWORD PTR [esp+0x14],0x40
  640e07:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  640e0c:	75 c5                	jne    0x640dd3
  640e0e:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  640e15:	8b 54 24 6c          	mov    edx,DWORD PTR [esp+0x6c]
  640e19:	c1 e0 06             	shl    eax,0x6
  640e1c:	8d 74 10 c0          	lea    esi,[eax+edx*1-0x40]
  640e20:	8b 84 24 30 01 00 00 	mov    eax,DWORD PTR [esp+0x130]
  640e27:	b9 10 00 00 00       	mov    ecx,0x10
  640e2c:	8d bc 24 84 00 00 00 	lea    edi,[esp+0x84]
  640e33:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640e35:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  640e39:	8b 44 88 04          	mov    eax,DWORD PTR [eax+ecx*4+0x4]
  640e3d:	8b d0                	mov    edx,eax
  640e3f:	81 e2 f0 ff 00 00    	and    edx,0xfff0
  640e45:	81 fa f0 ff 00 00    	cmp    edx,0xfff0
  640e4b:	c7 84 24 a0 00 00 00 02 00 00 00 	mov    DWORD PTR [esp+0xa0],0x2
  640e56:	74 31                	je     0x640e89
  640e58:	8b c8                	mov    ecx,eax
  640e5a:	c1 e9 10             	shr    ecx,0x10
  640e5d:	8b d1                	mov    edx,ecx
  640e5f:	c1 e2 04             	shl    edx,0x4
  640e62:	03 d1                	add    edx,ecx
  640e64:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  640e68:	8b 89 90 00 00 00    	mov    ecx,DWORD PTR [ecx+0x90]
  640e6e:	8d 0c 91             	lea    ecx,[ecx+edx*4]
  640e71:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  640e74:	2b 51 04             	sub    edx,DWORD PTR [ecx+0x4]
  640e77:	0f b7 c0             	movzx  eax,ax
  640e7a:	c1 fa 02             	sar    edx,0x2
  640e7d:	3b c2                	cmp    eax,edx
  640e7f:	73 08                	jae    0x640e89
  640e81:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  640e84:	8b 04 81             	mov    eax,DWORD PTR [ecx+eax*4]
  640e87:	eb 02                	jmp    0x640e8b
  640e89:	33 c0                	xor    eax,eax
  640e8b:	0f b7 50 34          	movzx  edx,WORD PTR [eax+0x34]
  640e8f:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  640e92:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  640e95:	3b 7b 08             	cmp    edi,DWORD PTR [ebx+0x8]
  640e98:	89 94 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edx
  640e9f:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  640ea2:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  640ea5:	89 8c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ecx
  640eac:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
  640eb3:	89 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],eax
  640eba:	73 1a                	jae    0x640ed6
  640ebc:	85 ff                	test   edi,edi
  640ebe:	8d 4f 40             	lea    ecx,[edi+0x40]
  640ec1:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  640ec4:	74 20                	je     0x640ee6
  640ec6:	b9 10 00 00 00       	mov    ecx,0x10
  640ecb:	8d b4 24 84 00 00 00 	lea    esi,[esp+0x84]
  640ed2:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  640ed4:	eb 10                	jmp    0x640ee6
  640ed6:	8d 94 24 84 00 00 00 	lea    edx,[esp+0x84]
  640edd:	52                   	push   edx
  640ede:	57                   	push   edi
  640edf:	8b cb                	mov    ecx,ebx
  640ee1:	e8 ea e5 44 00       	call   0xa8f4d0
  640ee6:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  640eea:	83 c0 02             	add    eax,0x2
  640eed:	3b 44 24 34          	cmp    eax,DWORD PTR [esp+0x34]
  640ef1:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  640ef5:	0f 82 e5 fc ff ff    	jb     0x640be0
  640efb:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  640eff:	8b b4 24 30 01 00 00 	mov    esi,DWORD PTR [esp+0x130]
  640f06:	83 bc 24 00 02 00 00 00 	cmp    DWORD PTR [esp+0x200],0x0
  640f0e:	d9 84 24 e0 01 00 00 	fld    DWORD PTR [esp+0x1e0]
  640f15:	8b 54 24 6c          	mov    edx,DWORD PTR [esp+0x6c]
  640f19:	6a 00                	push   0x0
  640f1b:	0f 95 c0             	setne  al
  640f1e:	89 54 24 74          	mov    DWORD PTR [esp+0x74],edx
  640f22:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  640f26:	8d 54 24 68          	lea    edx,[esp+0x68]
  640f2a:	50                   	push   eax
  640f2b:	51                   	push   ecx
  640f2c:	52                   	push   edx
  640f2d:	8b 94 24 44 01 00 00 	mov    edx,DWORD PTR [esp+0x144]
  640f34:	8d 44 24 64          	lea    eax,[esp+0x64]
  640f38:	50                   	push   eax
  640f39:	8b 42 fc             	mov    eax,DWORD PTR [edx-0x4]
  640f3c:	8b 94 24 24 01 00 00 	mov    edx,DWORD PTR [esp+0x124]
  640f43:	51                   	push   ecx
  640f44:	d9 1c 24             	fstp   DWORD PTR [esp]
  640f47:	8d 8c 24 dc 00 00 00 	lea    ecx,[esp+0xdc]
  640f4e:	51                   	push   ecx
  640f4f:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  640f53:	6a 01                	push   0x1
  640f55:	50                   	push   eax
  640f56:	51                   	push   ecx
  640f57:	52                   	push   edx
  640f58:	8b cd                	mov    ecx,ebp
  640f5a:	e8 71 5d fe ff       	call   0x626cd0
  640f5f:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  640f63:	50                   	push   eax
  640f64:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  640f68:	50                   	push   eax
  640f69:	51                   	push   ecx
  640f6a:	8d 94 24 f8 00 00 00 	lea    edx,[esp+0xf8]
  640f71:	52                   	push   edx
  640f72:	8b cd                	mov    ecx,ebp
  640f74:	e8 e7 26 ff ff       	call   0x633660
  640f79:	8b f8                	mov    edi,eax
  640f7b:	85 ff                	test   edi,edi
  640f7d:	0f 84 54 01 00 00    	je     0x6410d7
  640f83:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  640f87:	85 c0                	test   eax,eax
  640f89:	c7 44 24 64 e0 d0 fe 00 	mov    DWORD PTR [esp+0x64],0xfed0e0
  640f91:	74 09                	je     0x640f9c
  640f93:	50                   	push   eax
  640f94:	e8 47 35 ea ff       	call   0x4e44e0
  640f99:	83 c4 04             	add    esp,0x4
  640f9c:	56                   	push   esi
  640f9d:	c7 44 24 68 80 2b fa 00 	mov    DWORD PTR [esp+0x68],0xfa2b80
  640fa5:	e8 36 35 ea ff       	call   0x4e44e0
  640faa:	83 c4 04             	add    esp,0x4
  640fad:	85 db                	test   ebx,ebx
  640faf:	74 09                	je     0x640fba
  640fb1:	8b 03                	mov    eax,DWORD PTR [ebx]
  640fb3:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  640fb6:	8b cb                	mov    ecx,ebx
  640fb8:	ff d2                	call   edx
  640fba:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  640fbe:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  640fc2:	50                   	push   eax
  640fc3:	51                   	push   ecx
  640fc4:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  640fc8:	e8 03 be ff ff       	call   0x63cdd0
  640fcd:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  640fd1:	85 c0                	test   eax,eax
  640fd3:	74 09                	je     0x640fde
  640fd5:	50                   	push   eax
  640fd6:	e8 05 35 ea ff       	call   0x4e44e0
  640fdb:	83 c4 04             	add    esp,0x4
  640fde:	8b 94 24 f4 00 00 00 	mov    edx,DWORD PTR [esp+0xf4]
  640fe5:	8b 84 24 f0 00 00 00 	mov    eax,DWORD PTR [esp+0xf0]
  640fec:	52                   	push   edx
  640fed:	50                   	push   eax
  640fee:	8d 8c 24 d8 00 00 00 	lea    ecx,[esp+0xd8]
  640ff5:	e8 f6 57 39 00       	call   0x9d67f0
  640ffa:	83 bc 24 f4 00 00 00 01 	cmp    DWORD PTR [esp+0xf4],0x1
  641002:	c7 84 24 f8 00 00 00 00 00 00 00 	mov    DWORD PTR [esp+0xf8],0x0
  64100d:	76 10                	jbe    0x64101f
  64100f:	8b 8c 24 f0 00 00 00 	mov    ecx,DWORD PTR [esp+0xf0]
  641016:	51                   	push   ecx
  641017:	e8 c4 34 ea ff       	call   0x4e44e0
  64101c:	83 c4 04             	add    esp,0x4
  64101f:	8b c7                	mov    eax,edi
  641021:	5f                   	pop    edi
  641022:	5b                   	pop    ebx
  641023:	5e                   	pop    esi
  641024:	5d                   	pop    ebp
  641025:	81 c4 c0 01 00 00    	add    esp,0x1c0
  64102b:	c2 34 00             	ret    0x34
  64102e:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  641032:	3b c3                	cmp    eax,ebx
  641034:	c7 44 24 64 e0 d0 fe 00 	mov    DWORD PTR [esp+0x64],0xfed0e0
  64103c:	74 09                	je     0x641047
  64103e:	50                   	push   eax
  64103f:	e8 9c 34 ea ff       	call   0x4e44e0
  641044:	83 c4 04             	add    esp,0x4
  641047:	57                   	push   edi
  641048:	c7 44 24 68 80 2b fa 00 	mov    DWORD PTR [esp+0x68],0xfa2b80
  641050:	e8 8b 34 ea ff       	call   0x4e44e0
  641055:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  641059:	83 c4 04             	add    esp,0x4
  64105c:	3b cb                	cmp    ecx,ebx
  64105e:	74 07                	je     0x641067
  641060:	8b 01                	mov    eax,DWORD PTR [ecx]
  641062:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  641065:	ff d2                	call   edx
  641067:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  64106b:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  64106f:	50                   	push   eax
  641070:	51                   	push   ecx
  641071:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  641075:	e8 56 bd ff ff       	call   0x63cdd0
  64107a:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  64107e:	3b c3                	cmp    eax,ebx
  641080:	74 09                	je     0x64108b
  641082:	50                   	push   eax
  641083:	e8 58 34 ea ff       	call   0x4e44e0
  641088:	83 c4 04             	add    esp,0x4
  64108b:	8b 94 24 f4 00 00 00 	mov    edx,DWORD PTR [esp+0xf4]
  641092:	8b 84 24 f0 00 00 00 	mov    eax,DWORD PTR [esp+0xf0]
  641099:	52                   	push   edx
  64109a:	50                   	push   eax
  64109b:	8d 8c 24 d8 00 00 00 	lea    ecx,[esp+0xd8]
  6410a2:	e8 49 57 39 00       	call   0x9d67f0
  6410a7:	83 bc 24 f4 00 00 00 01 	cmp    DWORD PTR [esp+0xf4],0x1
  6410af:	89 9c 24 f8 00 00 00 	mov    DWORD PTR [esp+0xf8],ebx
  6410b6:	76 10                	jbe    0x6410c8
  6410b8:	8b 8c 24 f0 00 00 00 	mov    ecx,DWORD PTR [esp+0xf0]
  6410bf:	51                   	push   ecx
  6410c0:	e8 1b 34 ea ff       	call   0x4e44e0
  6410c5:	83 c4 04             	add    esp,0x4
  6410c8:	5f                   	pop    edi
  6410c9:	5b                   	pop    ebx
  6410ca:	8b c6                	mov    eax,esi
  6410cc:	5e                   	pop    esi
  6410cd:	5d                   	pop    ebp
  6410ce:	81 c4 c0 01 00 00    	add    esp,0x1c0
  6410d4:	c2 34 00             	ret    0x34
  6410d7:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  6410dc:	0f 84 89 00 00 00    	je     0x64116b
  6410e2:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  6410e5:	2b 53 08             	sub    edx,DWORD PTR [ebx+0x8]
  6410e8:	f7 c2 c0 ff ff ff    	test   edx,0xffffffc0
  6410ee:	74 7b                	je     0x64116b
  6410f0:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  6410f3:	2b 43 08             	sub    eax,DWORD PTR [ebx+0x8]
  6410f6:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  6410f9:	f3 0f 10 05 f8 92 fe 00 	movss  xmm0,DWORD PTR ds:0xfe92f8
  641101:	c1 f8 06             	sar    eax,0x6
  641104:	c1 e0 06             	shl    eax,0x6
  641107:	8d 44 08 c0          	lea    eax,[eax+ecx*1-0x40]
  64110b:	8b f0                	mov    esi,eax
  64110d:	b9 10 00 00 00       	mov    ecx,0x10
  641112:	8d bc 24 8c 01 00 00 	lea    edi,[esp+0x18c]
  641119:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  64111b:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
  641122:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  641126:	f3 0f 10 48 0c       	movss  xmm1,DWORD PTR [eax+0xc]
  64112b:	f3 0f 59 c8          	mulss  xmm1,xmm0
  64112f:	f3 0f 58 8c 24 8c 01 00 00 	addss  xmm1,DWORD PTR [esp+0x18c]
  641138:	f3 0f 11 8c 24 8c 01 00 00 	movss  DWORD PTR [esp+0x18c],xmm1
  641141:	f3 0f 10 48 10       	movss  xmm1,DWORD PTR [eax+0x10]
  641146:	8d 94 24 8c 01 00 00 	lea    edx,[esp+0x18c]
  64114d:	f3 0f 59 c8          	mulss  xmm1,xmm0
  641151:	f3 0f 58 8c 24 94 01 00 00 	addss  xmm1,DWORD PTR [esp+0x194]
  64115a:	52                   	push   edx
  64115b:	8b cb                	mov    ecx,ebx
  64115d:	f3 0f 11 8c 24 98 01 00 00 	movss  DWORD PTR [esp+0x198],xmm1
  641166:	e8 f5 98 fe ff       	call   0x62aa60
  64116b:	8b 84 24 00 02 00 00 	mov    eax,DWORD PTR [esp+0x200]
  641172:	85 c0                	test   eax,eax
  641174:	74 12                	je     0x641188
  641176:	8b 00                	mov    eax,DWORD PTR [eax]
  641178:	50                   	push   eax
  641179:	8d 8c 24 d4 00 00 00 	lea    ecx,[esp+0xd4]
  641180:	51                   	push   ecx
  641181:	8b cd                	mov    ecx,ebp
  641183:	e8 d8 68 fe ff       	call   0x627a60
  641188:	8b 94 24 34 01 00 00 	mov    edx,DWORD PTR [esp+0x134]
  64118f:	8b 74 24 6c          	mov    esi,DWORD PTR [esp+0x6c]
  641193:	8b 42 fc             	mov    eax,DWORD PTR [edx-0x4]
  641196:	b9 10 00 00 00       	mov    ecx,0x10
  64119b:	8d bc 24 84 00 00 00 	lea    edi,[esp+0x84]
  6411a2:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  6411a4:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6411a8:	50                   	push   eax
  6411a9:	51                   	push   ecx
  6411aa:	8b cd                	mov    ecx,ebp
  6411ac:	c7 84 24 a8 00 00 00 03 00 00 00 	mov    DWORD PTR [esp+0xa8],0x3
  6411b7:	e8 64 4c fe ff       	call   0x625e20
  6411bc:	0f b7 50 34          	movzx  edx,WORD PTR [eax+0x34]
  6411c0:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  6411c3:	8b 7b 0c             	mov    edi,DWORD PTR [ebx+0xc]
  6411c6:	f3 0f 10 40 2c       	movss  xmm0,DWORD PTR [eax+0x2c]
  6411cb:	83 c3 08             	add    ebx,0x8
  6411ce:	3b 7b 08             	cmp    edi,DWORD PTR [ebx+0x8]
  6411d1:	89 94 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edx
  6411d8:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  6411db:	89 8c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ecx
  6411e2:	8b 48 30             	mov    ecx,DWORD PTR [eax+0x30]
  6411e5:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
  6411ec:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],ecx
  6411f3:	f3 0f 11 84 24 94 00 00 00 	movss  DWORD PTR [esp+0x94],xmm0
  6411fc:	73 1a                	jae    0x641218
  6411fe:	85 ff                	test   edi,edi
  641200:	8d 57 40             	lea    edx,[edi+0x40]
  641203:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  641206:	74 20                	je     0x641228
  641208:	b9 10 00 00 00       	mov    ecx,0x10
  64120d:	8d b4 24 84 00 00 00 	lea    esi,[esp+0x84]
  641214:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  641216:	eb 10                	jmp    0x641228
  641218:	8d 84 24 84 00 00 00 	lea    eax,[esp+0x84]
  64121f:	50                   	push   eax
  641220:	57                   	push   edi
  641221:	8b cb                	mov    ecx,ebx
  641223:	e8 a8 e2 44 00       	call   0xa8f4d0
  641228:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
  64122c:	2b 44 24 6c          	sub    eax,DWORD PTR [esp+0x6c]
  641230:	c1 f8 06             	sar    eax,0x6
  641233:	83 f8 01             	cmp    eax,0x1
  641236:	0f 86 df 01 00 00    	jbe    0x64141b
  64123c:	83 c0 ff             	add    eax,0xffffffff
  64123f:	c7 44 24 14 40 00 00 00 	mov    DWORD PTR [esp+0x14],0x40
  641247:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  64124b:	eb 03                	jmp    0x641250
  64124d:	8d 49 00             	lea    ecx,[ecx+0x0]
  641250:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  641253:	3b 7b 08             	cmp    edi,DWORD PTR [ebx+0x8]
  641256:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  64125a:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  64125e:	8d 34 11             	lea    esi,[ecx+edx*1]
  641261:	73 13                	jae    0x641276
  641263:	85 ff                	test   edi,edi
  641265:	8d 47 40             	lea    eax,[edi+0x40]
  641268:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  64126b:	74 12                	je     0x64127f
  64126d:	b9 10 00 00 00       	mov    ecx,0x10
  641272:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  641274:	eb 09                	jmp    0x64127f
  641276:	56                   	push   esi
  641277:	57                   	push   edi
  641278:	8b cb                	mov    ecx,ebx
  64127a:	e8 51 e2 44 00       	call   0xa8f4d0
  64127f:	83 44 24 14 40       	add    DWORD PTR [esp+0x14],0x40
  641284:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  641289:	75 c5                	jne    0x641250
  64128b:	e9 8b 01 00 00       	jmp    0x64141b
  641290:	8b 4c 24 70          	mov    ecx,DWORD PTR [esp+0x70]
  641294:	d9 84 24 e4 01 00 00 	fld    DWORD PTR [esp+0x1e4]
  64129b:	6a 01                	push   0x1
  64129d:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  6412a1:	52                   	push   edx
  6412a2:	89 4c 24 7c          	mov    DWORD PTR [esp+0x7c],ecx
  6412a6:	8d 44 24 70          	lea    eax,[esp+0x70]
  6412aa:	50                   	push   eax
  6412ab:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  6412af:	51                   	push   ecx
  6412b0:	51                   	push   ecx
  6412b1:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  6412b5:	d9 1c 24             	fstp   DWORD PTR [esp]
  6412b8:	8d 94 24 dc 00 00 00 	lea    edx,[esp+0xdc]
  6412bf:	52                   	push   edx
  6412c0:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  6412c4:	8d 44 24 64          	lea    eax,[esp+0x64]
  6412c8:	50                   	push   eax
  6412c9:	51                   	push   ecx
  6412ca:	52                   	push   edx
  6412cb:	8d 84 24 f8 00 00 00 	lea    eax,[esp+0xf8]
  6412d2:	50                   	push   eax
  6412d3:	8b cd                	mov    ecx,ebp
  6412d5:	e8 86 23 ff ff       	call   0x633660
  6412da:	8b f8                	mov    edi,eax
  6412dc:	85 ff                	test   edi,edi
  6412de:	74 62                	je     0x641342
  6412e0:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  6412e4:	e8 57 58 fe ff       	call   0x626b40
  6412e9:	85 f6                	test   esi,esi
  6412eb:	74 09                	je     0x6412f6
  6412ed:	56                   	push   esi
  6412ee:	e8 ed 31 ea ff       	call   0x4e44e0
  6412f3:	83 c4 04             	add    esp,0x4
  6412f6:	85 db                	test   ebx,ebx
  6412f8:	74 09                	je     0x641303
  6412fa:	8b 13                	mov    edx,DWORD PTR [ebx]
  6412fc:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6412ff:	8b cb                	mov    ecx,ebx
  641301:	ff d0                	call   eax
  641303:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  641307:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  64130b:	51                   	push   ecx
  64130c:	52                   	push   edx
  64130d:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  641311:	e8 ba ba ff ff       	call   0x63cdd0
  641316:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  64131a:	85 c0                	test   eax,eax
  64131c:	74 09                	je     0x641327
  64131e:	50                   	push   eax
  64131f:	e8 bc 31 ea ff       	call   0x4e44e0
  641324:	83 c4 04             	add    esp,0x4
  641327:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  64132e:	e8 fd 7f fe ff       	call   0x629330
  641333:	8b c7                	mov    eax,edi
  641335:	5f                   	pop    edi
  641336:	5b                   	pop    ebx
  641337:	5e                   	pop    esi
  641338:	5d                   	pop    ebp
  641339:	81 c4 c0 01 00 00    	add    esp,0x1c0
  64133f:	c2 34 00             	ret    0x34
  641342:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  641347:	0f 84 88 00 00 00    	je     0x6413d5
  64134d:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  641350:	2b 43 08             	sub    eax,DWORD PTR [ebx+0x8]
  641353:	a9 c0 ff ff ff       	test   eax,0xffffffc0
  641358:	74 7b                	je     0x6413d5
  64135a:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  64135d:	2b 4b 08             	sub    ecx,DWORD PTR [ebx+0x8]
  641360:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  641363:	f3 0f 10 05 f8 92 fe 00 	movss  xmm0,DWORD PTR ds:0xfe92f8
  64136b:	c1 f9 06             	sar    ecx,0x6
  64136e:	c1 e1 06             	shl    ecx,0x6
  641371:	8d 44 11 c0          	lea    eax,[ecx+edx*1-0x40]
  641375:	8b f0                	mov    esi,eax
  641377:	b9 10 00 00 00       	mov    ecx,0x10
  64137c:	8d bc 24 8c 01 00 00 	lea    edi,[esp+0x18c]
  641383:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  641385:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
  64138c:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  641390:	f3 0f 10 48 0c       	movss  xmm1,DWORD PTR [eax+0xc]
  641395:	f3 0f 59 c8          	mulss  xmm1,xmm0
  641399:	f3 0f 58 8c 24 8c 01 00 00 	addss  xmm1,DWORD PTR [esp+0x18c]
  6413a2:	f3 0f 11 8c 24 8c 01 00 00 	movss  DWORD PTR [esp+0x18c],xmm1
  6413ab:	f3 0f 10 48 10       	movss  xmm1,DWORD PTR [eax+0x10]
  6413b0:	8d 84 24 8c 01 00 00 	lea    eax,[esp+0x18c]
  6413b7:	f3 0f 59 c8          	mulss  xmm1,xmm0
  6413bb:	f3 0f 58 8c 24 94 01 00 00 	addss  xmm1,DWORD PTR [esp+0x194]
  6413c4:	50                   	push   eax
  6413c5:	8b cb                	mov    ecx,ebx
  6413c7:	f3 0f 11 8c 24 98 01 00 00 	movss  DWORD PTR [esp+0x198],xmm1
  6413d0:	e8 8b 96 fe ff       	call   0x62aa60
  6413d5:	8b 84 24 00 02 00 00 	mov    eax,DWORD PTR [esp+0x200]
  6413dc:	85 c0                	test   eax,eax
  6413de:	74 12                	je     0x6413f2
  6413e0:	8b 08                	mov    ecx,DWORD PTR [eax]
  6413e2:	51                   	push   ecx
  6413e3:	8d 94 24 d4 00 00 00 	lea    edx,[esp+0xd4]
  6413ea:	52                   	push   edx
  6413eb:	8b cd                	mov    ecx,ebp
  6413ed:	e8 6e 66 fe ff       	call   0x627a60
  6413f2:	8b 7c 24 70          	mov    edi,DWORD PTR [esp+0x70]
  6413f6:	2b 7c 24 6c          	sub    edi,DWORD PTR [esp+0x6c]
  6413fa:	c1 ff 06             	sar    edi,0x6
  6413fd:	74 1c                	je     0x64141b
  6413ff:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  641403:	33 f6                	xor    esi,esi
  641405:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  641409:	03 c6                	add    eax,esi
  64140b:	50                   	push   eax
  64140c:	8b cb                	mov    ecx,ebx
  64140e:	e8 4d 96 fe ff       	call   0x62aa60
  641413:	83 c6 40             	add    esi,0x40
  641416:	83 ef 01             	sub    edi,0x1
  641419:	75 ea                	jne    0x641405
  64141b:	80 3d 4c 92 15 01 00 	cmp    BYTE PTR ds:0x115924c,0x0
  641422:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  641426:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  64142a:	0f 84 c7 00 00 00    	je     0x6414f7
  641430:	8b 8c 24 d8 01 00 00 	mov    ecx,DWORD PTR [esp+0x1d8]
  641437:	8b 01                	mov    eax,DWORD PTR [ecx]
  641439:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  64143c:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  64143f:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  641443:	89 94 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],edx
  64144a:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  64144d:	89 8c 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],ecx
  641454:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  64145d:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  641462:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  641469:	51                   	push   ecx
  64146a:	89 94 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],edx
  641471:	8b d1                	mov    edx,ecx
  641473:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  64147c:	f3 0f 10 40 14       	movss  xmm0,DWORD PTR [eax+0x14]
  641481:	52                   	push   edx
  641482:	f3 0f 11 84 24 a0 00 00 00 	movss  DWORD PTR [esp+0xa0],xmm0
  64148b:	f3 0f 10 40 18       	movss  xmm0,DWORD PTR [eax+0x18]
  641490:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
  641493:	57                   	push   edi
  641494:	56                   	push   esi
  641495:	8b cd                	mov    ecx,ebp
  641497:	f3 0f 11 84 24 ac 00 00 00 	movss  DWORD PTR [esp+0xac],xmm0
  6414a0:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
  6414a7:	e8 b4 e0 fe ff       	call   0x62f560
  6414ac:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  6414b3:	e8 68 d9 00 00       	call   0x64ee20
  6414b8:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  6414bc:	6a 00                	push   0x0
  6414be:	8d 84 24 88 00 00 00 	lea    eax,[esp+0x88]
  6414c5:	50                   	push   eax
  6414c6:	53                   	push   ebx
  6414c7:	8d 8c 24 dc 00 00 00 	lea    ecx,[esp+0xdc]
  6414ce:	51                   	push   ecx
  6414cf:	8b cd                	mov    ecx,ebp
  6414d1:	e8 2a ef fe ff       	call   0x630400
  6414d6:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
  6414dd:	85 c0                	test   eax,eax
  6414df:	c7 84 24 84 00 00 00 e0 d0 fe 00 	mov    DWORD PTR [esp+0x84],0xfed0e0
  6414ea:	74 0f                	je     0x6414fb
  6414ec:	50                   	push   eax
  6414ed:	e8 ee 2f ea ff       	call   0x4e44e0
  6414f2:	83 c4 04             	add    esp,0x4
  6414f5:	eb 04                	jmp    0x6414fb
  6414f7:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  6414fb:	53                   	push   ebx
  6414fc:	57                   	push   edi
  6414fd:	56                   	push   esi
  6414fe:	8b cd                	mov    ecx,ebp
  641500:	e8 5b e4 fe ff       	call   0x62f960
  641505:	8b 84 24 00 02 00 00 	mov    eax,DWORD PTR [esp+0x200]
  64150c:	85 c0                	test   eax,eax
  64150e:	74 0c                	je     0x64151c
  641510:	8b 10                	mov    edx,DWORD PTR [eax]
  641512:	52                   	push   edx
  641513:	57                   	push   edi
  641514:	56                   	push   esi
  641515:	8b cd                	mov    ecx,ebp
  641517:	e8 44 e6 fe ff       	call   0x62fb60
  64151c:	8b 84 24 e8 01 00 00 	mov    eax,DWORD PTR [esp+0x1e8]
  641523:	85 c0                	test   eax,eax
  641525:	74 0a                	je     0x641531
  641527:	89 18                	mov    DWORD PTR [eax],ebx
  641529:	8b 03                	mov    eax,DWORD PTR [ebx]
  64152b:	8b 10                	mov    edx,DWORD PTR [eax]
  64152d:	8b cb                	mov    ecx,ebx
  64152f:	ff d2                	call   edx
  641531:	8b 84 24 ec 01 00 00 	mov    eax,DWORD PTR [esp+0x1ec]
  641538:	85 c0                	test   eax,eax
  64153a:	74 06                	je     0x641542
  64153c:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  641542:	8b 84 24 f0 01 00 00 	mov    eax,DWORD PTR [esp+0x1f0]
  641549:	85 c0                	test   eax,eax
  64154b:	74 06                	je     0x641553
  64154d:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  641551:	89 08                	mov    DWORD PTR [eax],ecx
  641553:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  641557:	85 c0                	test   eax,eax
  641559:	c7 44 24 64 e0 d0 fe 00 	mov    DWORD PTR [esp+0x64],0xfed0e0
  641561:	74 09                	je     0x64156c
  641563:	50                   	push   eax
  641564:	e8 77 2f ea ff       	call   0x4e44e0
  641569:	83 c4 04             	add    esp,0x4
  64156c:	8b 84 24 30 01 00 00 	mov    eax,DWORD PTR [esp+0x130]
  641573:	85 c0                	test   eax,eax
  641575:	c7 44 24 64 80 2b fa 00 	mov    DWORD PTR [esp+0x64],0xfa2b80
  64157d:	74 09                	je     0x641588
  64157f:	50                   	push   eax
  641580:	e8 5b 2f ea ff       	call   0x4e44e0
  641585:	83 c4 04             	add    esp,0x4
  641588:	85 db                	test   ebx,ebx
  64158a:	74 09                	je     0x641595
  64158c:	8b 13                	mov    edx,DWORD PTR [ebx]
  64158e:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  641591:	8b cb                	mov    ecx,ebx
  641593:	ff d0                	call   eax
  641595:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  641599:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  64159d:	51                   	push   ecx
  64159e:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  6415a2:	52                   	push   edx
  6415a3:	e8 28 b8 ff ff       	call   0x63cdd0
  6415a8:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  6415ac:	85 c0                	test   eax,eax
  6415ae:	74 09                	je     0x6415b9
  6415b0:	50                   	push   eax
  6415b1:	e8 2a 2f ea ff       	call   0x4e44e0
  6415b6:	83 c4 04             	add    esp,0x4
  6415b9:	8b 84 24 f4 00 00 00 	mov    eax,DWORD PTR [esp+0xf4]
  6415c0:	8b 8c 24 f0 00 00 00 	mov    ecx,DWORD PTR [esp+0xf0]
  6415c7:	50                   	push   eax
  6415c8:	51                   	push   ecx
  6415c9:	8d 8c 24 d8 00 00 00 	lea    ecx,[esp+0xd8]
  6415d0:	e8 1b 52 39 00       	call   0x9d67f0
  6415d5:	83 bc 24 f4 00 00 00 01 	cmp    DWORD PTR [esp+0xf4],0x1
  6415dd:	c7 84 24 f8 00 00 00 00 00 00 00 	mov    DWORD PTR [esp+0xf8],0x0
  6415e8:	0f 86 19 f0 ff ff    	jbe    0x640607
  6415ee:	8b 94 24 f0 00 00 00 	mov    edx,DWORD PTR [esp+0xf0]
  6415f5:	52                   	push   edx
  6415f6:	e8 e5 2e ea ff       	call   0x4e44e0
  6415fb:	83 c4 04             	add    esp,0x4
  6415fe:	5f                   	pop    edi
  6415ff:	5b                   	pop    ebx
  641600:	5e                   	pop    esi
  641601:	33 c0                	xor    eax,eax
  641603:	5d                   	pop    ebp
  641604:	81 c4 c0 01 00 00    	add    esp,0x1c0
  64160a:	c2 34 00             	ret    0x34
  64160d:	5e                   	pop    esi
  64160e:	b8 01 00 00 00       	mov    eax,0x1
  641613:	5d                   	pop    ebp
  641614:	81 c4 c0 01 00 00    	add    esp,0x1c0
  64161a:	c2 34 00             	ret    0x34

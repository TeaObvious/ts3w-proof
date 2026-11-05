# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c34000 (WallCutaway_CommitEndpointTransitions)
Full Ghidra function-body envelope: 0x00c34000..0x00c34688 (exclusive end)
Ghidra body ranges: [[00c34000, 00c3404c] [00c34050, 00c34156] [00c34160, 00c342b7] [00c342c0, 00c342e8] [00c342f0, 00c34687]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c34000 <.text+0x833000>:
  c34000:	55                   	push   ebp
  c34001:	8b ec                	mov    ebp,esp
  c34003:	83 e4 f8             	and    esp,0xfffffff8
  c34006:	81 ec 80 00 00 00    	sub    esp,0x80
  c3400c:	53                   	push   ebx
  c3400d:	55                   	push   ebp
  c3400e:	56                   	push   esi
  c3400f:	8b f1                	mov    esi,ecx
  c34011:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c34014:	8b 88 70 02 00 00    	mov    ecx,DWORD PTR [eax+0x270]
  c3401a:	8b 90 7c 02 00 00    	mov    edx,DWORD PTR [eax+0x27c]
  c34020:	8b 80 78 02 00 00    	mov    eax,DWORD PTR [eax+0x278]
  c34026:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  c3402a:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
  c34030:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
  c34033:	83 c0 04             	add    eax,0x4
  c34036:	3b d8                	cmp    ebx,eax
  c34038:	57                   	push   edi
  c34039:	89 4c 24 58          	mov    DWORD PTR [esp+0x58],ecx
  c3403d:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
  c34041:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  c34045:	0f 84 b0 00 00 00    	je     0xc340fb
  c3404b:	eb 03                	jmp    0xc34050
  c3404d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c34050:	f6 43 20 08          	test   BYTE PTR [ebx+0x20],0x8
  c34054:	8d 6b 10             	lea    ebp,[ebx+0x10]
  c34057:	0f 85 89 00 00 00    	jne    0xc340e6
  c3405d:	33 ff                	xor    edi,edi
  c3405f:	90                   	nop
  c34060:	8b 4c bc 58          	mov    ecx,DWORD PTR [esp+edi*4+0x58]
  c34064:	55                   	push   ebp
  c34065:	e8 f6 d7 00 00       	call   0xc41860
  c3406a:	85 c0                	test   eax,eax
  c3406c:	75 0a                	jne    0xc34078
  c3406e:	83 c7 01             	add    edi,0x1
  c34071:	83 ff 03             	cmp    edi,0x3
  c34074:	7c ea                	jl     0xc34060
  c34076:	eb 6e                	jmp    0xc340e6
  c34078:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  c3407b:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  c3407f:	8b e8                	mov    ebp,eax
  c34081:	8b cd                	mov    ecx,ebp
  c34083:	e8 88 1f 00 00       	call   0xc36010
  c34088:	0f be 48 04          	movsx  ecx,BYTE PTR [eax+0x4]
  c3408c:	0f be 50 05          	movsx  edx,BYTE PTR [eax+0x5]
  c34090:	8b be 88 00 00 00    	mov    edi,DWORD PTR [esi+0x88]
  c34096:	83 c0 04             	add    eax,0x4
  c34099:	0f be 40 02          	movsx  eax,BYTE PTR [eax+0x2]
  c3409d:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  c340a1:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  c340a7:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  c340ab:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  c340af:	51                   	push   ecx
  c340b0:	8d 54 24 30          	lea    edx,[esp+0x30]
  c340b4:	52                   	push   edx
  c340b5:	8b cf                	mov    ecx,edi
  c340b7:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  c340bd:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  c340c1:	e8 fa fa ec ff       	call   0xb03bc0
  c340c6:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  c340ca:	83 c7 04             	add    edi,0x4
  c340cd:	3b c7                	cmp    eax,edi
  c340cf:	74 11                	je     0xc340e2
  c340d1:	f6 40 20 08          	test   BYTE PTR [eax+0x20],0x8
  c340d5:	75 0b                	jne    0xc340e2
  c340d7:	8b 6d 04             	mov    ebp,DWORD PTR [ebp+0x4]
  c340da:	3b 6c 24 28          	cmp    ebp,DWORD PTR [esp+0x28]
  c340de:	75 a1                	jne    0xc34081
  c340e0:	eb 04                	jmp    0xc340e6
  c340e2:	83 4b 20 10          	or     DWORD PTR [ebx+0x20],0x10
  c340e6:	53                   	push   ebx
  c340e7:	e8 44 cf 8a ff       	call   0x4e1030
  c340ec:	8b d8                	mov    ebx,eax
  c340ee:	83 c4 04             	add    esp,0x4
  c340f1:	3b 5c 24 18          	cmp    ebx,DWORD PTR [esp+0x18]
  c340f5:	0f 85 55 ff ff ff    	jne    0xc34050
  c340fb:	80 be b2 00 00 00 00 	cmp    BYTE PTR [esi+0xb2],0x0
  c34102:	0f 84 7c 01 00 00    	je     0xc34284
  c34108:	8b be 8c 00 00 00    	mov    edi,DWORD PTR [esi+0x8c]
  c3410e:	8b 5f 0c             	mov    ebx,DWORD PTR [edi+0xc]
  c34111:	85 db                	test   ebx,ebx
  c34113:	74 1c                	je     0xc34131
  c34115:	8b 03                	mov    eax,DWORD PTR [ebx]
  c34117:	50                   	push   eax
  c34118:	8b cf                	mov    ecx,edi
  c3411a:	e8 91 d8 c7 ff       	call   0x8b19b0
  c3411f:	8b 6b 04             	mov    ebp,DWORD PTR [ebx+0x4]
  c34122:	53                   	push   ebx
  c34123:	e8 b8 03 8b ff       	call   0x4e44e0
  c34128:	83 c4 04             	add    esp,0x4
  c3412b:	85 ed                	test   ebp,ebp
  c3412d:	8b dd                	mov    ebx,ebp
  c3412f:	75 e4                	jne    0xc34115
  c34131:	8d 47 04             	lea    eax,[edi+0x4]
  c34134:	89 00                	mov    DWORD PTR [eax],eax
  c34136:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  c34139:	33 c0                	xor    eax,eax
  c3413b:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
  c3413e:	88 47 10             	mov    BYTE PTR [edi+0x10],al
  c34141:	89 47 14             	mov    DWORD PTR [edi+0x14],eax
  c34144:	8b 6e 40             	mov    ebp,DWORD PTR [esi+0x40]
  c34147:	8b 5e 44             	mov    ebx,DWORD PTR [esi+0x44]
  c3414a:	3b eb                	cmp    ebp,ebx
  c3414c:	0f 84 f9 00 00 00    	je     0xc3424b
  c34152:	8d 7d 05             	lea    edi,[ebp+0x5]
  c34155:	eb 09                	jmp    0xc34160
  c34157:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  c3415e:	8b ff                	mov    edi,edi
  c34160:	0f be 47 fd          	movsx  eax,BYTE PTR [edi-0x3]
  c34164:	0f be 4d 00          	movsx  ecx,BYTE PTR [ebp+0x0]
  c34168:	0f be 57 fc          	movsx  edx,BYTE PTR [edi-0x4]
  c3416c:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  c34170:	89 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],eax
  c34177:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  c3417d:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  c34181:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  c34185:	b8 01 00 00 00       	mov    eax,0x1
  c3418a:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
  c34191:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  c34197:	8b 54 24 68          	mov    edx,DWORD PTR [esp+0x68]
  c3419b:	89 4c 24 7c          	mov    DWORD PTR [esp+0x7c],ecx
  c3419f:	c6 44 24 2c 00       	mov    BYTE PTR [esp+0x2c],0x0
  c341a4:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  c341a8:	50                   	push   eax
  c341a9:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  c341b0:	89 94 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edx
  c341b7:	51                   	push   ecx
  c341b8:	8b 8e 8c 00 00 00    	mov    ecx,DWORD PTR [esi+0x8c]
  c341be:	8d 54 24 58          	lea    edx,[esp+0x58]
  c341c2:	52                   	push   edx
  c341c3:	89 ac 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ebp
  c341ca:	e8 c1 f1 ff ff       	call   0xc33390
  c341cf:	0f be 47 fe          	movsx  eax,BYTE PTR [edi-0x2]
  c341d3:	0f be 4f ff          	movsx  ecx,BYTE PTR [edi-0x1]
  c341d7:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  c341db:	0f be 07             	movsx  eax,BYTE PTR [edi]
  c341de:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  c341e4:	8b 54 24 70          	mov    edx,DWORD PTR [esp+0x70]
  c341e8:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  c341ec:	89 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],eax
  c341f3:	89 54 24 7c          	mov    DWORD PTR [esp+0x7c],edx
  c341f7:	b8 02 00 00 00       	mov    eax,0x2
  c341fc:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  c34202:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  c34206:	c6 44 24 28 00       	mov    BYTE PTR [esp+0x28],0x0
  c3420b:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  c3420f:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
  c34216:	52                   	push   edx
  c34217:	89 8c 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],ecx
  c3421e:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  c34225:	50                   	push   eax
  c34226:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  c3422a:	51                   	push   ecx
  c3422b:	8b 8e 8c 00 00 00    	mov    ecx,DWORD PTR [esi+0x8c]
  c34231:	89 ac 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ebp
  c34238:	e8 53 f1 ff ff       	call   0xc33390
  c3423d:	83 c5 06             	add    ebp,0x6
  c34240:	83 c7 06             	add    edi,0x6
  c34243:	3b eb                	cmp    ebp,ebx
  c34245:	0f 85 15 ff ff ff    	jne    0xc34160
  c3424b:	8b 96 8c 00 00 00    	mov    edx,DWORD PTR [esi+0x8c]
  c34251:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
  c34257:	52                   	push   edx
  c34258:	50                   	push   eax
  c34259:	e8 52 ed ff ff       	call   0xc32fb0
  c3425e:	8b 8e 88 00 00 00    	mov    ecx,DWORD PTR [esi+0x88]
  c34264:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  c34267:	8d 79 04             	lea    edi,[ecx+0x4]
  c3426a:	83 c4 08             	add    esp,0x8
  c3426d:	3b c7                	cmp    eax,edi
  c3426f:	74 29                	je     0xc3429a
  c34271:	83 48 20 04          	or     DWORD PTR [eax+0x20],0x4
  c34275:	50                   	push   eax
  c34276:	e8 b5 cd 8a ff       	call   0x4e1030
  c3427b:	83 c4 04             	add    esp,0x4
  c3427e:	3b c7                	cmp    eax,edi
  c34280:	75 ef                	jne    0xc34271
  c34282:	eb 16                	jmp    0xc3429a
  c34284:	8b 8e 8c 00 00 00    	mov    ecx,DWORD PTR [esi+0x8c]
  c3428a:	8b 96 88 00 00 00    	mov    edx,DWORD PTR [esi+0x88]
  c34290:	51                   	push   ecx
  c34291:	52                   	push   edx
  c34292:	e8 19 ed ff ff       	call   0xc32fb0
  c34297:	83 c4 08             	add    esp,0x8
  c3429a:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
  c342a0:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
  c342a3:	83 c0 04             	add    eax,0x4
  c342a6:	3b e8                	cmp    ebp,eax
  c342a8:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  c342ac:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  c342b0:	0f 84 b3 01 00 00    	je     0xc34469
  c342b6:	eb 0c                	jmp    0xc342c4
  c342b8:	eb 06                	jmp    0xc342c0
  c342ba:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  c342c0:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  c342c4:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  c342c7:	a8 04                	test   al,0x4
  c342c9:	0f 84 83 01 00 00    	je     0xc34452
  c342cf:	a8 10                	test   al,0x10
  c342d1:	0f 85 7b 01 00 00    	jne    0xc34452
  c342d7:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c342da:	6a 00                	push   0x0
  c342dc:	8d 7d 10             	lea    edi,[ebp+0x10]
  c342df:	57                   	push   edi
  c342e0:	e8 2b 8f 01 00       	call   0xc4d210
  c342e5:	33 db                	xor    ebx,ebx
  c342e7:	eb 07                	jmp    0xc342f0
  c342e9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  c342f0:	8b 4c 9c 58          	mov    ecx,DWORD PTR [esp+ebx*4+0x58]
  c342f4:	57                   	push   edi
  c342f5:	e8 66 d5 00 00       	call   0xc41860
  c342fa:	85 c0                	test   eax,eax
  c342fc:	75 0d                	jne    0xc3430b
  c342fe:	83 c3 01             	add    ebx,0x1
  c34301:	83 fb 03             	cmp    ebx,0x3
  c34304:	7c ea                	jl     0xc342f0
  c34306:	e9 47 01 00 00       	jmp    0xc34452
  c3430b:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  c3430e:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  c34312:	8b e8                	mov    ebp,eax
  c34314:	8b cd                	mov    ecx,ebp
  c34316:	e8 f5 1c 00 00       	call   0xc36010
  c3431b:	0f be 48 04          	movsx  ecx,BYTE PTR [eax+0x4]
  c3431f:	0f be 50 05          	movsx  edx,BYTE PTR [eax+0x5]
  c34323:	f3 0f 10 17          	movss  xmm2,DWORD PTR [edi]
  c34327:	83 c0 04             	add    eax,0x4
  c3432a:	0f be 40 02          	movsx  eax,BYTE PTR [eax+0x2]
  c3432e:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  c34332:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  c34336:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  c3433c:	f3 0f 11 4c 24 68    	movss  DWORD PTR [esp+0x68],xmm1
  c34342:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  c34346:	f3 0f 11 54 24 30    	movss  DWORD PTR [esp+0x30],xmm2
  c3434c:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  c34350:	db 5c 24 1c          	fistp  DWORD PTR [esp+0x1c]
  c34354:	0f b6 4c 24 1c       	movzx  ecx,BYTE PTR [esp+0x1c]
  c34359:	f3 0f 10 57 04       	movss  xmm2,DWORD PTR [edi+0x4]
  c3435e:	88 4c 24 48          	mov    BYTE PTR [esp+0x48],cl
  c34362:	f3 0f 11 54 24 34    	movss  DWORD PTR [esp+0x34],xmm2
  c34368:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  c3436c:	db 5c 24 20          	fistp  DWORD PTR [esp+0x20]
  c34370:	0f b6 54 24 20       	movzx  edx,BYTE PTR [esp+0x20]
  c34375:	0f b6 47 08          	movzx  eax,BYTE PTR [edi+0x8]
  c34379:	88 54 24 49          	mov    BYTE PTR [esp+0x49],dl
  c3437d:	88 44 24 4a          	mov    BYTE PTR [esp+0x4a],al
  c34381:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  c34387:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  c3438b:	db 5c 24 24          	fistp  DWORD PTR [esp+0x24]
  c3438f:	0f b6 4c 24 24       	movzx  ecx,BYTE PTR [esp+0x24]
  c34394:	88 4c 24 4b          	mov    BYTE PTR [esp+0x4b],cl
  c34398:	f3 0f 11 4c 24 3c    	movss  DWORD PTR [esp+0x3c],xmm1
  c3439e:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  c343a2:	db 5c 24 28          	fistp  DWORD PTR [esp+0x28]
  c343a6:	0f b6 54 24 28       	movzx  edx,BYTE PTR [esp+0x28]
  c343ab:	0f b6 44 24 6c       	movzx  eax,BYTE PTR [esp+0x6c]
  c343b0:	6a 00                	push   0x0
  c343b2:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  c343b6:	51                   	push   ecx
  c343b7:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c343ba:	88 54 24 54          	mov    BYTE PTR [esp+0x54],dl
  c343be:	88 44 24 55          	mov    BYTE PTR [esp+0x55],al
  c343c2:	e8 09 8f 01 00       	call   0xc4d2d0
  c343c7:	8b 9e 88 00 00 00    	mov    ebx,DWORD PTR [esi+0x88]
  c343cd:	8d 54 24 64          	lea    edx,[esp+0x64]
  c343d1:	52                   	push   edx
  c343d2:	8d 44 24 44          	lea    eax,[esp+0x44]
  c343d6:	50                   	push   eax
  c343d7:	8b cb                	mov    ecx,ebx
  c343d9:	e8 e2 f7 ec ff       	call   0xb03bc0
  c343de:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  c343e2:	83 c3 04             	add    ebx,0x4
  c343e5:	3b c3                	cmp    eax,ebx
  c343e7:	74 0b                	je     0xc343f4
  c343e9:	f6 40 20 10          	test   BYTE PTR [eax+0x20],0x10
  c343ed:	c6 44 24 2c 00       	mov    BYTE PTR [esp+0x2c],0x0
  c343f2:	74 05                	je     0xc343f9
  c343f4:	c6 44 24 2c 01       	mov    BYTE PTR [esp+0x2c],0x1
  c343f9:	66 8b 4c 24 4b       	mov    cx,WORD PTR [esp+0x4b]
  c343fe:	8a 54 24 4d          	mov    dl,BYTE PTR [esp+0x4d]
  c34402:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
  c34406:	66 8b 44 24 48       	mov    ax,WORD PTR [esp+0x48]
  c3440b:	66 89 4c 24 50       	mov    WORD PTR [esp+0x50],cx
  c34410:	8a 4c 24 4a          	mov    cl,BYTE PTR [esp+0x4a]
  c34414:	53                   	push   ebx
  c34415:	88 54 24 56          	mov    BYTE PTR [esp+0x56],dl
  c34419:	6a 00                	push   0x0
  c3441b:	8d 54 24 50          	lea    edx,[esp+0x50]
  c3441f:	88 4c 24 5d          	mov    BYTE PTR [esp+0x5d],cl
  c34423:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c34426:	52                   	push   edx
  c34427:	66 89 44 24 5f       	mov    WORD PTR [esp+0x5f],ax
  c3442c:	e8 5f 7b 01 00       	call   0xc4bf90
  c34431:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c34434:	6a 00                	push   0x0
  c34436:	53                   	push   ebx
  c34437:	8d 44 24 58          	lea    eax,[esp+0x58]
  c3443b:	50                   	push   eax
  c3443c:	e8 4f 7b 01 00       	call   0xc4bf90
  c34441:	8b 6d 04             	mov    ebp,DWORD PTR [ebp+0x4]
  c34444:	3b 6c 24 44          	cmp    ebp,DWORD PTR [esp+0x44]
  c34448:	0f 85 c6 fe ff ff    	jne    0xc34314
  c3444e:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  c34452:	55                   	push   ebp
  c34453:	e8 d8 cb 8a ff       	call   0x4e1030
  c34458:	83 c4 04             	add    esp,0x4
  c3445b:	3b 44 24 18          	cmp    eax,DWORD PTR [esp+0x18]
  c3445f:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c34463:	0f 85 57 fe ff ff    	jne    0xc342c0
  c34469:	8b 86 8c 00 00 00    	mov    eax,DWORD PTR [esi+0x8c]
  c3446f:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
  c34472:	83 c0 04             	add    eax,0x4
  c34475:	3b e8                	cmp    ebp,eax
  c34477:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  c3447b:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  c3447f:	0f 84 a6 01 00 00    	je     0xc3462b
  c34485:	eb 04                	jmp    0xc3448b
  c34487:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  c3448b:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  c3448e:	a8 04                	test   al,0x4
  c34490:	0f 84 7e 01 00 00    	je     0xc34614
  c34496:	a8 10                	test   al,0x10
  c34498:	0f 85 76 01 00 00    	jne    0xc34614
  c3449e:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c344a1:	6a 01                	push   0x1
  c344a3:	8d 7d 10             	lea    edi,[ebp+0x10]
  c344a6:	57                   	push   edi
  c344a7:	e8 64 8d 01 00       	call   0xc4d210
  c344ac:	33 db                	xor    ebx,ebx
  c344ae:	8b ff                	mov    edi,edi
  c344b0:	8b 4c 9c 58          	mov    ecx,DWORD PTR [esp+ebx*4+0x58]
  c344b4:	57                   	push   edi
  c344b5:	e8 a6 d3 00 00       	call   0xc41860
  c344ba:	85 c0                	test   eax,eax
  c344bc:	75 0d                	jne    0xc344cb
  c344be:	83 c3 01             	add    ebx,0x1
  c344c1:	83 fb 03             	cmp    ebx,0x3
  c344c4:	7c ea                	jl     0xc344b0
  c344c6:	e9 49 01 00 00       	jmp    0xc34614
  c344cb:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  c344ce:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  c344d2:	8b e8                	mov    ebp,eax
  c344d4:	8b cd                	mov    ecx,ebp
  c344d6:	e8 35 1b 00 00       	call   0xc36010
  c344db:	0f be 48 04          	movsx  ecx,BYTE PTR [eax+0x4]
  c344df:	0f be 50 05          	movsx  edx,BYTE PTR [eax+0x5]
  c344e3:	f3 0f 10 17          	movss  xmm2,DWORD PTR [edi]
  c344e7:	83 c0 04             	add    eax,0x4
  c344ea:	0f be 40 02          	movsx  eax,BYTE PTR [eax+0x2]
  c344ee:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  c344f2:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  c344f6:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  c344fc:	f3 0f 11 4c 24 68    	movss  DWORD PTR [esp+0x68],xmm1
  c34502:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  c34506:	f3 0f 11 54 24 44    	movss  DWORD PTR [esp+0x44],xmm2
  c3450c:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  c34510:	db 5c 24 2c          	fistp  DWORD PTR [esp+0x2c]
  c34514:	0f b6 4c 24 2c       	movzx  ecx,BYTE PTR [esp+0x2c]
  c34519:	f3 0f 10 57 04       	movss  xmm2,DWORD PTR [edi+0x4]
  c3451e:	88 4c 24 48          	mov    BYTE PTR [esp+0x48],cl
  c34522:	f3 0f 11 54 24 40    	movss  DWORD PTR [esp+0x40],xmm2
  c34528:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  c3452c:	db 5c 24 28          	fistp  DWORD PTR [esp+0x28]
  c34530:	0f b6 54 24 28       	movzx  edx,BYTE PTR [esp+0x28]
  c34535:	0f b6 47 08          	movzx  eax,BYTE PTR [edi+0x8]
  c34539:	88 54 24 49          	mov    BYTE PTR [esp+0x49],dl
  c3453d:	88 44 24 4a          	mov    BYTE PTR [esp+0x4a],al
  c34541:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  c34547:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  c3454b:	db 5c 24 24          	fistp  DWORD PTR [esp+0x24]
  c3454f:	0f b6 4c 24 24       	movzx  ecx,BYTE PTR [esp+0x24]
  c34554:	88 4c 24 4b          	mov    BYTE PTR [esp+0x4b],cl
  c34558:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  c3455e:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  c34562:	db 5c 24 20          	fistp  DWORD PTR [esp+0x20]
  c34566:	0f b6 54 24 20       	movzx  edx,BYTE PTR [esp+0x20]
  c3456b:	0f b6 44 24 6c       	movzx  eax,BYTE PTR [esp+0x6c]
  c34570:	8b 9e 88 00 00 00    	mov    ebx,DWORD PTR [esi+0x88]
  c34576:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  c3457a:	88 54 24 4c          	mov    BYTE PTR [esp+0x4c],dl
  c3457e:	51                   	push   ecx
  c3457f:	8d 54 24 38          	lea    edx,[esp+0x38]
  c34583:	52                   	push   edx
  c34584:	8b cb                	mov    ecx,ebx
  c34586:	88 44 24 55          	mov    BYTE PTR [esp+0x55],al
  c3458a:	e8 31 f6 ec ff       	call   0xb03bc0
  c3458f:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c34593:	83 c3 04             	add    ebx,0x4
  c34596:	3b c3                	cmp    eax,ebx
  c34598:	74 0d                	je     0xc345a7
  c3459a:	f6 40 20 10          	test   BYTE PTR [eax+0x20],0x10
  c3459e:	75 07                	jne    0xc345a7
  c345a0:	c6 44 24 1c 00       	mov    BYTE PTR [esp+0x1c],0x0
  c345a5:	eb 14                	jmp    0xc345bb
  c345a7:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c345aa:	6a 01                	push   0x1
  c345ac:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  c345b0:	50                   	push   eax
  c345b1:	c6 44 24 24 01       	mov    BYTE PTR [esp+0x24],0x1
  c345b6:	e8 15 8d 01 00       	call   0xc4d2d0
  c345bb:	66 8b 4c 24 4b       	mov    cx,WORD PTR [esp+0x4b]
  c345c0:	8a 54 24 4d          	mov    dl,BYTE PTR [esp+0x4d]
  c345c4:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  c345c8:	66 8b 44 24 48       	mov    ax,WORD PTR [esp+0x48]
  c345cd:	66 89 4c 24 50       	mov    WORD PTR [esp+0x50],cx
  c345d2:	8a 4c 24 4a          	mov    cl,BYTE PTR [esp+0x4a]
  c345d6:	53                   	push   ebx
  c345d7:	88 54 24 56          	mov    BYTE PTR [esp+0x56],dl
  c345db:	6a 01                	push   0x1
  c345dd:	8d 54 24 50          	lea    edx,[esp+0x50]
  c345e1:	88 4c 24 5d          	mov    BYTE PTR [esp+0x5d],cl
  c345e5:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c345e8:	52                   	push   edx
  c345e9:	66 89 44 24 5f       	mov    WORD PTR [esp+0x5f],ax
  c345ee:	e8 9d 79 01 00       	call   0xc4bf90
  c345f3:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c345f6:	6a 01                	push   0x1
  c345f8:	53                   	push   ebx
  c345f9:	8d 44 24 58          	lea    eax,[esp+0x58]
  c345fd:	50                   	push   eax
  c345fe:	e8 8d 79 01 00       	call   0xc4bf90
  c34603:	8b 6d 04             	mov    ebp,DWORD PTR [ebp+0x4]
  c34606:	3b 6c 24 30          	cmp    ebp,DWORD PTR [esp+0x30]
  c3460a:	0f 85 c4 fe ff ff    	jne    0xc344d4
  c34610:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  c34614:	55                   	push   ebp
  c34615:	e8 16 ca 8a ff       	call   0x4e1030
  c3461a:	83 c4 04             	add    esp,0x4
  c3461d:	3b 44 24 18          	cmp    eax,DWORD PTR [esp+0x18]
  c34621:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c34625:	0f 85 5c fe ff ff    	jne    0xc34487
  c3462b:	8b 8e 8c 00 00 00    	mov    ecx,DWORD PTR [esi+0x8c]
  c34631:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
  c34637:	89 8e 88 00 00 00    	mov    DWORD PTR [esi+0x88],ecx
  c3463d:	89 86 8c 00 00 00    	mov    DWORD PTR [esi+0x8c],eax
  c34643:	8b b6 88 00 00 00    	mov    esi,DWORD PTR [esi+0x88]
  c34649:	8b 7e 0c             	mov    edi,DWORD PTR [esi+0xc]
  c3464c:	33 ed                	xor    ebp,ebp
  c3464e:	3b fd                	cmp    edi,ebp
  c34650:	74 1c                	je     0xc3466e
  c34652:	8b 17                	mov    edx,DWORD PTR [edi]
  c34654:	52                   	push   edx
  c34655:	8b ce                	mov    ecx,esi
  c34657:	e8 54 d3 c7 ff       	call   0x8b19b0
  c3465c:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
  c3465f:	57                   	push   edi
  c34660:	e8 7b fe 8a ff       	call   0x4e44e0
  c34665:	83 c4 04             	add    esp,0x4
  c34668:	3b dd                	cmp    ebx,ebp
  c3466a:	8b fb                	mov    edi,ebx
  c3466c:	75 e4                	jne    0xc34652
  c3466e:	8d 46 04             	lea    eax,[esi+0x4]
  c34671:	5f                   	pop    edi
  c34672:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  c34675:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
  c34678:	c6 46 10 00          	mov    BYTE PTR [esi+0x10],0x0
  c3467c:	89 6e 14             	mov    DWORD PTR [esi+0x14],ebp
  c3467f:	89 00                	mov    DWORD PTR [eax],eax
  c34681:	5e                   	pop    esi
  c34682:	5d                   	pop    ebp
  c34683:	5b                   	pop    ebx
  c34684:	8b e5                	mov    esp,ebp
  c34686:	5d                   	pop    ebp
  c34687:	c3                   	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3PipelineHelper.dll CAW 1.22.10 original-byte window and independent linear disassembly
Export: ConvertArray at 0x10036120
Paired annotated Ghidra pseudocode: 10036120_ConvertArray.c
Window: [0x10036120, 0x10036341) (545 bytes, stop exclusive)
Ghidra function-body intervals: [0x10036120, 0x10036341)
Boundary rule: entry through the maximum address of the currently defined Ghidra body.
This is a bounded original-file byte window, not a proof of complete function extent;
it can include gaps, padding, or data. Branches and noncontiguous bodies may extend beyond it.
GNU objdump decodes linearly in Intel syntax; verify control flow against bytes and pseudocode.

ORIGINAL BYTES (16 per line)
10036120: 8b 44 24 08 83 c0 ff 83 f8 12 0f 87 10 02 00 00
10036130: ff 24 85 44 63 03 10 8b 44 24 10 8b 4c 24 14 8b
10036140: 54 24 0c 50 8b 44 24 08 51 52 50 e8 f0 a6 ff ff
10036150: 83 c4 10 c3 8b 4c 24 10 8b 54 24 14 8b 44 24 0c
10036160: 51 8b 4c 24 08 52 50 51 e8 f3 a8 ff ff 83 c4 10
10036170: c3 8b 54 24 10 8b 44 24 14 8b 4c 24 0c 52 8b 54
10036180: 24 08 50 51 52 e8 f6 aa ff ff 83 c4 10 c3 8b 44
10036190: 24 10 8b 4c 24 14 8b 54 24 0c 50 8b 44 24 08 51
100361a0: 52 50 e8 f9 ac ff ff 83 c4 10 c3 8b 4c 24 10 8b
100361b0: 54 24 14 8b 44 24 0c 51 8b 4c 24 08 52 50 51 e8
100361c0: fc ae ff ff 83 c4 10 c3 8b 54 24 10 8b 44 24 14
100361d0: 8b 4c 24 0c 52 8b 54 24 08 50 51 52 e8 ff b0 ff
100361e0: ff 83 c4 10 c3 8b 44 24 10 8b 4c 24 14 8b 54 24
100361f0: 0c 50 8b 44 24 08 51 52 50 e8 02 b3 ff ff 83 c4
10036200: 10 c3 8b 4c 24 10 8b 54 24 14 8b 44 24 0c 51 8b
10036210: 4c 24 08 52 50 51 e8 05 b5 ff ff 83 c4 10 c3 8b
10036220: 54 24 10 8b 44 24 14 8b 4c 24 0c 52 8b 54 24 08
10036230: 50 51 52 e8 08 b7 ff ff 83 c4 10 c3 8b 44 24 10
10036240: 8b 4c 24 14 8b 54 24 0c 50 8b 44 24 08 51 52 50
10036250: e8 0b b9 ff ff 83 c4 10 c3 8b 4c 24 10 8b 54 24
10036260: 14 8b 44 24 0c 51 8b 4c 24 08 52 50 51 e8 0e bb
10036270: ff ff 83 c4 10 c3 8b 54 24 10 8b 44 24 14 8b 4c
10036280: 24 0c 52 8b 54 24 08 50 51 52 e8 11 bd ff ff 83
10036290: c4 10 c3 8b 44 24 10 8b 4c 24 14 8b 54 24 0c 50
100362a0: 8b 44 24 08 51 52 50 e8 14 bf ff ff 83 c4 10 c3
100362b0: 8b 4c 24 10 8b 54 24 14 8b 44 24 0c 51 8b 4c 24
100362c0: 08 52 50 51 e8 17 c1 ff ff 83 c4 10 c3 8b 54 24
100362d0: 10 8b 44 24 14 8b 4c 24 0c 52 8b 54 24 08 50 51
100362e0: 52 e8 1a c3 ff ff 83 c4 10 c3 8b 44 24 10 8b 4c
100362f0: 24 14 8b 54 24 0c 50 8b 44 24 08 51 52 50 e8 1d
10036300: c5 ff ff 83 c4 10 c3 8b 4c 24 10 8b 54 24 14 8b
10036310: 44 24 0c 51 8b 4c 24 08 52 50 51 e8 20 c7 ff ff
10036320: 83 c4 10 c3 8b 54 24 10 8b 44 24 14 8b 4c 24 0c
10036330: 52 8b 54 24 08 50 51 52 e8 23 c9 ff ff 83 c4 10
10036340: c3

LINEAR DISASSEMBLY
10036120 <.text+0x35120>:
10036120:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10036124:	83 c0 ff             	add    eax,0xffffffff
10036127:	83 f8 12             	cmp    eax,0x12
1003612a:	0f 87 10 02 00 00    	ja     0x10036340
10036130:	ff 24 85 44 63 03 10 	jmp    DWORD PTR [eax*4+0x10036344]
10036137:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1003613b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1003613f:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10036143:	50                   	push   eax
10036144:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10036148:	51                   	push   ecx
10036149:	52                   	push   edx
1003614a:	50                   	push   eax
1003614b:	e8 f0 a6 ff ff       	call   0x10030840
10036150:	83 c4 10             	add    esp,0x10
10036153:	c3                   	ret
10036154:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10036158:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
1003615c:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
10036160:	51                   	push   ecx
10036161:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
10036165:	52                   	push   edx
10036166:	50                   	push   eax
10036167:	51                   	push   ecx
10036168:	e8 f3 a8 ff ff       	call   0x10030a60
1003616d:	83 c4 10             	add    esp,0x10
10036170:	c3                   	ret
10036171:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036175:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
10036179:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1003617d:	52                   	push   edx
1003617e:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
10036182:	50                   	push   eax
10036183:	51                   	push   ecx
10036184:	52                   	push   edx
10036185:	e8 f6 aa ff ff       	call   0x10030c80
1003618a:	83 c4 10             	add    esp,0x10
1003618d:	c3                   	ret
1003618e:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10036192:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036196:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1003619a:	50                   	push   eax
1003619b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1003619f:	51                   	push   ecx
100361a0:	52                   	push   edx
100361a1:	50                   	push   eax
100361a2:	e8 f9 ac ff ff       	call   0x10030ea0
100361a7:	83 c4 10             	add    esp,0x10
100361aa:	c3                   	ret
100361ab:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
100361af:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
100361b3:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
100361b7:	51                   	push   ecx
100361b8:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
100361bc:	52                   	push   edx
100361bd:	50                   	push   eax
100361be:	51                   	push   ecx
100361bf:	e8 fc ae ff ff       	call   0x100310c0
100361c4:	83 c4 10             	add    esp,0x10
100361c7:	c3                   	ret
100361c8:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100361cc:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
100361d0:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100361d4:	52                   	push   edx
100361d5:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
100361d9:	50                   	push   eax
100361da:	51                   	push   ecx
100361db:	52                   	push   edx
100361dc:	e8 ff b0 ff ff       	call   0x100312e0
100361e1:	83 c4 10             	add    esp,0x10
100361e4:	c3                   	ret
100361e5:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100361e9:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100361ed:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
100361f1:	50                   	push   eax
100361f2:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
100361f6:	51                   	push   ecx
100361f7:	52                   	push   edx
100361f8:	50                   	push   eax
100361f9:	e8 02 b3 ff ff       	call   0x10031500
100361fe:	83 c4 10             	add    esp,0x10
10036201:	c3                   	ret
10036202:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10036206:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
1003620a:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1003620e:	51                   	push   ecx
1003620f:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
10036213:	52                   	push   edx
10036214:	50                   	push   eax
10036215:	51                   	push   ecx
10036216:	e8 05 b5 ff ff       	call   0x10031720
1003621b:	83 c4 10             	add    esp,0x10
1003621e:	c3                   	ret
1003621f:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036223:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
10036227:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1003622b:	52                   	push   edx
1003622c:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
10036230:	50                   	push   eax
10036231:	51                   	push   ecx
10036232:	52                   	push   edx
10036233:	e8 08 b7 ff ff       	call   0x10031940
10036238:	83 c4 10             	add    esp,0x10
1003623b:	c3                   	ret
1003623c:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10036240:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10036244:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10036248:	50                   	push   eax
10036249:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1003624d:	51                   	push   ecx
1003624e:	52                   	push   edx
1003624f:	50                   	push   eax
10036250:	e8 0b b9 ff ff       	call   0x10031b60
10036255:	83 c4 10             	add    esp,0x10
10036258:	c3                   	ret
10036259:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1003625d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10036261:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
10036265:	51                   	push   ecx
10036266:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
1003626a:	52                   	push   edx
1003626b:	50                   	push   eax
1003626c:	51                   	push   ecx
1003626d:	e8 0e bb ff ff       	call   0x10031d80
10036272:	83 c4 10             	add    esp,0x10
10036275:	c3                   	ret
10036276:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1003627a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1003627e:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10036282:	52                   	push   edx
10036283:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
10036287:	50                   	push   eax
10036288:	51                   	push   ecx
10036289:	52                   	push   edx
1003628a:	e8 11 bd ff ff       	call   0x10031fa0
1003628f:	83 c4 10             	add    esp,0x10
10036292:	c3                   	ret
10036293:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10036297:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1003629b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1003629f:	50                   	push   eax
100362a0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
100362a4:	51                   	push   ecx
100362a5:	52                   	push   edx
100362a6:	50                   	push   eax
100362a7:	e8 14 bf ff ff       	call   0x100321c0
100362ac:	83 c4 10             	add    esp,0x10
100362af:	c3                   	ret
100362b0:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
100362b4:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
100362b8:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
100362bc:	51                   	push   ecx
100362bd:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
100362c1:	52                   	push   edx
100362c2:	50                   	push   eax
100362c3:	51                   	push   ecx
100362c4:	e8 17 c1 ff ff       	call   0x100323e0
100362c9:	83 c4 10             	add    esp,0x10
100362cc:	c3                   	ret
100362cd:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100362d1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
100362d5:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100362d9:	52                   	push   edx
100362da:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
100362de:	50                   	push   eax
100362df:	51                   	push   ecx
100362e0:	52                   	push   edx
100362e1:	e8 1a c3 ff ff       	call   0x10032600
100362e6:	83 c4 10             	add    esp,0x10
100362e9:	c3                   	ret
100362ea:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100362ee:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100362f2:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
100362f6:	50                   	push   eax
100362f7:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
100362fb:	51                   	push   ecx
100362fc:	52                   	push   edx
100362fd:	50                   	push   eax
100362fe:	e8 1d c5 ff ff       	call   0x10032820
10036303:	83 c4 10             	add    esp,0x10
10036306:	c3                   	ret
10036307:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1003630b:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
1003630f:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
10036313:	51                   	push   ecx
10036314:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
10036318:	52                   	push   edx
10036319:	50                   	push   eax
1003631a:	51                   	push   ecx
1003631b:	e8 20 c7 ff ff       	call   0x10032a40
10036320:	83 c4 10             	add    esp,0x10
10036323:	c3                   	ret
10036324:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10036328:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1003632c:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10036330:	52                   	push   edx
10036331:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
10036335:	50                   	push   eax
10036336:	51                   	push   ecx
10036337:	52                   	push   edx
10036338:	e8 23 c9 ff ff       	call   0x10032c60
1003633d:	83 c4 10             	add    esp,0x10
10036340:	c3                   	ret

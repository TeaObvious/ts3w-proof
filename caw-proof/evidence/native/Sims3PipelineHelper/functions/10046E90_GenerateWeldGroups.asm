# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3PipelineHelper.dll CAW 1.22.10 original-byte window and independent linear disassembly
Export: GenerateWeldGroups at 0x10046e90
Paired annotated Ghidra pseudocode: 10046E90_GenerateWeldGroups.c
Window: [0x10046e90, 0x10047107) (631 bytes, stop exclusive)
Ghidra function-body intervals: [0x10046e90, 0x10047107)
Boundary rule: entry through the maximum address of the currently defined Ghidra body.
This is a bounded original-file byte window, not a proof of complete function extent;
it can include gaps, padding, or data. Branches and noncontiguous bodies may extend beyond it.
GNU objdump decodes linearly in Intel syntax; verify control flow against bytes and pseudocode.

ORIGINAL BYTES (16 per line)
10046e90: 8b 44 24 0c 83 c0 ff 83 f8 12 0f 87 47 02 00 00
10046ea0: ff 24 85 08 71 04 10 d9 44 24 14 8b 44 24 10 8b
10046eb0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 fd
10046ec0: c8 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046ed0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 cd
10046ee0: ca ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046ef0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 dd
10046f00: cc ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046f10: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 5d
10046f20: cf ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046f30: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 dd
10046f40: d1 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046f50: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 8d
10046f60: d3 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046f70: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 0d
10046f80: d6 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046f90: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 dd
10046fa0: d8 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046fb0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 dd
10046fc0: da ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046fd0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 0d
10046fe0: dd ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10046ff0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 3d
10047000: df ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10047010: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 ed
10047020: e1 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10047030: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 dd
10047040: e4 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10047050: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 cd
10047060: e7 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10047070: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 3d
10047080: f7 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
10047090: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 4d
100470a0: fa ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
100470b0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 fd
100470c0: e9 ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
100470d0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 ed
100470e0: ed ff ff 83 c4 10 c3 d9 44 24 14 8b 44 24 10 8b
100470f0: 54 24 04 51 8b 4c 24 0c d9 1c 24 50 51 52 e8 7d
10047100: f3 ff ff 83 c4 10 c3

LINEAR DISASSEMBLY
10046e90 <.text+0x45e90>:
10046e90:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
10046e94:	83 c0 ff             	add    eax,0xffffffff
10046e97:	83 f8 12             	cmp    eax,0x12
10046e9a:	0f 87 47 02 00 00    	ja     0x100470e7
10046ea0:	ff 24 85 08 71 04 10 	jmp    DWORD PTR [eax*4+0x10047108]
10046ea7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046eab:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046eaf:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046eb3:	51                   	push   ecx
10046eb4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046eb8:	d9 1c 24             	fstp   DWORD PTR [esp]
10046ebb:	50                   	push   eax
10046ebc:	51                   	push   ecx
10046ebd:	52                   	push   edx
10046ebe:	e8 fd c8 ff ff       	call   0x100437c0
10046ec3:	83 c4 10             	add    esp,0x10
10046ec6:	c3                   	ret
10046ec7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046ecb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046ecf:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046ed3:	51                   	push   ecx
10046ed4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046ed8:	d9 1c 24             	fstp   DWORD PTR [esp]
10046edb:	50                   	push   eax
10046edc:	51                   	push   ecx
10046edd:	52                   	push   edx
10046ede:	e8 cd ca ff ff       	call   0x100439b0
10046ee3:	83 c4 10             	add    esp,0x10
10046ee6:	c3                   	ret
10046ee7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046eeb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046eef:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046ef3:	51                   	push   ecx
10046ef4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046ef8:	d9 1c 24             	fstp   DWORD PTR [esp]
10046efb:	50                   	push   eax
10046efc:	51                   	push   ecx
10046efd:	52                   	push   edx
10046efe:	e8 dd cc ff ff       	call   0x10043be0
10046f03:	83 c4 10             	add    esp,0x10
10046f06:	c3                   	ret
10046f07:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046f0b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046f0f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046f13:	51                   	push   ecx
10046f14:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046f18:	d9 1c 24             	fstp   DWORD PTR [esp]
10046f1b:	50                   	push   eax
10046f1c:	51                   	push   ecx
10046f1d:	52                   	push   edx
10046f1e:	e8 5d cf ff ff       	call   0x10043e80
10046f23:	83 c4 10             	add    esp,0x10
10046f26:	c3                   	ret
10046f27:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046f2b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046f2f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046f33:	51                   	push   ecx
10046f34:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046f38:	d9 1c 24             	fstp   DWORD PTR [esp]
10046f3b:	50                   	push   eax
10046f3c:	51                   	push   ecx
10046f3d:	52                   	push   edx
10046f3e:	e8 dd d1 ff ff       	call   0x10044120
10046f43:	83 c4 10             	add    esp,0x10
10046f46:	c3                   	ret
10046f47:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046f4b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046f4f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046f53:	51                   	push   ecx
10046f54:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046f58:	d9 1c 24             	fstp   DWORD PTR [esp]
10046f5b:	50                   	push   eax
10046f5c:	51                   	push   ecx
10046f5d:	52                   	push   edx
10046f5e:	e8 8d d3 ff ff       	call   0x100442f0
10046f63:	83 c4 10             	add    esp,0x10
10046f66:	c3                   	ret
10046f67:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046f6b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046f6f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046f73:	51                   	push   ecx
10046f74:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046f78:	d9 1c 24             	fstp   DWORD PTR [esp]
10046f7b:	50                   	push   eax
10046f7c:	51                   	push   ecx
10046f7d:	52                   	push   edx
10046f7e:	e8 0d d6 ff ff       	call   0x10044590
10046f83:	83 c4 10             	add    esp,0x10
10046f86:	c3                   	ret
10046f87:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046f8b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046f8f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046f93:	51                   	push   ecx
10046f94:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046f98:	d9 1c 24             	fstp   DWORD PTR [esp]
10046f9b:	50                   	push   eax
10046f9c:	51                   	push   ecx
10046f9d:	52                   	push   edx
10046f9e:	e8 dd d8 ff ff       	call   0x10044880
10046fa3:	83 c4 10             	add    esp,0x10
10046fa6:	c3                   	ret
10046fa7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046fab:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046faf:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046fb3:	51                   	push   ecx
10046fb4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046fb8:	d9 1c 24             	fstp   DWORD PTR [esp]
10046fbb:	50                   	push   eax
10046fbc:	51                   	push   ecx
10046fbd:	52                   	push   edx
10046fbe:	e8 dd da ff ff       	call   0x10044aa0
10046fc3:	83 c4 10             	add    esp,0x10
10046fc6:	c3                   	ret
10046fc7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046fcb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046fcf:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046fd3:	51                   	push   ecx
10046fd4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046fd8:	d9 1c 24             	fstp   DWORD PTR [esp]
10046fdb:	50                   	push   eax
10046fdc:	51                   	push   ecx
10046fdd:	52                   	push   edx
10046fde:	e8 0d dd ff ff       	call   0x10044cf0
10046fe3:	83 c4 10             	add    esp,0x10
10046fe6:	c3                   	ret
10046fe7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
10046feb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10046fef:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10046ff3:	51                   	push   ecx
10046ff4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10046ff8:	d9 1c 24             	fstp   DWORD PTR [esp]
10046ffb:	50                   	push   eax
10046ffc:	51                   	push   ecx
10046ffd:	52                   	push   edx
10046ffe:	e8 3d df ff ff       	call   0x10044f40
10047003:	83 c4 10             	add    esp,0x10
10047006:	c3                   	ret
10047007:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
1004700b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1004700f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10047013:	51                   	push   ecx
10047014:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10047018:	d9 1c 24             	fstp   DWORD PTR [esp]
1004701b:	50                   	push   eax
1004701c:	51                   	push   ecx
1004701d:	52                   	push   edx
1004701e:	e8 ed e1 ff ff       	call   0x10045210
10047023:	83 c4 10             	add    esp,0x10
10047026:	c3                   	ret
10047027:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
1004702b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1004702f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10047033:	51                   	push   ecx
10047034:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10047038:	d9 1c 24             	fstp   DWORD PTR [esp]
1004703b:	50                   	push   eax
1004703c:	51                   	push   ecx
1004703d:	52                   	push   edx
1004703e:	e8 dd e4 ff ff       	call   0x10045520
10047043:	83 c4 10             	add    esp,0x10
10047046:	c3                   	ret
10047047:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
1004704b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1004704f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10047053:	51                   	push   ecx
10047054:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10047058:	d9 1c 24             	fstp   DWORD PTR [esp]
1004705b:	50                   	push   eax
1004705c:	51                   	push   ecx
1004705d:	52                   	push   edx
1004705e:	e8 cd e7 ff ff       	call   0x10045830
10047063:	83 c4 10             	add    esp,0x10
10047066:	c3                   	ret
10047067:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
1004706b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1004706f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10047073:	51                   	push   ecx
10047074:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10047078:	d9 1c 24             	fstp   DWORD PTR [esp]
1004707b:	50                   	push   eax
1004707c:	51                   	push   ecx
1004707d:	52                   	push   edx
1004707e:	e8 3d f7 ff ff       	call   0x100467c0
10047083:	83 c4 10             	add    esp,0x10
10047086:	c3                   	ret
10047087:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
1004708b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1004708f:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10047093:	51                   	push   ecx
10047094:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10047098:	d9 1c 24             	fstp   DWORD PTR [esp]
1004709b:	50                   	push   eax
1004709c:	51                   	push   ecx
1004709d:	52                   	push   edx
1004709e:	e8 4d fa ff ff       	call   0x10046af0
100470a3:	83 c4 10             	add    esp,0x10
100470a6:	c3                   	ret
100470a7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
100470ab:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100470af:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
100470b3:	51                   	push   ecx
100470b4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100470b8:	d9 1c 24             	fstp   DWORD PTR [esp]
100470bb:	50                   	push   eax
100470bc:	51                   	push   ecx
100470bd:	52                   	push   edx
100470be:	e8 fd e9 ff ff       	call   0x10045ac0
100470c3:	83 c4 10             	add    esp,0x10
100470c6:	c3                   	ret
100470c7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
100470cb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100470cf:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
100470d3:	51                   	push   ecx
100470d4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100470d8:	d9 1c 24             	fstp   DWORD PTR [esp]
100470db:	50                   	push   eax
100470dc:	51                   	push   ecx
100470dd:	52                   	push   edx
100470de:	e8 ed ed ff ff       	call   0x10045ed0
100470e3:	83 c4 10             	add    esp,0x10
100470e6:	c3                   	ret
100470e7:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
100470eb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100470ef:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
100470f3:	51                   	push   ecx
100470f4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100470f8:	d9 1c 24             	fstp   DWORD PTR [esp]
100470fb:	50                   	push   eax
100470fc:	51                   	push   ecx
100470fd:	52                   	push   edx
100470fe:	e8 7d f3 ff ff       	call   0x10046480
10047103:	83 c4 10             	add    esp,0x10
10047106:	c3                   	ret

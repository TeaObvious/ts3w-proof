PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: ApplyFloorQuarterInputs.
Complete existing Ghidra stored body union: [00AA1F70,00AA2379] inclusive; 1034 owned bytes / 312 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Selects a per-level renderer and routes quarter input state to the existing subset or edge-state
   consumers. ECX receiver plus 17 stack words, RET 44h. Message support byte +5B is parameter 7 and
   influences only selected null-quad branches; it is not a universal visibility command.
   Analyst-assigned name.

00aa1f70	83ec50	SUB ESP, 0x50 ; Optional message tail +70..83 is not proved initialized when A8ED70 returned null. AA3890 has already loaded +78, and selected branches pass or load tail values; no zero-default or ignored-input guarantee is inferred here.
00aa1f73	57	PUSH EDI
00aa1f74	8bf9	MOV EDI, ECX
00aa1f76	807f7000	CMP byte ptr [EDI + 0x70], 0x0
00aa1f7a	0f84f3030000	JZ 0x00aa2373
00aa1f80	53	PUSH EBX
00aa1f81	55	PUSH EBP
00aa1f82	56	PUSH ESI
00aa1f83	8b742464	MOV ESI, dword ptr [ESP + 0x64]
00aa1f87	8a5e03	MOV BL, byte ptr [ESI + 0x3]
00aa1f8a	8a4602	MOV AL, byte ptr [ESI + 0x2]
00aa1f8d	f6d3	NOT BL
00aa1f8f	c0eb04	SHR BL, 0x4
00aa1f92	80e301	AND BL, 0x1
00aa1f95	885c2464	MOV byte ptr [ESP + 0x64], BL
00aa1f99	8b4c2464	MOV ECX, dword ptr [ESP + 0x64]
00aa1f9d	0fbed0	MOVSX EDX, AL
00aa1fa0	51	PUSH ECX
00aa1fa1	52	PUSH EDX
00aa1fa2	8bcf	MOV ECX, EDI
00aa1fa4	e8f7eaffff	CALL 0x00aa0aa0 ; Select the actual per-level renderer using signed packed level and the inverse mask-bit10 flag. A913D0 single-quarter masks 01/02/04/08 take the ordinary floor side.
00aa1fa9	8be8	MOV EBP, EAX
00aa1fab	85ed	TEST EBP, EBP
00aa1fad	0f84bd030000	JZ 0x00aa2370
00aa1fb3	84db	TEST BL, BL
00aa1fb5	750a	JNZ 0x00aa1fc1
00aa1fb7	385e02	CMP byte ptr [ESI + 0x2], BL
00aa1fba	b8d0c81e01	MOV EAX, 0x11ec8d0
00aa1fbf	7407	JZ 0x00aa1fc8
00aa1fc1	8b842480000000	MOV EAX, dword ptr [ESP + 0x80]
00aa1fc8	8b08	MOV ECX, dword ptr [EAX]
00aa1fca	8b5004	MOV EDX, dword ptr [EAX + 0x4]
00aa1fcd	8b5c2468	MOV EBX, dword ptr [ESP + 0x68]
00aa1fd1	894c2410	MOV dword ptr [ESP + 0x10], ECX
00aa1fd5	8b4808	MOV ECX, dword ptr [EAX + 0x8]
00aa1fd8	89542414	MOV dword ptr [ESP + 0x14], EDX
00aa1fdc	8b500c	MOV EDX, dword ptr [EAX + 0xc]
00aa1fdf	8b03	MOV EAX, dword ptr [EBX]
00aa1fe1	3b0568451801	CMP EAX, dword ptr [0x01184568]
00aa1fe7	894c2418	MOV dword ptr [ESP + 0x18], ECX
00aa1feb	8954241c	MOV dword ptr [ESP + 0x1c], EDX
00aa1fef	753b	JNZ 0x00aa202c
00aa1ff1	8b4b08	MOV ECX, dword ptr [EBX + 0x8]
00aa1ff4	3b0d70451801	CMP ECX, dword ptr [0x01184570]
00aa1ffa	7530	JNZ 0x00aa202c
00aa1ffc	8b530c	MOV EDX, dword ptr [EBX + 0xc]
00aa1fff	3b1574451801	CMP EDX, dword ptr [0x01184574]
00aa2005	7525	JNZ 0x00aa202c
00aa2007	8b4304	MOV EAX, dword ptr [EBX + 0x4]
00aa200a	3b056c451801	CMP EAX, dword ptr [0x0118456c]
00aa2010	751a	JNZ 0x00aa202c
00aa2012	8b8c2498000000	MOV ECX, dword ptr [ESP + 0x98]
00aa2019	51	PUSH ECX
00aa201a	56	PUSH ESI
00aa201b	8bcd	MOV ECX, EBP
00aa201d	e89ecbffff	CALL 0x00a9ebc0
00aa2022	5e	POP ESI
00aa2023	5d	POP EBP
00aa2024	5b	POP EBX
00aa2025	5f	POP EDI
00aa2026	83c450	ADD ESP, 0x50
00aa2029	c24400	RET 0x44
00aa202c	68e0c81e01	PUSH 0x11ec8e0
00aa2031	8bcb	MOV ECX, EBX
00aa2033	e8388efeff	CALL 0x00a8ae70 ; A8AE70 returns 1 when the complete 64-byte quad differs from live null quad 011EC8E0, and 0 on equality. Do not invert this branch as an equality predicate.
00aa2038	84c0	TEST AL, AL
00aa203a	0f849c000000	JZ 0x00aa20dc
00aa2040	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa2047	52	PUSH EDX
00aa2048	56	PUSH ESI
00aa2049	8bcf	MOV ECX, EDI
00aa204b	e8a0feffff	CALL 0x00aa1ef0
00aa2050	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa2057	8b94249c000000	MOV EDX, dword ptr [ESP + 0x9c]
00aa205e	50	PUSH EAX
00aa205f	8b8424ac000000	MOV EAX, dword ptr [ESP + 0xac]
00aa2066	50	PUSH EAX
00aa2067	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa206e	51	PUSH ECX
00aa206f	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa2076	52	PUSH EDX
00aa2077	8b942498000000	MOV EDX, dword ptr [ESP + 0x98]
00aa207e	50	PUSH EAX
00aa207f	8b8424a4000000	MOV EAX, dword ptr [ESP + 0xa4]
00aa2086	d94004	FLD float ptr [EAX + 0x4]
00aa2089	51	PUSH ECX
00aa208a	8b8c2494000000	MOV ECX, dword ptr [ESP + 0x94]
00aa2091	83ec0c	SUB ESP, 0xc
00aa2094	d95c2408	FSTP float ptr [ESP + 0x8]
00aa2098	d900	FLD float ptr [EAX]
00aa209a	8d442438	LEA EAX, [ESP + 0x38]
00aa209e	d95c2404	FSTP float ptr [ESP + 0x4]
00aa20a2	d98424b0000000	FLD float ptr [ESP + 0xb0]
00aa20a9	d91c24	FSTP float ptr [ESP]
00aa20ac	52	PUSH EDX
00aa20ad	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa20b4	50	PUSH EAX
00aa20b5	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa20bc	6a00	PUSH 0x0
00aa20be	51	PUSH ECX
00aa20bf	8b8c24a4000000	MOV ECX, dword ptr [ESP + 0xa4]
00aa20c6	52	PUSH EDX
00aa20c7	50	PUSH EAX
00aa20c8	51	PUSH ECX
00aa20c9	53	PUSH EBX
00aa20ca	56	PUSH ESI
00aa20cb	8bcd	MOV ECX, EBP
00aa20cd	e8eeccffff	CALL 0x00a9edc0
00aa20d2	5e	POP ESI
00aa20d3	5d	POP EBP
00aa20d4	5b	POP EBX
00aa20d5	5f	POP EDI
00aa20d6	83c450	ADD ESP, 0x50
00aa20d9	c24400	RET 0x44
00aa20dc	807c247c00	CMP byte ptr [ESP + 0x7c], 0x0 ; The support byte from message +5B is consumed after the distinct first-key and nonnull-quad branches. Those earlier branches can update subsets/edges without inspecting that byte.
00aa20e1	8b5708	MOV EDX, dword ptr [EDI + 0x8]
00aa20e4	8a82d6030000	MOV AL, byte ptr [EDX + 0x3d6]
00aa20ea	0f8499010000	JZ 0x00aa2289
00aa20f0	8a4e02	MOV CL, byte ptr [ESI + 0x2]
00aa20f3	84c9	TEST CL, CL
00aa20f5	0f85cf000000	JNZ 0x00aa21ca
00aa20fb	84c0	TEST AL, AL
00aa20fd	0f85c5000000	JNZ 0x00aa21c8
00aa2103	56	PUSH ESI
00aa2104	8bcf	MOV ECX, EDI
00aa2106	e8e5fdffff	CALL 0x00aa1ef0
00aa210b	8b9424a4000000	MOV EDX, dword ptr [ESP + 0xa4]
00aa2112	88442464	MOV byte ptr [ESP + 0x64], AL
00aa2116	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa211d	8b4c2464	MOV ECX, dword ptr [ESP + 0x64]
00aa2121	50	PUSH EAX
00aa2122	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa2129	51	PUSH ECX
00aa212a	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa2131	52	PUSH EDX
00aa2132	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa2139	50	PUSH EAX
00aa213a	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa2141	51	PUSH ECX
00aa2142	8b8c2498000000	MOV ECX, dword ptr [ESP + 0x98]
00aa2149	52	PUSH EDX
00aa214a	50	PUSH EAX
00aa214b	8b8424a8000000	MOV EAX, dword ptr [ESP + 0xa8]
00aa2152	d94004	FLD float ptr [EAX + 0x4]
00aa2155	83ec0c	SUB ESP, 0xc
00aa2158	d95c2408	FSTP float ptr [ESP + 0x8]
00aa215c	8d542438	LEA EDX, [ESP + 0x38]
00aa2160	d900	FLD float ptr [EAX]
00aa2162	8d8424a4000000	LEA EAX, [ESP + 0xa4]
00aa2169	d95c2404	FSTP float ptr [ESP + 0x4]
00aa216d	83c720	ADD EDI, 0x20
00aa2170	d98424b0000000	FLD float ptr [ESP + 0xb0]
00aa2177	c68424a400000000	MOV byte ptr [ESP + 0xa4], 0x0
00aa217f	d91c24	FSTP float ptr [ESP]
00aa2182	51	PUSH ECX
00aa2183	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa218a	52	PUSH EDX
00aa218b	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa2192	6a01	PUSH 0x1
00aa2194	50	PUSH EAX
00aa2195	51	PUSH ECX
00aa2196	52	PUSH EDX
00aa2197	68feff0000	PUSH 0xfffe
00aa219c	68d0c81e01	PUSH 0x11ec8d0
00aa21a1	68d0c81e01	PUSH 0x11ec8d0
00aa21a6	68d0c81e01	PUSH 0x11ec8d0
00aa21ab	57	PUSH EDI
00aa21ac	8d4c2474	LEA ECX, [ESP + 0x74]
00aa21b0	e85b990500	CALL 0x00afbb10
00aa21b5	50	PUSH EAX
00aa21b6	56	PUSH ESI
00aa21b7	8bcd	MOV ECX, EBP
00aa21b9	e802ccffff	CALL 0x00a9edc0
00aa21be	5e	POP ESI
00aa21bf	5d	POP EBP
00aa21c0	5b	POP EBX
00aa21c1	5f	POP EDI
00aa21c2	83c450	ADD ESP, 0x50
00aa21c5	c24400	RET 0x44
00aa21c8	84c9	TEST CL, CL
00aa21ca	7f28	JG 0x00aa21f4
00aa21cc	807f7300	CMP byte ptr [EDI + 0x73], 0x0
00aa21d0	7522	JNZ 0x00aa21f4
00aa21d2	84c0	TEST AL, AL
00aa21d4	7404	JZ 0x00aa21da
00aa21d6	84c9	TEST CL, CL
00aa21d8	741a	JZ 0x00aa21f4
00aa21da	8b842498000000	MOV EAX, dword ptr [ESP + 0x98]
00aa21e1	50	PUSH EAX
00aa21e2	56	PUSH ESI
00aa21e3	8bcd	MOV ECX, EBP
00aa21e5	e8d6c9ffff	CALL 0x00a9ebc0
00aa21ea	5e	POP ESI
00aa21eb	5d	POP EBP
00aa21ec	5b	POP EBX
00aa21ed	5f	POP EDI
00aa21ee	83c450	ADD ESP, 0x50
00aa21f1	c24400	RET 0x44
00aa21f4	8b8c24a4000000	MOV ECX, dword ptr [ESP + 0xa4]
00aa21fb	8b94249c000000	MOV EDX, dword ptr [ESP + 0x9c]
00aa2202	8b842498000000	MOV EAX, dword ptr [ESP + 0x98]
00aa2209	6a00	PUSH 0x0
00aa220b	6a00	PUSH 0x0
00aa220d	51	PUSH ECX
00aa220e	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa2215	52	PUSH EDX
00aa2216	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa221d	50	PUSH EAX
00aa221e	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa2225	d94004	FLD float ptr [EAX + 0x4]
00aa2228	51	PUSH ECX
00aa2229	52	PUSH EDX
00aa222a	83ec0c	SUB ESP, 0xc
00aa222d	d95c2408	FSTP float ptr [ESP + 0x8]
00aa2231	8d4c2438	LEA ECX, [ESP + 0x38]
00aa2235	d900	FLD float ptr [EAX]
00aa2237	8b8424ac000000	MOV EAX, dword ptr [ESP + 0xac]
00aa223e	d95c2404	FSTP float ptr [ESP + 0x4]
00aa2242	8d9424a4000000	LEA EDX, [ESP + 0xa4]
00aa2249	d98424b0000000	FLD float ptr [ESP + 0xb0]
00aa2250	c68424a400000000	MOV byte ptr [ESP + 0xa4], 0x0
00aa2258	d91c24	FSTP float ptr [ESP]
00aa225b	50	PUSH EAX
00aa225c	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa2263	51	PUSH ECX
00aa2264	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa226b	6a01	PUSH 0x1
00aa226d	52	PUSH EDX
00aa226e	50	PUSH EAX
00aa226f	51	PUSH ECX
00aa2270	6a00	PUSH 0x0
00aa2272	68e0c81e01	PUSH 0x11ec8e0
00aa2277	56	PUSH ESI
00aa2278	8bcd	MOV ECX, EBP
00aa227a	e841cbffff	CALL 0x00a9edc0
00aa227f	5e	POP ESI
00aa2280	5d	POP EBP
00aa2281	5b	POP EBX
00aa2282	5f	POP EDI
00aa2283	83c450	ADD ESP, 0x50
00aa2286	c24400	RET 0x44
00aa2289	807e0200	CMP byte ptr [ESI + 0x2], 0x0
00aa228d	0f85cd000000	JNZ 0x00aa2360
00aa2293	84c0	TEST AL, AL
00aa2295	0f85c5000000	JNZ 0x00aa2360
00aa229b	56	PUSH ESI
00aa229c	8bcf	MOV ECX, EDI
00aa229e	e84dfcffff	CALL 0x00aa1ef0
00aa22a3	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa22aa	8b8c24a4000000	MOV ECX, dword ptr [ESP + 0xa4]
00aa22b1	52	PUSH EDX
00aa22b2	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa22b9	88442468	MOV byte ptr [ESP + 0x68], AL
00aa22bd	8b442468	MOV EAX, dword ptr [ESP + 0x68]
00aa22c1	50	PUSH EAX
00aa22c2	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa22c9	51	PUSH ECX
00aa22ca	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa22d1	52	PUSH EDX
00aa22d2	8b9424a0000000	MOV EDX, dword ptr [ESP + 0xa0]
00aa22d9	50	PUSH EAX
00aa22da	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa22e1	d94004	FLD float ptr [EAX + 0x4]
00aa22e4	51	PUSH ECX
00aa22e5	52	PUSH EDX
00aa22e6	83ec0c	SUB ESP, 0xc
00aa22e9	d95c2408	FSTP float ptr [ESP + 0x8]
00aa22ed	8d4c2438	LEA ECX, [ESP + 0x38]
00aa22f1	d900	FLD float ptr [EAX]
00aa22f3	8b8424ac000000	MOV EAX, dword ptr [ESP + 0xac]
00aa22fa	d95c2404	FSTP float ptr [ESP + 0x4]
00aa22fe	8d9424a4000000	LEA EDX, [ESP + 0xa4]
00aa2305	d98424b0000000	FLD float ptr [ESP + 0xb0]
00aa230c	83c720	ADD EDI, 0x20
00aa230f	d91c24	FSTP float ptr [ESP]
00aa2312	50	PUSH EAX
00aa2313	8b8424a0000000	MOV EAX, dword ptr [ESP + 0xa0]
00aa231a	51	PUSH ECX
00aa231b	8b8c24a0000000	MOV ECX, dword ptr [ESP + 0xa0]
00aa2322	6a00	PUSH 0x0
00aa2324	52	PUSH EDX
00aa2325	50	PUSH EAX
00aa2326	51	PUSH ECX
00aa2327	68feff0000	PUSH 0xfffe
00aa232c	68d0c81e01	PUSH 0x11ec8d0
00aa2331	68d0c81e01	PUSH 0x11ec8d0
00aa2336	68d0c81e01	PUSH 0x11ec8d0
00aa233b	57	PUSH EDI
00aa233c	8d4c2474	LEA ECX, [ESP + 0x74]
00aa2340	c68424d000000000	MOV byte ptr [ESP + 0xd0], 0x0
00aa2348	e8c3970500	CALL 0x00afbb10
00aa234d	50	PUSH EAX
00aa234e	56	PUSH ESI
00aa234f	8bcd	MOV ECX, EBP
00aa2351	e86acaffff	CALL 0x00a9edc0
00aa2356	5e	POP ESI
00aa2357	5d	POP EBP
00aa2358	5b	POP EBX
00aa2359	5f	POP EDI
00aa235a	83c450	ADD ESP, 0x50
00aa235d	c24400	RET 0x44
00aa2360	8b942498000000	MOV EDX, dword ptr [ESP + 0x98]
00aa2367	52	PUSH EDX
00aa2368	56	PUSH ESI
00aa2369	8bcd	MOV ECX, EBP
00aa236b	e850c8ffff	CALL 0x00a9ebc0
00aa2370	5e	POP ESI
00aa2371	5d	POP EBP
00aa2372	5b	POP EBX
00aa2373	5f	POP EDI
00aa2374	83c450	ADD ESP, 0x50
00aa2377	c24400	RET 0x44

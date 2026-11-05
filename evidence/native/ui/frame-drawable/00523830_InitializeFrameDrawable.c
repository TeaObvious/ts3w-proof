/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: InitializeFrameDrawable.
 * Executable tokens are unchanged; generated types and signatures remain projections.
 * The generated void signature is retained; the original initializer instructions define its receiver/result behavior.
 * DB EOL comments are addressed separately because the decompiler does not emit them in C.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00523841 [EOL]: Install primary vtableFBD968; its slot+C points to query-provider candidate522C10.
 * 00523853 [EOL]: Store Float32 1.0 at+4C, followed by same raw3F800000 at+50/+54/+58; property role remains unproved.
 * 00523867 [EOL]: Raw DWORD+5C=FF000000; do not infer OutlineColor role without property-reader evidence.
 * 0052386E [EOL]: Seven later8byte state rows+14..48 are zeroed as pairedDWORD stores; no inheritance/fallback semantics proved.
 * 00523898 [EOL]: Normal-state color word at+10=FFFFFFFF; frontend funcID2/3 reads/writes this offset plus8*state.
 * 0052389F [EOL]: Normal-state style word at+C=2, matching original BorderStyle.Solid; frontend funcID0/1 uses this offset.
 */



/* Analyst-assigned initializer for the FrameDrawable representation; original PC1.67. Existing
   complete owned body00523830..005238A6 (119bytes); no boundary/byte mutation. ECX is writable
   receiver; EAX copies ECX and remains the same pointer through plain RET, although decompiler C
   models void. No stack arguments, calls, allocation, null/bounds checks, or notification in this
   body. Stores primary vtable00FBD968 and replaces secondary pointer+4 first00FBB1FC then00FBD950.
   Clears receiver+8. Loads Float32=1.0 (raw3F800000) from00F998F8 and stores+4C/+50/+54/+58; stores
   rawDWORD FF000000 at+5C. At offsets matching the qualified77D320 bridge state rows, writes row0
   style+0C=2 (original BorderStyle.Solid) and color+10=FFFFFFFF; seven later8byte rows+14..48 get
   bothDWORDs0. The exact constructor store order is preserved in ASM/C; no inheritance or
   normalization is inferred from the zeros. Primary vtable+C contains00522C10, the concrete
   query-provider candidate for030D54AC; this initializer alone does not prove runtime handle
   registration, queried-pointer adjustment or render behavior. Roles of+8,+4C..58,+5C beyond these
   physical stores, lifetime/thread rules and property consumption remain unresolved. */

void __fastcall InitializeFrameDrawable(undefined4 *frameObjectWords)

{
  frameObjectWords[1] = &PTR_LAB_00fbb1fc;
  *frameObjectWords = &PTR_CountedReference_Retain_00fbd968;
  frameObjectWords[1] = &PTR_LAB_00fbd950;
  frameObjectWords[2] = 0;
  frameObjectWords[0x13] = 1.0;
  frameObjectWords[0x14] = 1.0;
  frameObjectWords[0x15] = 1.0;
  frameObjectWords[0x16] = 1.0;
  frameObjectWords[0x17] = 0xff000000;
  frameObjectWords[6] = 0;
  frameObjectWords[5] = 0;
  frameObjectWords[8] = 0;
  frameObjectWords[7] = 0;
  frameObjectWords[10] = 0;
  frameObjectWords[9] = 0;
  frameObjectWords[0xc] = 0;
  frameObjectWords[0xb] = 0;
  frameObjectWords[0xe] = 0;
  frameObjectWords[0xd] = 0;
  frameObjectWords[0x10] = 0;
  frameObjectWords[0xf] = 0;
  frameObjectWords[0x12] = 0;
  frameObjectWords[0x11] = 0;
  frameObjectWords[4] = 0xffffffff;
  frameObjectWords[3] = 2;
  return;
}


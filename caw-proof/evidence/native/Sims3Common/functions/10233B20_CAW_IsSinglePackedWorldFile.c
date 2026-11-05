/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst CAW 1.22.10 packed-world marker instruction contract. Complete body [10233B20,10233BE5),
   197 bytes. Existing export WorldWrap_IsSinglePackedWorldFile109981C0 tail-jumps here. Cdecl one
   LPWStr stack word, plain RET; meaningful boolean in AL per original CSHostWrap06000502 U1
   declaration/caller06000577. Path guard10910A60 false returns AL0 before reader construction.
   Otherwise local BL defaults1; reader preparation1070B2B0 or open1051FF80 false leaves1. Reader
   open receives stack (1,6,0). The probe at10233BB4 has ECX localreader and SIX stack words: key16,
   NULL streamOut, mask1, mode6, options1, NULL metadataOut. Local key physical DWORDs are
   {1,0,0477BD6A,0}, i.e. instance1,group0,type0477BD6A under original key layout. Probe ALtrue
   clears BL; false keeps1. Thus admitted open/probe path returns inverse lookup result, not full
   project validation. No marker payload length/zero-byte/count/sidecar check in this selected probe
   path.1051EFA0 is called after admitted probe path;1051ED50/1051F1E0 after construction; their
   complete ownership and open/path-guard failure categories remain unexpanded child contracts.
   Return writes AL=BL only; upper EAX incidental. No source marker-admission equivalence is
   implied. */

bool __cdecl CAW_IsSinglePackedWorldFile(LPCWSTR worldFileName)

{
  char cVar1;
  bool bVar2;
  uint uVar3;
  uint local_c0 [6];
  int local_a8;
  
  uVar3 = FUN_10910a60(worldFileName);
                    /* Original guard result tested only in AL; false returns before local-reader
                       construction. Complete guard error classification is not expanded. */
  if ((char)uVar3 == '\0') {
    return false;
  }
  FUN_1051f340(local_c0 + 4,0);
                    /* BL=1 is the packed/default result for subsequent preparation/open/probe
                       failures; not a blanket false-on-I/O-failure policy. */
  bVar2 = true;
                    /* LOCK XADD targets the local reader object's +08 field after
                       constructor1051F340; a standalone uninitialized local rendered by the
                       decompiler does not establish an original uninitialized read. Constructor
                       field defaults remain an unexpanded child contract. */
  LOCK();
  local_a8 = local_a8 + 1;
  UNLOCK();
  FUN_1051f430(local_c0 + 4,worldFileName);
  cVar1 = FUN_1070b2b0((int)(local_c0 + 4));
  if ((cVar1 != '\0') && (cVar1 = FUN_1051ff80(local_c0 + 4,1,6,'\0'), cVar1 != '\0')) {
                    /* Six physical stack words pushed reverse-order: metadataOut0, options1, mode6,
                       requestedMask1, streamOut0, &key16. ECX=localreader. Key DWORDs
                       {1,0,0477BD6A,0}. */
    local_c0[0] = 1;
    local_c0[1] = 0;
    local_c0[2] = 0x477bd6a;
    local_c0[3] = 0;
                    /* Probe-only call because streamOut=NULL. ALtrue clears BL0; ALfalse keeps BL1.
                       No payload-read or zero-length condition follows on this selected path. */
    bVar2 = CAW_PackedResourceFindOrRead(local_c0 + 4,local_c0,(void **)0x0,1,6,1,(uint *)0x0);
    bVar2 = !bVar2;
    FUN_1051efa0((int)(local_c0 + 4));
  }
  FUN_1051ed50((int *)(local_c0 + 4));
  FUN_1051f1e0(local_c0 + 4);
                    /* MOV AL,BL; original managed return is U1. Upper EAX is incidental to the
                       prior child call. */
  return bVar2;
}


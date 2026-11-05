/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. No meaningful input registers or stack slots,
   RET. RawST0 multiplied by exactfloat128 then helpertruncates EAX; NO explicitbinary32store
   ofselector beforeindex. Loads table011D9668[index], storesbinary32local, callsRawagain and
   FSTPbinary32refill, returns oldfloatloaded toST0. Table128*4ends011D9868 whereDOUBLEstatebegins.
   No index clamp. SourceRaw():float introduces an extra rounding boundary beforeselector; effect
   depends also on original x87 controlword, which remainsunverified. Globals are shared; instance
   ownership/concurrency are project choices. */

float10 __cdecl TreeRandom_NextGlobal(void)

{
  float fVar1;
  int iVar2;
  float10 fVar3;
  
  fVar3 = TreeRandom_RawGlobal();
  iVar2 = Compiler_TruncateX87ToLowInt32(fVar3 * (float10)FLOAT_00fcd2c0);
  fVar1 = TreeRandom_GlobalShuffle128[iVar2];
  fVar3 = TreeRandom_RawGlobal();
  TreeRandom_GlobalShuffle128[iVar2] = (float)fVar3;
  return (float10)fVar1;
}


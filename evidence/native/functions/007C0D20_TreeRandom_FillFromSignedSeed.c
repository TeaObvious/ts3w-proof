/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. cdeclsigned32seed stack+4, callerpops. FILDseed
   and keepsstoredfloatreciprocal inx87; repeats128 signedrecurrence steps, storing
   eachsamplebinary32 at011D9668..011D9864, endingDOUBLEintegerstate011D9868. DoesNOTclampseed
   itself. Original x87 helper pop/remainingST stack can leave decompilerextraout_ST0 artifacts;
   original FILD/FMUL/FSTP instructions take priority. */

void __cdecl TreeRandom_FillFromSignedSeed(int seed)

{
  int iVar1;
  float *pfVar2;
  float *pfVar3;
  float10 value;
  float10 extraout_ST0;
  
  value = (float10)seed;
  pfVar2 = TreeRandom_GlobalShuffle128;
  do {
    iVar1 = Compiler_TruncateX87ToLowInt32(value);
    seed = iVar1 * 0x41a7 + (iVar1 / 0x1f31d) * -0x7fffffff;
    if (seed < 1) {
      seed = seed + 0x7fffffff;
    }
    value = (float10)seed;
    pfVar3 = pfVar2 + 1;
    *pfVar2 = (float)(value * extraout_ST0);
    pfVar2 = pfVar3;
  } while ((int)pfVar3 < 0x11d9868);
  TreeRandom_GlobalStateAsDouble = (double)seed;
  return;
}


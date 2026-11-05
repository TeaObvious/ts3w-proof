/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. cdeclbinary64fraction in stack8bytes. FMUL
   exactdouble2147483648 thenhelpertruncates EAX, then same128step tablefill andDOUBLEstate. Ambient
   reseed producer uses this; outofrange/nonfinite/exception semantics unexpanded. No implicit
   independently-ownedstream. */

void __cdecl TreeRandom_FillFromFraction(double fraction)

{
  int iVar1;
  float *pfVar2;
  float *pfVar3;
  float10 value;
  float10 extraout_ST0;
  
  iVar1 = Compiler_TruncateX87ToLowInt32((float10)fraction * (float10)DOUBLE_01017c00);
  value = (float10)iVar1;
  pfVar2 = TreeRandom_GlobalShuffle128;
  do {
    iVar1 = Compiler_TruncateX87ToLowInt32(value);
    fraction._0_4_ = iVar1 * 0x41a7 + (iVar1 / 0x1f31d) * -0x7fffffff;
    if (fraction._0_4_ < 1) {
      fraction._0_4_ = fraction._0_4_ + 0x7fffffff;
    }
    value = (float10)fraction._0_4_;
    pfVar3 = pfVar2 + 1;
    *pfVar2 = (float)(value * extraout_ST0);
    pfVar2 = pfVar3;
  } while ((int)pfVar3 < 0x11d9868);
  TreeRandom_GlobalStateAsDouble = (double)fraction._0_4_;
  return;
}


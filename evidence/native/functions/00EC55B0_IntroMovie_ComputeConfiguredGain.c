/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst PC1.67 intro gain and resource-open instruction contract. cdecl one UTF-16 key pointer,
   x87 ST0 result; RET. MusicMute in current Config section uses requested false default and returns
   FLDZ immediately when true. Otherwise MusicLevel requested binary32 default255 is stored
   binary32, multiplied with separate MULSS by original word FAE564=3B808081, then sign-bit
   selection clamps ordinary finite normalized gain to[0,1]. Original words F998F0=80000000 (-0),
   F998F8=3F800000 (1) matter; decompiler uint casts in selection are float-bit reinterpretations.
   Calls original config float reader58AF50 for section IntroMovies, caller key, requested default1,
   then x87 FMUL by stored normalized binary32 value. NO independent clamp of per-intro factor or
   final binary32 store in this body. Config parsing/error/nonfinite input behavior and ambient FPU
   setup remain unresolved static research. Selected callers EC59D0/EC5B70 store ST0 to binary32 and
   pass it as fourth movie-open word. */

float10 __cdecl IntroMovie_ComputeConfiguredGain(ushort *gainKey)

{
  char cVar1;
  uint uVar2;
  float fVar3;
  float10 fVar4;
  
  cVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,(wchar_t *)&PTR_DAT_01029570,0);
  if (cVar1 != '\0') {
    return (float10)0;
  }
  fVar4 = FUN_0058af50((short *)PTR_u_Config_01150ab0,(short *)&PTR_DAT_010295e0,255.0);
                    /* Store config MusicLevel ST0 to binary32 before MULSS by exact stored
                       bits3B808081. Not a double 1/255 expression. */
                    /* SAR/sign-mask selection on stored float bits implements ordinary finite lower
                       clamp; casts in C are reinterpretations, not numeric float-to-uint
                       conversions. Exceptional values require exact instruction/config domain. */
  fVar3 = (float)((uint)((float)fVar4 * 0.003921569) &
                 (int)(-0.0 - (float)fVar4 * 0.003921569) >> 0x1f);
  uVar2 = (int)(1.0 - fVar3) >> 0x1f;
  fVar4 = FUN_0058af50(L"IntroMovies",(short *)gainKey,1.0);
                    /* Multiply x87 per-intro config result by stored normalized music gain. No
                       per-intro clamp here; caller performs final FSTP binary32. */
  return fVar4 * (float10)(float)(~uVar2 & (uint)fVar3 | uVar2 & (uint)1.0);
}


/* Encodes binary32 X/Z and the low byte of an Int32 level into packed cell bytes 0/1/2. Leaves byte
   3 (caller-owned quarter mask) untouched. Ordinary finite coordinates within conversion range
   produce floor narrowed to one byte; exceptional x87 inputs are not generalized. Analyst-assigned
   name. */

void __cdecl EncodeCellCoordinates(float *param_1,char *param_2)

{
  int iVar1;

  /* 00AF7745: FIST uses the current x87 control word. The later residual-bit test corrects the converted integer; ROUND in decompiler C is not a fixed rounding-mode contract. */
  iVar1 = (int)ROUND(*param_1);
  /* 00AF7751: Compare the stored binary32 residual as unsigned bits with 80000001. ADC integer,-1 preserves nonnegative residuals and negative zero; otherwise subtracts one. Repeat for Z at AF7782. */
  *param_2 = (char)iVar1 + -1 + ((uint)(*param_1 - (float)iVar1) < 0x80000001);
  iVar1 = (int)ROUND(param_1[1]);
  param_2[1] = (char)iVar1 + -1 + ((uint)(param_1[1] - (float)iVar1) < 0x80000001);
  /* 00AF7794: Copy only input level low byte at +8 to output +2. The third input word is an integer level, not a numeric float-to-level conversion. Output +3 is never written. */
  param_2[2] = *(char *)(param_1 + 2);
  return;
}

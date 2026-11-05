/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Bounded role ReadBigEndianUnsignedWord: cdecl input address and width; widths1/2/3/4 return
   corresponding unsigned big-endian word, other widths return0. All complete80-byte body and
   original stored types unchanged. */

uint __cdecl ReadBigEndianUnsignedWord(uint *param_1,int param_2)

{
  uint uVar1;
  
  if (param_2 == 1) {
    return (uint)(byte)*param_1;
  }
  if (param_2 == 4) {
    uVar1 = *param_1;
    return uVar1 >> 0x18 | (uVar1 & 0xff0000) >> 8 | (uVar1 & 0xff00) << 8 | uVar1 << 0x18;
  }
  if (param_2 == 2) {
    return (uint)CONCAT11((char)(short)*param_1,(char)((ushort)(short)*param_1 >> 8));
  }
  if (param_2 == 3) {
    return (uint)CONCAT21(CONCAT11((char)*param_1,*(undefined1 *)((int)param_1 + 1)),
                          *(undefined1 *)((int)param_1 + 2));
  }
  return 0;
}


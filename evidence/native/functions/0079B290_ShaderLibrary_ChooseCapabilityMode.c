/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: chooses a shader capability mode from the graphics-device feature fields, returning a
   small value in AL. Comparisons use unsigned 32-bit fields against exact version constants
   0xfffe0300, 0xffff0300, 0xfffe0200, 0xffff0200 and 0xffff0104. Do not infer shader-model names
   from the decompiler alone. */

char ShaderLibrary_ChooseCapabilityMode(void)

{
  int iVar1;
  
  if (*(char *)(DAT_011cfcc8 + 0xf50) == '\0') {
    iVar1 = FUN_0060fc10(DAT_011cfcc8);
    if ((*(uint *)(iVar1 + 0xc4) < 0xfffe0300) || (*(uint *)(iVar1 + 0xcc) < 0xffff0300)) {
      if ((*(uint *)(iVar1 + 0xc4) < 0xfffe0200) || (*(uint *)(iVar1 + 0xcc) < 0xffff0200)) {
        return (*(uint *)(iVar1 + 0xcc) < 0xffff0104) + '\x04';
      }
      if (((((~*(uint *)(iVar1 + 0xf8) & 1) == 0) && ((~*(uint *)(iVar1 + 0x108) & 0x1f) == 0)) &&
          (0 < *(int *)(iVar1 + 0xfc))) &&
         ((0xc < *(int *)(iVar1 + 0x100) && (0x15 < *(int *)(iVar1 + 0x110))))) {
        return '\x01';
      }
      return '\x03';
    }
  }
  return '\0';
}


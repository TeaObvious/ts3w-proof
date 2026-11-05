/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: checks whether a requested capability mode may reuse a previously loaded mode. The final
   bit test uses 1 << (mode & 31) and masks 0x3f, 0x3e or 0x3c depending on the requested mode.
   Return is boolean in AL. */

bool __cdecl ShaderLibrary_IsModeCompatible(undefined4 param_1,byte param_2)

{
  uint uVar1;
  
  uVar1 = 1 << ((byte)param_1 & 0x1f);
  switch(param_1) {
  case 0:
    return (1 << (param_2 & 0x1f) & 0x3fU) != 0;
  case 1:
    return (1 << (param_2 & 0x1f) & 0x3eU) != 0;
  case 2:
  case 3:
    uVar1 = 0x3c;
  }
  return (1 << (param_2 & 0x1f) & uVar1) != 0;
}


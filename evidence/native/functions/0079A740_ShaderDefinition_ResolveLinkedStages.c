/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: linked shader-stage resolver. Bits 0x400/0x800 trigger lookup of another definition/set;
   one path uses the current definition when the linked ID is zero or equal. Failure or out-of-range
   stage index clears the link-related flags. Names are analyst assigned. */

void __fastcall ShaderDefinition_ResolveLinkedStages(int *param_1)

{
  int iVar1;
  void *pvVar2;
  uint uVar3;
  
  if ((param_1[6] & 0xc00U) != 0) {
    iVar1 = param_1[9];
    if ((iVar1 == 0) || (iVar1 == *param_1)) {
      param_1[0xb] = (int)param_1;
    }
    else {
      pvVar2 = ShaderLibrary_FindDefinition(DAT_011d853c,iVar1,0,'\0');
      param_1[0xb] = (int)pvVar2;
    }
    if ((void *)param_1[0xb] != (void *)0x0) {
      if (param_1[8] == 0) {
        param_1[0xc] = 0;
      }
      else {
        uVar3 = FUN_0079a700((void *)param_1[0xb],param_1[8]);
        param_1[0xc] = uVar3;
      }
    }
    if ((uint)param_1[0xc] < 0xff) {
      return;
    }
    param_1[6] = param_1[6] & 0xfffff3ff;
  }
  param_1[0xb] = 0;
  return;
}


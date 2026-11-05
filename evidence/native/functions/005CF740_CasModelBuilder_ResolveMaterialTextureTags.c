/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 serialized-material texture-sentinel consumer. Physical ECX builder plus one stack
   view pointer, RET04. Iterates texture entries using00799240/270/2F0. Examine DWORD2 at localKey+8
   forFFFFFFFF; only then compare DWORD0 againstFFFFFFFF orFFFFFFFE. DWORD1 andDWORD3 are not tested
   here; do not generalize this into full-key equality or64-bit ID comparison. First form
   calls005CF690 with tag kind1F,value4; second with kind1F,value8. Ordinary keys and other
   firstDWORDs are left untouched. Producer005D05B0 supplies full fourDWORD sentinel patterns and
   invokes this consumer after serialization and before copying into material definition. */

void __thiscall CasModelBuilder_ResolveMaterialTextureTags(void *this,int *param_1)

{
  int *this_00;
  uint uVar1;
  uint uVar2;
  int local_10 [4];
  
  this_00 = param_1;
  param_1 = (int *)FUN_00799240(param_1);
  uVar1 = 0xffffffff;
  if (0 < (int)param_1) {
    do {
      uVar1 = FUN_00799270(this_00,uVar1,(int *)0x0);
      local_10[0] = 0;
      local_10[1] = 0;
      local_10[2] = 0;
      local_10[3] = 0;
      FUN_007992f0(this_00,uVar1,local_10);
                    /* This tests key DWORD2 only, then DWORD0. It does not compare all16 key bytes
                       or an entire64-bit resource identifier. */
      if (local_10[2] == -1) {
        if (local_10[0] == -1) {
          uVar2 = 4;
        }
        else {
          if (local_10[0] != -2) goto LAB_005cf7af;
          uVar2 = 8;
        }
        CasModelBuilder_BindTextureTag(this,this_00,uVar1,0x1f,uVar2);
      }
LAB_005cf7af:
      param_1 = (int *)((int)param_1 + -1);
    } while (param_1 != (int *)0x0);
  }
  return;
}


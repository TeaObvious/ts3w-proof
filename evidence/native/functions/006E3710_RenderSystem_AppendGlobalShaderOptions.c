/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX render-system owner, one stack output-vector pointer, RET4.
   Append each UInt32 from owner+238..23C, then AB86D5C8 if byte+F1 is nonzero. The vector is shared
   seasonal/render options, not FSAALevel; F1 is initialized from DisablePerPixelFog by6E01C0. The
   tree/treebillboard stored presence lists ignore AB86D5C8. The actual global owner is published
   at11D2530 by6E1060. */

void __thiscall RenderSystem_AppendGlobalShaderOptions(void *this,void *param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  void *this_00;
  undefined4 *puVar3;
  
  this_00 = param_1;
  puVar3 = *(undefined4 **)((int)this + 0x238);
  if (puVar3 != *(undefined4 **)((int)this + 0x23c)) {
    puVar1 = *(undefined4 **)((int)this + 0x23c);
    for (; puVar3 != puVar1; puVar3 = puVar3 + 1) {
      puVar2 = *(undefined4 **)((int)this_00 + 4);
      if (puVar2 < *(undefined4 **)((int)this_00 + 8)) {
        *(undefined4 **)((int)this_00 + 4) = puVar2 + 1;
        if (puVar2 != (undefined4 *)0x0) {
          *puVar2 = *puVar3;
        }
      }
      else {
        FUN_00452bf0(this_00,puVar2,puVar3);
      }
    }
  }
  if (*(char *)((int)this + 0xf1) != '\0') {
    puVar3 = *(undefined4 **)((int)this_00 + 4);
    param_1 = (void *)0xab86d5c8;
    if (puVar3 < *(undefined4 **)((int)this_00 + 8)) {
      *(undefined4 **)((int)this_00 + 4) = puVar3 + 1;
      if (puVar3 != (undefined4 *)0x0) {
        *puVar3 = 0xab86d5c8;
        return;
      }
    }
    else {
      FUN_00452bf0(this_00,puVar3,&param_1);
    }
  }
  return;
}


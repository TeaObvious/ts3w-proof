/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, PC1.67 static; analyst-assigned name. Physical thiscall ECX drawable plus three
   stack words render context,float bounds,and one opaque unused draw argument, RET0C at every
   return. The third argument is not consumed by this body, so no original semantic type is inferred
   for it. Physical prototype records both dependencies, but actual C still omits the flag geometry
   because indirect-renderer stack recovery is unresolved; the complete ASM remains authoritative.
   Null image+24 returns. Flags+14 bit1 fixes width from signed image+1C times binary32 scale+10;
   bit2 fixes height from signed image+20 times that scale. Per-axis alignment1 keeps leading,2
   subtracts extent from trailing,3 centers; other values retain leading. No alpha-bounds
   fitting,1.5 threshold, Logo name or fixed188x173 adjustment in this body. Mask+28 chooses50F970;
   otherwise scale type+18 chooses1 tiled50FB10,2 alternate-border510140 using thirds,other
   direct50F2E0. This is native image drawing, not a complete interpretation of every authored
   class. */

void __thiscall
UiImageDrawable_Draw(void *this,void *renderContext,float *bounds,void *unusedDrawArgument)

{
  int *piVar1;
  float fStack_24;
  float fStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  float fStack_c;
  float fStack_8;
  
  if (*(int *)((int)this + 0x24) != 0) {
    piVar1 = (int *)FUN_0050ec40(renderContext,0,0);
    (**(code **)(*piVar1 + 4))(0xffffffff);
    if (*(int *)((int)this + 0x28) == 0) {
      if (*(int *)((int)this + 0x18) == 2) {
        fStack_24 = DAT_00fae554;
        fStack_20 = DAT_00fae554;
        uStack_1c = DAT_00fae57c;
        uStack_18 = DAT_00fae57c;
        uStack_14 = 0;
        uStack_10 = 0;
        fStack_c = FLOAT_00f998f8;
        fStack_8 = FLOAT_00f998f8;
        FUN_00510140(piVar1,(float *)&stack0xffffffcc,&uStack_14,
                     *(undefined4 ******)((int)this + 0x24),&fStack_24,*(float *)((int)this + 0x10),
                     *(float *)((int)this + 0x10),0);
        return;
      }
      if (*(int *)((int)this + 0x18) != 1) {
        FUN_0050f2e0(piVar1,(float *)&stack0xffffffcc,*(undefined4 *)((int)this + 0x24),
                     renderContext,0);
        return;
      }
      FUN_0050fb10(piVar1,(float *)&stack0xffffffcc,*(int *)((int)this + 0x24),
                   *(float *)((int)this + 0x10),*(float *)((int)this + 0x10),0.0,0.0);
      return;
    }
    FUN_0050f970(piVar1,(float *)&stack0xffffffcc,*(undefined4 *)((int)this + 0x24),
                 *(int *)((int)this + 0x28),renderContext);
  }
  return;
}


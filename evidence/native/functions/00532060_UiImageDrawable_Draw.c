/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
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
  float afStack_2c [2];
  float afStack_24 [9];
  
  if (*(int *)((int)this + 0x24) != 0) {
    piVar1 = (int *)UiDrawContext_SelectRenderer(renderContext,0,0);
    (**(code **)(*piVar1 + 4))(0xffffffff);
    if (*(int *)((int)this + 0x28) == 0) {
      if (*(int *)((int)this + 0x18) == 2) {
        afStack_24[0] = 0.33333334;
        afStack_24[1] = 0.33333334;
        afStack_24[2] = 0.6666667;
        afStack_24[3] = 0.6666667;
        afStack_24[4] = 0.0;
        afStack_24[5] = 0.0;
        afStack_24[6] = 1.0;
        afStack_24[7] = 1.0;
        FUN_00510140(piVar1,afStack_2c + -2,afStack_24 + 4,*(undefined4 ******)((int)this + 0x24),
                     afStack_24,*(float *)((int)this + 0x10),*(float *)((int)this + 0x10),0);
        return;
      }
      if (*(int *)((int)this + 0x18) == 1) {
        FUN_0050fb10(piVar1,afStack_2c + -2,*(int *)((int)this + 0x24),*(float *)((int)this + 0x10),
                     *(float *)((int)this + 0x10),0.0,0.0);
        return;
      }
      FUN_0050f2e0(piVar1,afStack_2c + -2,*(undefined4 *)((int)this + 0x24),renderContext,0);
      return;
    }
    FUN_0050f970(piVar1,afStack_2c + -2,*(undefined4 *)((int)this + 0x24),*(int *)((int)this + 0x28)
                 ,renderContext);
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 authored-lot representations comparison): Analyst actual scene transition
   and level-group consumer. ECX renderer plus low-byte requested state in one DWORD, RET4. If
   byte+2C equals supplied byte, return; otherwise if model+30 exists, get current render service.
   When previous state nonzero remove existing model through6E82F0, store requested byte, return.
   When previous zero, read renderer+20 signed level; add one ONLY if retained roof pointer+18 is
   nonnull. Through actual lot-renderer+8 interface virtual0 request this level group, then add
   model through6E82E0. Finally store requested raw byte even with null model. Actual inputs are
   normally0/1 but body does not normalize comparison or final storage; nonzero-to-different-nonzero
   removes. Current pure Roof+1 applies authored actual roofs, not a proven null-roof preview rule
   or universal native scene mask. No resource-byte mutation. */

void __thiscall RoofRenderer_SetSceneMembership(void *this,char param_1)

{
  void *this_00;
  int iVar1;
  void *pvVar2;
  
  if (*(char *)((int)this + 0x2c) != param_1) {
    if (*(int *)((int)this + 0x30) != 0) {
      this_00 = LoadPump_ReadFrameServiceGlobal();
      if (*(char *)((int)this + 0x2c) != '\0') {
        FUN_006e82f0(this_00,*(int **)((int)this + 0x30));
        *(char *)((int)this + 0x2c) = param_1;
        return;
      }
      iVar1 = *(int *)((int)this + 0x20);
      if (*(int *)((int)this + 0x18) != 0) {
        iVar1 = iVar1 + 1;
      }
      pvVar2 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 0x10) + 8))(iVar1);
      FUN_006e82e0(this_00,*(int **)((int)this + 0x30),pvVar2);
    }
    *(char *)((int)this + 0x2c) = param_1;
  }
  return;
}


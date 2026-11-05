/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67, complete95instructions/258ownedbytes checked against pristine PE. ECX collection
   receiver; one incoming stack DWORD whose low byte enables attachment; physical RET4. Each
   qualifying node queries descriptor interface017F1D88, requires descriptor flags bit00020000, then
   clears fixup hash0D646E03 at descriptor+210 BEFORE testing enable. Enabled
   allocates12bytes/alignment4 tagged Renderer/FrostedGlassFixupLOD, invokes00693FE0 with0,1,
   retains via virtual0, attaches via descriptor virtual80 with00FF3834, then releases via virtual4.
   Null allocation still calls attachment with null. This body does not directly test the render
   snow/frost disable masks; collection producer, caller policy, fixup shader behavior and provider
   identities remain unexpanded. Eight allocator stack DWORDs in ASM override the incomplete
   decompiler call prototype. Existing ABI/types/locals are unchanged. */

void __thiscall WeatherGeometry_UpdateFrostedGlassFixupAttachments(void *this,char param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  uint uVar4;
  void *this_00;
  int *piVar5;
  int *piVar6;
  undefined4 *puVar7;
  
  piVar6 = (int *)((int)this + 4);
  puVar7 = (undefined4 *)*piVar6;
  if (puVar7 == (undefined4 *)0x0) {
    piVar6 = (int *)((int)this + 8);
    iVar1 = *(int *)((int)this + 8);
    while (iVar1 == 0) {
      piVar6 = piVar6 + 1;
      iVar1 = *piVar6;
    }
    puVar7 = (undefined4 *)*piVar6;
  }
  puVar2 = *(undefined4 **)((int)this + 0x1028);
  while (puVar7 != puVar2) {
    if ((((puVar7 != (undefined4 *)0x0) && (puVar7 + -2 != (int *)0x0)) &&
        (piVar3 = (int *)(**(code **)(puVar7[-2] + 0xc))(0x17f1d88), piVar3 != (int *)0x0)) &&
       ((uVar4 = GetNativeDescriptorTypeName_Field44((int)piVar3), (uVar4 & 0x20000) != 0 &&
        (FUN_006dd260(piVar3 + 0x84), param_1 != '\0')))) {
      this_00 = (void *)FUN_004e4520(0xc,4,0,"Renderer/FrostedGlassFixupLOD",0);
      if (this_00 == (void *)0x0) {
        piVar5 = (int *)0x0;
      }
      else {
        piVar5 = (int *)FUN_00693fe0(this_00,0,1);
        if (piVar5 != (int *)0x0) {
          (**(code **)*piVar5)();
        }
      }
      (**(code **)(*piVar3 + 0x80))(piVar5,&DAT_00ff3834);
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))();
      }
    }
    puVar7 = (undefined4 *)*puVar7;
    while (puVar7 == (undefined4 *)0x0) {
      piVar3 = piVar6 + 1;
      piVar6 = piVar6 + 1;
      puVar7 = (undefined4 *)*piVar3;
    }
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX binding; one context stack word; RET0x04. Process kind6 direct
   textures and kind4 resource-key entries using real texture-entry allocations, then register
   parameters and decrement initial outstanding gate. Sentinel key branch and allocation/failure
   behavior remain original; not a new admission/safety guard. Role name is descriptive, not a
   recovered original symbol. */

void __thiscall MaterialShaderBinding_BeginTextureEntries(void *this,undefined4 param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  int *piVar4;
  undefined *this_00;
  uint uVar5;
  int *piVar6;
  
  FUN_006de790((void *)((int)this + 0x28),2);
  piVar1 = *(int **)((int)this + 0x68);
  piVar6 = *(int **)((int)this + 100);
  *(undefined4 *)((int)this + 0x48) = 1;
joined_r0x006ca0fb:
  if (piVar6 == piVar1) {
    MaterialShaderBinding_RegisterEntryParameters((int)this);
    piVar1 = (int *)((int)this + 0x48);
    *piVar1 = *piVar1 + -1;
    if (*piVar1 == 0) {
      FUN_006de790((void *)((int)this + 0x28),3);
    }
    return;
  }
  if ((*(char *)((int)piVar6 + 0x1e) == '\x06') && (piVar6[5] != 0)) {
    puVar2 = (undefined4 *)FUN_004e4520(0x48,4,0,"Renderer/Material/TextureEntry",0);
    if (puVar2 == (undefined4 *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)FUN_006cf1b0(puVar2);
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
      }
    }
    FUN_006c98d0(this,piVar6,piVar3,(int *)piVar6[5]);
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
    }
  }
  if (*(char *)((int)piVar6 + 0x1e) == '\x04') goto code_r0x006ca166;
  goto LAB_006ca1dc;
code_r0x006ca166:
  piVar3 = (int *)piVar6[5];
  if (piVar3[2] != -1) {
    puVar2 = (undefined4 *)FUN_004e4520(0x48,4,0,"Renderer/Material/TextureEntry",0);
    if (puVar2 == (undefined4 *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = (int *)FUN_006cf1b0(puVar2);
      if (piVar4 != (int *)0x0) {
        (**(code **)*piVar4)();
      }
    }
    MaterialShaderBinding_RequestKeyTextureEntry(this,piVar6,piVar4,(int)piVar3,param_1);
    if (piVar3[2] == -0x70047f0a) {
      this_00 = FUN_009e3b80();
      uVar5 = FUN_009e4bf0(this_00,piVar3);
      *(uint *)((int)this + 0x74) = uVar5;
    }
    if (piVar4 != (int *)0x0) {
      (**(code **)(*piVar4 + 4))();
    }
LAB_006ca1dc:
    piVar6 = piVar6 + 8;
  }
  goto joined_r0x006ca0fb;
}


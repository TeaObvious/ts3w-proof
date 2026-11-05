/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* Verified PC 1.67 registration table at 0x011630a8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetColorPickerSwatchesImpl [assembly=ScriptCore token=0x06000E50;
   id: System.UInt64; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_UIManager__UIManager_GetColorPickerSwatchesImpl(undefined4 param_1,uint param_2)

{
  char cVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  int *unaff_EBP;
  uint *puVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  int *unaff_EDI;
  uint uVar11;
  int *piStack_1f0;
  uint uStack_1ec;
  undefined4 uStack_1e8;
  int *piStack_1e4;
  uint *puStack_1e0;
  uint uStack_1dc;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  int iStack_1b8;
  int *piStack_1b4;
  undefined4 uStack_1b0;
  uint auStack_1ac [4];
  uint uStack_19c;
  undefined4 uStack_198;
  undefined4 uStack_194;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar3 = (undefined4 *)0x0;
  uStack_1c8 = 0;
  if (piVar2 != (int *)0x0) {
    iStack_1b8 = 0;
    uStack_1b0 = param_1;
    auStack_1ac[0] = param_2;
    auStack_1ac[1] = 0xe6e34048;
    auStack_1ac[2] = 0;
    auStack_1ac[3] = param_1;
    uStack_19c = param_2;
    uStack_198 = 0x2f7d0004;
    uStack_194 = 0;
    uStack_1dc = 0x77e923;
    piStack_1b4 = piVar2;
    piVar4 = (int *)FUN_004afe80();
    uStack_1dc = 0xffffffff;
    puStack_1e0 = (uint *)0xe6e34048;
    piStack_1e4 = (int *)0x77e935;
    uStack_1e8 = (**(code **)(*piVar4 + 0x2c))();
    piStack_1e4 = &iStack_1b8;
    uStack_1ec = 0;
    piStack_1f0 = (int *)0x0;
    uStack_1cc = 0;
    cVar1 = (**(code **)(*piVar4 + 0xc))(auStack_1ac + 1,&uStack_1cc);
    if (((cVar1 == '\0') || (piStack_1e4 == (int *)0x0)) ||
       (piVar4 = (int *)(**(code **)(*piStack_1e4 + 0xc))(0xe6e34048), piVar4 == (int *)0x0)) {
      memset(&uStack_1b0,0,400);
      puStack_1e0 = &DAT_01162d68;
      puVar7 = auStack_1ac;
      do {
        uVar5 = *puStack_1e0;
        uStack_1dc = uVar5 & 0xff;
        uVar8 = uVar5 >> 8 & 0xff;
        uVar5 = uVar5 >> 0x10 & 0xff;
        uStack_1ec = uStack_1dc / 10;
        uVar11 = uVar5 / 10;
        uVar6 = uVar8 / 10;
        puVar7[-1] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uStack_1dc;
        uVar9 = (uStack_1dc - uStack_1ec) - uStack_1ec;
        *puVar7 = ((uVar5 - uVar11 | 0xffffff00) << 8 | uVar8 - uVar6) << 8 |
                  uStack_1dc - uStack_1ec;
        uVar5 = (uVar5 - uVar11) - uVar11;
        uVar8 = (uVar8 - uVar6) - uVar6;
        uVar10 = uVar9 - uStack_1ec;
        puVar7[1] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uVar9;
        uVar5 = uVar5 - uVar11;
        uVar8 = uVar8 - uVar6;
        uVar9 = uVar10 - uStack_1ec;
        puVar7[2] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uVar10;
        uVar5 = uVar5 - uVar11;
        uVar8 = uVar8 - uVar6;
        uVar10 = uVar9 - uStack_1ec;
        puVar7[3] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uVar9;
        uVar5 = uVar5 - uVar11;
        uVar8 = uVar8 - uVar6;
        puVar7[4] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uVar10;
        uVar5 = uVar5 - uVar11;
        uVar10 = uVar10 - uStack_1ec;
        uVar8 = uVar8 - uVar6;
        uVar9 = uVar10 - uStack_1ec;
        puVar7[5] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uVar10;
        uVar5 = uVar5 - uVar11;
        uVar8 = uVar8 - uVar6;
        uVar10 = uVar9 - uStack_1ec;
        puVar7[6] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uVar9;
        uVar5 = uVar5 - uVar11;
        uVar8 = uVar8 - uVar6;
        puStack_1e0 = puStack_1e0 + 1;
        puVar7[7] = ((uVar5 | 0xffffff00) << 8 | uVar8) << 8 | uVar10;
        puVar7[8] = (uVar8 - uVar6) * 0x100 | (uVar5 - uVar11) * 0x10000 | uVar10 - uStack_1ec |
                    0xff000000;
        puVar7 = puVar7 + 10;
      } while ((int)puStack_1e0 < 0x1162d90);
      puVar3 = (undefined4 *)0x64;
      (**(code **)(*unaff_EDI + 0x84))(&uStack_1e8);
      (**(code **)(*unaff_EDI + 0x9c))(&piStack_1f0,&iStack_1b8,0,100);
      piVar4 = piStack_1f0;
    }
    else {
      (**(code **)*piVar4)();
      unaff_EBP = (int *)0x64;
      puVar3 = &uStack_1e8;
      (**(code **)(*piVar2 + 0x84))();
      (**(code **)(*piVar2 + 0x9c))(&piStack_1f0,piVar4 + 10,0,100);
    }
    if (unaff_EBP != (int *)0x0) {
      (**(code **)(*unaff_EBP + 4))();
    }
    if (piVar4 != (int *)0x0) {
      (**(code **)(*piVar4 + 4))();
    }
  }
  return puVar3;
}


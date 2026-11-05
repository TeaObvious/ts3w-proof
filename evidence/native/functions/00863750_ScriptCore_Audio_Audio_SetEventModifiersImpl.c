/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x0086382c) */
/* Verified PC 1.67 registration table at 0x011677c8 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_SetEventModifiersImpl [assembly=ScriptCore token=0x060011E6; simModifier:
   System.Delegate, skillModifier: System.Delegate, qualityModifier: System.Delegate,
   materialModifier: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Audio__Audio_SetEventModifiersImpl(int param_1,int param_2,int param_3)

{
  int *this;
  char cVar1;
  void *pvVar2;
  int *piVar3;
  int *piVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint uVar7;
  int *piVar8;
  int *piVar9;
  undefined8 uStack_14;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  if ((DAT_011d9c40 != 0) && (this = (int *)(DAT_011d9c40 + -0x27bd0), this != (int *)0x0)) {
    if (param_1 != 0) {
      pvVar2 = (void *)FUN_004e4500(0xc,"Audio/EventModifierSim",0);
      if (pvVar2 == (void *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = (int *)FUN_0086bcb0(pvVar2,param_1);
      }
      FUN_00866590(this,0x20681cd4,piVar3);
    }
    if (param_3 != 0) {
      pvVar2 = (void *)FUN_004e4500(0xc,"Audio/EventModifierQuality",0);
      if (pvVar2 == (void *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = (int *)FUN_0086bae0(pvVar2,param_3);
      }
      FUN_00866590(this,0x51c4acef,piVar3);
    }
    if (param_2 != 0) {
      uStack_14 = (**(code **)(*this + 0x118))();
      uStack_c = 0x2b9f662;
      uStack_8 = 0x1407ec;
      piVar4 = (int *)FUN_004afe80();
      piVar3 = (int *)0x0;
      piVar8 = (int *)0x0;
      cVar1 = (**(code **)(*piVar4 + 0xc))(&uStack_14,&stack0xffffffe0,0,0,0,0);
      piVar4 = piVar3;
      if (cVar1 != '\0') {
        if (piVar3 != (int *)0x0) {
          (**(code **)*piVar3)();
        }
        cVar1 = (**(code **)(piVar3[10] + 0x20))(0xc499357c,&stack0xffffffd0);
        if (((cVar1 != '\0') && (*(short *)((int)piVar4 + 10) == 0x13)) &&
           ((*(byte *)(piVar4 + 2) & 0x10) != 0)) {
          piVar9 = piVar4;
          uVar5 = FUN_004f5870((int)piVar4);
          puVar6 = (undefined4 *)FUN_004f5850((int)piVar4);
          piVar3 = piVar8;
          piVar4 = piVar9;
          for (; uVar5 != 0; uVar5 = uVar5 - 1) {
            pvVar2 = (void *)FUN_004e4500(0x1c,"Audio/EventModifierSkill",0);
            if (pvVar2 == (void *)0x0) {
              piVar8 = (int *)0x0;
            }
            else {
              piVar8 = FUN_0086c170(pvVar2,param_2,(short *)*puVar6);
            }
            uVar7 = FUN_004fa830((ushort *)*puVar6,0x811c9dc5,1);
            FUN_00866590(this,uVar7,piVar8);
            puVar6 = puVar6 + 4;
          }
        }
        (**(code **)(*piVar3 + 4))();
      }
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 4))();
      }
    }
  }
  return;
}


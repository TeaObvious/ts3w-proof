/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX material binding; stack entry,textureEntry,key,context; RET0x10. With
   nonnull texture entry, retain actual limit/default words, convert entry to kind6/current0 and
   request original resource key. Special resources have separate paths; ordinary request can use
   existing fallback and completion dispatch. No unconditional ready/upload success. Role name is
   descriptive, not a recovered original symbol. */

void __thiscall
MaterialShaderBinding_RequestKeyTextureEntry
          (void *this,int *param_1,int *param_2,int param_3,undefined4 param_4)

{
  byte bVar1;
  code *pcVar2;
  uint uVar3;
  undefined4 uVar4;
  int *piVar5;
  
  if (param_2 != (int *)0x0) {
    for (piVar5 = *(int **)((int)this + 100); piVar5 != *(int **)((int)this + 0x68);
        piVar5 = piVar5 + 8) {
      if (*piVar5 == 0x707f712f) {
        param_2[7] = *(int *)piVar5[5];
        goto LAB_006c9e90;
      }
    }
    param_2[7] = 0x200;
LAB_006c9e90:
    for (piVar5 = *(int **)((int)this + 100); piVar5 != *(int **)((int)this + 0x68);
        piVar5 = piVar5 + 8) {
      if (*piVar5 == -0x7b632524) {
        param_2[8] = *(int *)piVar5[5];
        goto LAB_006c9ec6;
      }
    }
    param_2[8] = 0x200;
LAB_006c9ec6:
    param_2[6] = *param_1;
    *(undefined1 *)((int)param_1 + 0x1e) = 6;
    param_1[5] = 0;
    bVar1 = *(byte *)((int)param_2 + 0x42);
    param_2[0xf] = param_2[8];
    *(byte *)((int)param_2 + 0x42) = bVar1 & 0xf8 | 8;
    param_2[0xd] = (int)this;
    param_2[0xe] = param_2[7];
    uVar3 = FUN_006c99a0(this,param_1,(int)param_2);
    if ((char)uVar3 == '\0') {
      if (*(int *)(param_3 + 8) == 0x33a1435) {
        if (param_2[6] == -0x52ad75a0) {
          *(byte *)((int)param_2 + 0x42) = bVar1 & 0xe8 | 0x28;
        }
        FUN_00722d40((uint *)(param_2 + 7),(uint *)(param_2 + 8),param_2[6] == -0x52ad75a0);
        *(int *)((int)this + 0x48) = *(int *)((int)this + 0x48) + 1;
        *(byte *)((int)param_2 + 0x42) = *(byte *)((int)param_2 + 0x42) | 1;
        bVar1 = *(byte *)((int)param_2 + 0x42);
        if ((param_2[6] == 0x6cc0fd85) &&
           (piVar5 = FUN_006c9980(this,-0x1885d4a0), piVar5 != (int *)0x0)) {
          *(byte *)((int)param_2 + 0x42) =
               ((0.003921569 < *(float *)piVar5[5]) << 4 ^ bVar1) & 0x10 ^ bVar1;
        }
        *(short *)(param_2 + 0x10) = (short)param_4;
        FUN_006c9a50(param_2 + 0xb,param_3,param_2 + 2,0,param_4);
        MaterialTextureEntry_DispatchState((int)param_2);
        pcVar2 = *(code **)*param_2;
        *(byte *)((int)param_2 + 0x42) = *(byte *)((int)param_2 + 0x42) & 0xfb;
        (*pcVar2)();
        piVar5 = param_2 + 4;
        param_2[5] = *(int *)((int)this + 0x50);
        *piVar5 = (int)this + 0x4c;
        *(int **)((int)this + 0x50) = piVar5;
        *(int **)param_2[5] = piVar5;
        return;
      }
      if (*(int *)(param_3 + 8) == 0x63a33ea7) {
        *(int *)((int)this + 0x48) = *(int *)((int)this + 0x48) + 1;
        *(byte *)((int)param_2 + 0x42) = *(byte *)((int)param_2 + 0x42) | 2;
        FUN_006c9aa0(param_2 + 0xc,param_3,param_2 + 2,0,param_4);
        MaterialTextureEntry_DispatchState((int)param_2);
        (**(code **)*param_2)();
        piVar5 = param_2 + 4;
        param_2[5] = *(int *)((int)this + 0x50);
        *piVar5 = (int)this + 0x4c;
        *(int **)((int)this + 0x50) = piVar5;
        *(int **)param_2[5] = piVar5;
        return;
      }
      uVar4 = FUN_005ca650(param_2 + 9,param_3,param_2 + 2,0,param_4);
      if (((char)uVar4 == '\0') &&
         (uVar4 = FUN_005ca650(param_2 + 9,&DAT_0115c890,param_2 + 2,0,param_4), (char)uVar4 == '\0'
         )) {
        (**(code **)(*param_2 + 8))(1);
        return;
      }
    }
    else {
      uVar4 = FUN_005ca650(param_2 + 9,&DAT_0115c890,param_2 + 2,0,param_4);
      if ((char)uVar4 == '\0') {
        (**(code **)(*param_2 + 8))(1);
        return;
      }
    }
    *(int *)((int)this + 0x48) = *(int *)((int)this + 0x48) + 1;
    MaterialTextureEntry_DispatchState((int)param_2);
    (**(code **)*param_2)();
    piVar5 = param_2 + 4;
    param_2[5] = *(int *)((int)this + 0x50);
    *piVar5 = (int)this + 0x4c;
    *(int **)((int)this + 0x50) = piVar5;
    *(int **)param_2[5] = piVar5;
  }
  return;
}


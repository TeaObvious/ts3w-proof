/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 instruction-level observation: Dirty-step restoration resolves saved object and
   controller against scene animation component, registers callbacks/namespace bindings and marks
   registration linked. Local source:
   00805B60_SACS_RestoreControllerBinding.asm. original PC 1.67 TS3W.exe. */

undefined1 __fastcall SACS_RestoreControllerBinding(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined1 uVar3;
  uint uVar4;
  int *piVar5;
  undefined4 *puVar6;
  undefined4 *this;
  undefined4 *puVar7;
  undefined1 local_19;
  undefined4 *local_18;
  undefined4 *local_14;
  int local_10;
  undefined4 *local_c;
  void *local_8;
  
  local_10 = param_1;
  local_8 = (void *)FUN_00937570();
  local_c = *(undefined4 **)(param_1 + 8);
  puVar7 = *(undefined4 **)(param_1 + 4);
  local_19 = 1;
  uVar3 = 1;
  if (puVar7 != local_c) {
    local_18 = puVar7 + 6;
    do {
      if (*(char *)(puVar7 + 3) == '\0') {
        local_14 = (undefined4 *)0x0;
        uVar4 = FUN_00937fc0(local_8,*puVar7,puVar7[1],(uint *)&local_14);
        if ((char)uVar4 == '\0') {
          local_18 = local_18 + 6;
          puVar7 = puVar7 + 6;
        }
        else if ((local_14 == (undefined4 *)0x0) ||
                (piVar5 = (int *)FUN_00934260(local_14,DAT_011dd484), piVar5 == (int *)0x0)) {
          puVar7 = puVar7 + 6;
          local_18 = local_18 + 6;
        }
        else {
          puVar6 = (undefined4 *)FUN_0093c9a0(piVar5,puVar7[2]);
          if (puVar6 == (undefined4 *)0x0) {
LAB_00805cd4:
            if ((*(int *)(param_1 + 0x14) != 0) && (puVar7[2] == *(int *)(param_1 + 0x14))) {
              local_19 = 0;
            }
            if (local_18 < *(undefined4 **)(param_1 + 8)) {
              FUN_008056f0(local_18,*(undefined4 **)(param_1 + 8),puVar7);
            }
            *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + -0x18;
            FUN_007f64d0(*(int *)(param_1 + 8));
            local_c = *(undefined4 **)(param_1 + 8);
          }
          else {
            puVar6[1] = puVar6[1] + 1;
            this = (undefined4 *)(**(code **)(puVar6[2] + 4))(0xb489fc2c);
            param_1 = local_10;
            if (this == (undefined4 *)0x0) goto LAB_00805cd4;
            iVar1 = this[1];
            this[1] = iVar1 + 1;
            puVar2 = (undefined4 *)puVar7[5];
            if (this != puVar2) {
              this[1] = iVar1 + 2;
              puVar7[5] = this;
              if ((puVar2 != (undefined4 *)0x0) &&
                 (iVar1 = puVar2[1], puVar2[1] = iVar1 + -1, iVar1 + -1 == 0)) {
                puVar2[1] = 1;
                (**(code **)*puVar2)(1);
              }
            }
            FUN_00576e80(this + 3,local_10,-1);
            if (puVar7[4] != 0) {
              FUN_00569860(this,puVar7[4]);
            }
            iVar1 = this[1];
            this[1] = iVar1 + -1;
            if (iVar1 + -1 == 0) {
              this[1] = 1;
              (**(code **)*this)(1);
            }
            (**(code **)(*piVar5 + 0x30))();
            *(undefined1 *)(puVar7 + 3) = 1;
            puVar7 = puVar7 + 6;
            local_18 = local_18 + 6;
            param_1 = local_10;
          }
          if ((puVar6 != (undefined4 *)0x0) &&
             (iVar1 = puVar6[1], puVar6[1] = iVar1 + -1, iVar1 + -1 == 0)) {
            puVar6[1] = 1;
            (**(code **)*puVar6)(1);
          }
        }
        if (local_14 != (undefined4 *)0x0) {
          piVar5 = local_14 + 1;
          LOCK();
          iVar1 = *piVar5;
          *piVar5 = *piVar5 + -1;
          UNLOCK();
          if (iVar1 == 1) {
            LOCK();
            *piVar5 = 1;
            UNLOCK();
            if (local_14 != (undefined4 *)0x0) {
              (**(code **)*local_14)(1);
            }
          }
        }
      }
      else {
        puVar7 = puVar7 + 6;
        local_18 = local_18 + 6;
      }
      uVar3 = local_19;
    } while (puVar7 != local_c);
  }
  return uVar3;
}


/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* PC 1.67 instruction-level observation: Dirty-step restoration resolves saved object and
   controller against scene animation component, registers callbacks/namespace bindings and marks
   registration linked. Local source:
   00805B60_SACS_RestoreControllerBinding.asm. original PC 1.67 TS3W.exe. */



/* PC 1.67 instruction-level observation: Dirty-step restoration resolves saved object and
   controller against scene animation component, registers callbacks/namespace bindings and marks
   registration linked. Local source: the canonical ASM/C pair for this function. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined1 __fastcall SACS_RestoreControllerBinding(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  bool bVar3;
  undefined1 uVar4;
  int *piVar5;
  undefined4 *puVar6;
  undefined4 *this;
  ulonglong *puVar7;
  undefined1 local_19;
  ulonglong *local_18;
  undefined4 *local_14;
  int *local_10;
  ulonglong *local_c;
  void *local_8;
  
  local_10 = (int *)param_1;
  local_8 = ObjectRegistry_GetGlobal();
  local_c = *(ulonglong **)(param_1 + 8);
  puVar7 = *(ulonglong **)(param_1 + 4);
  local_19 = 1;
  uVar4 = 1;
  if (puVar7 != local_c) {
    local_18 = puVar7 + 3;
    do {
      if (*(char *)((int)puVar7 + 0xc) == '\0') {
        local_14 = (undefined4 *)0x0;
        bVar3 = ObjectRegistry_AcquireGuid(local_8,*puVar7,&local_14);
        if (bVar3) {
          if ((local_14 == (undefined4 *)0x0) ||
             (piVar5 = Object_GetComponentByMask(local_14,DAT_011dd484), piVar5 == (int *)0x0)) {
            puVar7 = puVar7 + 3;
            local_18 = local_18 + 3;
          }
          else {
            puVar6 = (undefined4 *)FUN_0093c9a0(piVar5,(int)puVar7[1]);
            if (puVar6 == (undefined4 *)0x0) {
LAB_00805cd4:
              if ((*(int *)(param_1 + 0x14) != 0) && ((int)puVar7[1] == *(int *)(param_1 + 0x14))) {
                local_19 = 0;
              }
              if (local_18 < *(ulonglong **)(param_1 + 8)) {
                FUN_008056f0((undefined4 *)local_18,(undefined4 *)*(ulonglong **)(param_1 + 8),
                             puVar7);
              }
              *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + -0x18;
              FUN_007f64d0(*(int *)(param_1 + 8));
              local_c = *(ulonglong **)(param_1 + 8);
            }
            else {
              puVar6[1] = puVar6[1] + 1;
              this = (undefined4 *)(**(code **)(puVar6[2] + 4))(0xb489fc2c);
              if (this == (undefined4 *)0x0) {
                param_1 = (int)local_10;
                goto LAB_00805cd4;
              }
              iVar1 = this[1];
              this[1] = iVar1 + 1;
              puVar2 = *(undefined4 **)((int)puVar7 + 0x14);
              if (this != puVar2) {
                this[1] = iVar1 + 2;
                *(undefined4 **)((int)puVar7 + 0x14) = this;
                if ((puVar2 != (undefined4 *)0x0) &&
                   (iVar1 = puVar2[1], puVar2[1] = iVar1 + -1, iVar1 + -1 == 0)) {
                  puVar2[1] = 1;
                  (**(code **)*puVar2)(1);
                }
              }
              AnimationController_RegisterListener(this + 3,local_10,-1);
              if ((int)puVar7[2] != 0) {
                FUN_00569860(this,(int)puVar7[2]);
              }
              iVar1 = this[1];
              this[1] = iVar1 + -1;
              if (iVar1 + -1 == 0) {
                this[1] = 1;
                (**(code **)*this)(1);
              }
              (**(code **)(*piVar5 + 0x30))();
              *(undefined1 *)((int)puVar7 + 0xc) = 1;
              puVar7 = puVar7 + 3;
              local_18 = local_18 + 3;
              param_1 = (int)local_10;
            }
            if ((puVar6 != (undefined4 *)0x0) &&
               (iVar1 = puVar6[1], puVar6[1] = iVar1 + -1, iVar1 + -1 == 0)) {
              puVar6[1] = 1;
              (**(code **)*puVar6)(1);
            }
          }
        }
        else {
          local_18 = local_18 + 3;
          puVar7 = puVar7 + 3;
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
        puVar7 = puVar7 + 3;
        local_18 = local_18 + 3;
      }
    } while (puVar7 != local_c);
    uVar4 = local_19;
  }
  return uVar4;
}


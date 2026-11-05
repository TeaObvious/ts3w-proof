/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. thiscall low-byte slot index.
   Computes cameraGroup*5+slot and captures64-byte pose slot, controller-specific fields, lot-id
   field and occupancy byte. Calls0097fd20 afterward. Several camera-interface outputs are mistyped
   as uninitialized decompiler locals; original virtual-call result stores govern. No slot-index
   range guard is visible here; dispatcher supplies0..4. Downstream persistence semantics remain
   separately documented. */

void __thiscall CameraPreset_CaptureCurrentPose(void *this,byte param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  undefined4 *puVar7;
  void *pvVar8;
  code *pcVar9;
  int *piVar10;
  undefined4 *puVar11;
  float10 fVar12;
  int *local_40;
  int *local_3c;
  undefined4 uStack_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  iVar4 = FUN_00969bd0();
  iVar5 = FUN_00f21ff0(iVar4);
  iVar4 = *(int *)(iVar5 + 0x90);
  piVar6 = (int *)FUN_00513de0(iVar5);
  piVar10 = (int *)0x0;
  if (piVar6 == (int *)0x0) {
    local_40 = (int *)0x0;
    local_3c = (int *)0x0;
    piVar6 = (int *)0x0;
  }
  else {
    piVar10 = (int *)(**(code **)(*piVar6 + 0xc))(0x110fdd89);
    (**(code **)(*piVar6 + 0xc))(0x4d394edb);
    (**(code **)(*piVar6 + 0xc))(0x14bc619b);
    piVar6 = (int *)(**(code **)(*piVar6 + 0xc))(0xc49dcd29);
  }
  iVar4 = iVar4 * 5 + (uint)param_1;
  puVar11 = (undefined4 *)((iVar4 + 1) * 0x40 + (int)this);
  if (piVar10 == (int *)0x0) {
    if (local_40 == (int *)0x0) {
      if (local_3c == (int *)0x0) {
        if (piVar6 != (int *)0x0) {
          puVar7 = (undefined4 *)(**(code **)(*piVar6 + 0x34))(&local_20);
          uVar1 = puVar7[1];
          uVar2 = puVar7[2];
          uVar3 = puVar7[3];
          *puVar11 = *puVar7;
          puVar11[1] = uVar1;
          puVar11[2] = uVar2;
          puVar11[3] = uVar3;
          puVar7 = (undefined4 *)(**(code **)(*piVar6 + 0x30))(&uStack_24);
          uVar1 = puVar7[1];
          uVar2 = puVar7[2];
          uVar3 = puVar7[3];
          puVar11[4] = *puVar7;
          puVar11[5] = uVar1;
          puVar11[6] = uVar2;
          puVar11[7] = uVar3;
          fVar12 = (float10)(**(code **)(*piVar6 + 0x70))();
          puVar11[0xb] = (float)fVar12;
          fVar12 = (float10)(**(code **)(*piVar6 + 0x3c))();
          puVar11[0xc] = (float)fVar12;
        }
        goto LAB_00980639;
      }
      pcVar9 = *(code **)(*local_3c + 0x34);
      local_40 = local_3c;
    }
    else {
      pcVar9 = *(code **)(*local_40 + 0x34);
    }
    puVar7 = (undefined4 *)(*pcVar9)(&local_20);
    uVar1 = puVar7[1];
    uVar2 = puVar7[2];
    uVar3 = puVar7[3];
    *puVar11 = *puVar7;
    puVar11[1] = uVar1;
    puVar11[2] = uVar2;
    puVar11[3] = uVar3;
    puVar7 = (undefined4 *)(**(code **)(*local_40 + 0x30))(&uStack_24);
    uVar1 = puVar7[1];
    uVar2 = puVar7[2];
    uVar3 = puVar7[3];
    puVar11[4] = *puVar7;
    puVar11[5] = uVar1;
    puVar11[6] = uVar2;
    puVar11[7] = uVar3;
  }
  else {
    puVar7 = (undefined4 *)(**(code **)(*piVar10 + 0x34))(&local_20);
    uVar1 = puVar7[1];
    uVar2 = puVar7[2];
    uVar3 = puVar7[3];
    *puVar11 = *puVar7;
    puVar11[1] = uVar1;
    puVar11[2] = uVar2;
    puVar11[3] = uVar3;
    puVar7 = (undefined4 *)(**(code **)(*piVar10 + 0x30))(&uStack_24);
    uVar1 = puVar7[1];
    uVar2 = puVar7[2];
    uVar3 = puVar7[3];
    puVar11[4] = *puVar7;
    puVar11[5] = uVar1;
    puVar11[6] = uVar2;
    puVar11[7] = uVar3;
    *(undefined1 *)(puVar11 + 9) = *(undefined1 *)((int)piVar10 + 0x809);
    puVar11[10] = piVar10[0x203];
  }
LAB_00980639:
  puVar11[8] = 0;
  if (DAT_011edbc4 != (void *)0x0) {
    local_20 = (float)puVar11[4];
    uStack_1c = puVar11[5];
    fStack_18 = (float)puVar11[6];
    uStack_24 = puVar11[7];
    uStack_14 = uStack_24;
    pvVar8 = FUN_00c68940(DAT_011edbc4,local_20,fStack_18,DAT_00fe92f8);
    if (pvVar8 != (void *)0x0) {
      puVar11[8] = *(undefined4 *)((int)pvVar8 + 0x39c);
    }
  }
  *(undefined1 *)(iVar4 + 0xb80 + (int)this) = 1;
  FUN_0097fd20((int)this);
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01163058 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_PickPixelImpl [assembly=ScriptCore token=0x06000E48; imageKey:
   Sims3.SimIFace.ResourceKey, x: System.Single, y: System.Single; return=System.Single[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.UIManager::UIManager_PickPixelImpl(void)

{
  uint uVar1;
  float fVar2;
  undefined4 uVar3;
  char cVar4;
  int *piVar5;
  int *piVar6;
  undefined4 *puVar7;
  int *piVar8;
  uint uVar9;
  uint uVar10;
  bool bVar11;
  float in_stack_00000014;
  float in_stack_00000018;
  void *pvVar12;
  int *piVar13;
  undefined1 auStack_60 [4];
  int *piStack_5c;
  undefined4 local_58;
  undefined8 uStack_54;
  float fStack_4c;
  float fStack_48;
  undefined4 local_3c [2];
  int local_34;
  undefined4 local_2c [11];
  
  piVar5 = (int *)FUN_004afe80();
  piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_58 = 0;
  FUN_00445400(local_2c);
  FUN_0076c0e0(&stack0x00000004,local_3c);
  if (((local_34 == 0x2f7d0002) || (local_34 == 0x2f7d0004)) || (local_34 == 0x2f7d0006)) {
    piVar5 = (int *)(**(code **)(*piVar5 + 0x44))(local_3c);
    piStack_5c = (int *)0x0;
    if (piVar5 != (int *)0x0) {
      cVar4 = (**(code **)(*piVar5 + 0x34))(local_3c,&piStack_5c,1,6,1,0);
      if (cVar4 != '\0') {
        puVar7 = (undefined4 *)FUN_00444060(0x30);
        if (puVar7 == (undefined4 *)0x0) {
          piVar5 = (int *)0x0;
        }
        else {
          piVar5 = (int *)FUN_004446f0(puVar7);
        }
        pvVar12 = (void *)0x32;
        piVar13 = piVar5;
        piVar8 = (int *)(**(code **)(*piStack_5c + 0x18))(0x32,piVar5,10);
        cVar4 = FUN_004460e0(piVar8,pvVar12,piVar13);
        if (cVar4 == '\0') {
          if (piVar5 != (int *)0x0) {
            (**(code **)*piVar5)(1);
          }
          (**(code **)(*piStack_5c + 0x20))();
          (**(code **)(*piStack_5c + 8))();
          uVar3 = local_58;
          FUN_00445440(local_2c);
          return uVar3;
        }
        (**(code **)(*piStack_5c + 0x20))();
        (**(code **)(*piStack_5c + 8))();
        piStack_5c = (int *)0x0;
        uVar9 = piVar5[6];
        fVar2 = (float)(int)uVar9;
        if ((int)uVar9 < 0) {
          fVar2 = fVar2 + _DAT_00f99948;
        }
        uVar1 = piVar5[7];
        uStack_54._0_4_ = (uint)(longlong)ROUND(fVar2 * in_stack_00000014);
        uVar10 = (uint)uStack_54;
        fVar2 = (float)(int)uVar1;
        if ((int)uVar1 < 0) {
          fVar2 = fVar2 + _DAT_00f99948;
        }
        bVar11 = uVar9 <= (uint)uStack_54;
        uStack_54._0_4_ = (uint)(longlong)ROUND(fVar2 * in_stack_00000018);
        if (bVar11) {
          uVar10 = uVar9 - 1;
        }
        if (uVar1 <= (uint)uStack_54) {
          uStack_54._0_4_ = uVar1 - 1;
        }
        uVar9 = (uint)uStack_54;
        uStack_54 = (longlong)ROUND(fVar2 * in_stack_00000018);
        uVar9 = (**(code **)(*piVar5 + 0x30))(uVar10,uVar9);
        uStack_54 = CONCAT44((float)(uVar9 >> 8 & 0xff) * DAT_00fae564,
                             (float)(uVar9 >> 0x10 & 0xff) * DAT_00fae564);
        fStack_4c = (float)(uVar9 & 0xff) * DAT_00fae564;
        fStack_48 = (float)(uVar9 >> 0x18) * DAT_00fae564;
        (**(code **)(*piVar6 + 0x90))(auStack_60,4);
        (**(code **)(*piVar6 + 0xa8))(&stack0xffffff98,&piStack_5c,0,4);
        (**(code **)*piVar5)(1);
      }
    }
  }
  uVar3 = local_58;
  FUN_00445440(local_2c);
  return uVar3;
}


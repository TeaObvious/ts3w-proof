/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec98 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_Shake [assembly=ScriptCore token=0x060006F5; lifespan:
   System.Single, freqX: System.Single[], freqY: System.Single[], ampX: System.Single[], ampY:
   System.Single[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CameraController::Camera_Shake
          (undefined4 param_1,undefined4 *param_2,int param_3,undefined4 **param_4,
          undefined4 param_5)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 **ppuVar7;
  undefined1 *this;
  undefined4 *puStack_50;
  undefined4 *puStack_4c;
  undefined4 *puStack_48;
  int iStack_44;
  undefined4 auStack_30 [2];
  int iStack_28;
  
  iStack_44 = 0x73e811;
  iVar3 = FUN_00969bd0();
  if (iVar3 != 0) {
    iStack_44 = 0x73e822;
    iVar3 = FUN_00f21ff0(iVar3);
    if (iVar3 != 0) {
      iStack_44 = 0x73e831;
      piVar4 = (int *)FUN_00513de0(iVar3);
      if (piVar4 != (int *)0x0) {
        iStack_44 = 0x110fdd89;
        puStack_48 = (undefined4 *)0x73e847;
        iStack_28 = (**(code **)(*piVar4 + 0xc))();
        if (iStack_28 != 0) {
          puStack_48 = (undefined4 *)0x73e858;
          piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
          if (piVar4 != (int *)0x0) {
            puStack_48 = (undefined4 *)0x0;
            puStack_4c = (undefined4 *)0x0;
            puStack_50 = (undefined4 *)0x0;
            puVar5 = (undefined4 *)FUN_004e4500(0x28,"Misc/Camera/ShakeData",0);
            if (puVar5 == (undefined4 *)0x0) {
              puVar5 = (undefined4 *)0x0;
            }
            else {
              puVar5[2] = 0;
              puVar5[3] = 0;
              puVar5[4] = 0;
              puVar5[5] = "Misc/Camera/ShakeFreq";
              puVar5[6] = 0;
              puVar5[7] = 0;
              puVar5[8] = 0;
              *puVar5 = 0;
              puVar5[1] = 0;
              puVar5[9] = "Misc/Camera/ShakeAmp";
            }
            puStack_48 = (undefined4 *)&stack0xffffffc8;
            *puVar5 = param_1;
            puVar5[1] = 0;
            puStack_4c = auStack_30;
            puStack_50 = param_2;
            auStack_30[0] = 0;
            (**(code **)(*piVar4 + 0x78))();
            this = &stack0xffffffc8;
            (**(code **)(*piVar4 + 0x78))();
            if (puStack_50 == puStack_4c) {
              Vector16_ResizeCount(puVar5 + 2,(uint)puStack_50);
              iVar3 = 0;
              if (0 < (int)puStack_50) {
                iVar6 = 0;
                do {
                  auStack_30[0] = puStack_48[iVar3];
                  uVar2 = *(undefined4 *)(iStack_44 + iVar3 * 4);
                  puVar1 = (undefined4 *)(puVar5[2] + iVar6);
                  *puVar1 = auStack_30[0];
                  puVar1[1] = uVar2;
                  puVar1[2] = auStack_30[0];
                  puVar1[3] = auStack_30[0];
                  iVar3 = iVar3 + 1;
                  iVar6 = iVar6 + 0x10;
                } while (iVar3 < (int)puStack_50);
              }
            }
            else {
              auStack_30[0] = 0;
              FUN_005d26f0(puVar5 + 2,(undefined4 *)&stack0xffffffc4);
            }
            ppuVar7 = &puStack_50;
            (**(code **)(*piVar4 + 0x78))();
            (**(code **)(*piVar4 + 0x78))(param_5,&puStack_50,&stack0xffffffa8);
            if (param_4 == &puStack_48) {
              Vector16_ResizeCount(puVar5 + 6,(uint)param_4);
              iVar3 = 0;
              if (0 < (int)param_4) {
                iVar6 = 0;
                do {
                  puStack_4c = ppuVar7[iVar3];
                  puStack_50 = *(undefined4 **)(param_3 + iVar3 * 4);
                  puVar1 = (undefined4 *)(puVar5[6] + iVar6);
                  *puVar1 = puStack_4c;
                  puVar1[1] = puStack_50;
                  puVar1[2] = puStack_4c;
                  puVar1[3] = puStack_4c;
                  iVar3 = iVar3 + 1;
                  iVar6 = iVar6 + 0x10;
                } while (iVar3 < (int)param_4);
                puStack_48 = puStack_4c;
                FUN_00974030(this,puVar5);
                return;
              }
            }
            else {
              puVar1 = (undefined4 *)puVar5[7];
              puStack_50 = (undefined4 *)0x0;
              puStack_4c = (undefined4 *)0x0;
              puStack_48 = (undefined4 *)0x0;
              if (puVar1 < (undefined4 *)puVar5[8]) {
                puVar5[7] = puVar1 + 4;
                if (puVar1 != (undefined4 *)0x0) {
                  *puVar1 = 0;
                  puVar1[1] = 0;
                  puVar1[2] = 0;
                  puVar1[3] = 0;
                  FUN_00974030(this,puVar5);
                  return;
                }
              }
              else {
                FUN_005cf970(puVar5 + 6,puVar1,(undefined4 *)&stack0xffffffac);
              }
            }
            FUN_00974030(this,puVar5);
          }
        }
      }
    }
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163750 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_CapturePhoto [assembly=ScriptCore token=0x060007EE; style: System.UInt32,
   objIdsToFrame: Sims3.SimIFace.ObjectGuid[], callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.World::World_CapturePhoto(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int unaff_ESI;
  undefined8 uVar4;
  int iStack_94;
  uint local_90;
  int local_8c [2];
  int local_84;
  int local_80 [3];
  char *local_74 [4];
  float afStack_64 [4];
  undefined1 auStack_54 [16];
  undefined **appuStack_44 [2];
  ushort uStack_3c;
  undefined2 uStack_3a;
  
  iVar1 = FUN_009e0120();
  local_84 = iVar1;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    local_80[0] = 0;
    local_80[1] = 0;
    local_80[2] = 0;
    local_74[0] = "World/CapturePhoto";
    if (param_2 != 0) {
      local_8c[0] = 0;
      local_90 = 0;
      (**(code **)(*piVar2 + 0x68))(param_2,local_8c,&local_90);
      FUN_0059f220(local_80,local_90);
      iVar1 = 0;
      if (0 < (int)local_90) {
        do {
          *(undefined4 *)(local_80[0] + iVar1 * 8) = *(undefined4 *)(local_8c[0] + iVar1 * 8);
          *(undefined4 *)(local_80[0] + 4 + iVar1 * 8) =
               *(undefined4 *)(local_8c[0] + 4 + iVar1 * 8);
          iVar1 = iVar1 + 1;
        } while (iVar1 < (int)local_90);
      }
    }
    uVar4 = (**(code **)(*piVar2 + 0x118))();
    (**(code **)(*piVar2 + 0x120))(uVar4,0xffffffff,param_3,0);
    FUN_0097e600(&iStack_94,afStack_64,(undefined1 (*) [16])local_74,(float *)&stack0xffffff64);
    uVar3 = FUN_009db630(&iStack_94,param_1,(int *)afStack_64,(int *)local_74,unaff_ESI,&local_84,
                         (int)uVar4,(int)((ulonglong)uVar4 >> 0x20));
    if ((char)uVar3 == '\0') {
      appuStack_44[0] = &PTR_FUN_00fba6f4;
      uStack_3c = 0;
      uStack_3a = 0;
      FUN_004f59c0(appuStack_44,0x87,0,auStack_54,0x10,1);
      (**(code **)(*piVar2 + 0x124))(uVar4,appuStack_44);
      appuStack_44[0] = &PTR_FUN_00fba6f4;
      if ((uStack_3c & 4) != 0) {
        FUN_004f5760(appuStack_44,'\0');
      }
    }
    else {
      (**(code **)(*piVar2 + 0x11c))();
    }
    if (iStack_94 != 0) {
      FUN_004e44e0(iStack_94);
    }
  }
  return;
}


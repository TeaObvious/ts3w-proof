/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189de0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_UserToolGenericImpl [assembly=ScriptCore
   token=0x06000BE4; funcID: System.UInt32, productInstanceID: System.UInt64, productGroupID:
   System.UInt32, productTypeID: System.UInt32, presetID: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.UserToolUtils::UserToolUtils_UserToolGenericImpl
          (uint param_1,uint param_2,undefined4 param_3,undefined4 param_4,uint param_5,uint param_6
          )

{
  void *pvVar1;
  void *this;
  undefined4 uVar2;
  int *piVar3;
  uint uVar4;
  undefined8 uVar5;
  uint *visitCounter;
  uint local_240;
  undefined4 local_23c;
  uint local_238;
  undefined4 local_234;
  int *local_230;
  int local_22c [17];
  undefined4 local_1e8 [34];
  undefined4 local_160 [87];
  
  this = (void *)FUN_00cef500();
  pvVar1 = DAT_011edbc4;
  if (this == (void *)0x0) {
    return;
  }
  if (param_1 < 0xcd) {
    if (199 < param_1) {
      if (DAT_011edbc4 == (void *)0x0) {
        return;
      }
      FUN_00c652d0(DAT_011edbc4,param_1);
      return;
    }
    switch(param_1) {
    case 100:
      piVar3 = *(int **)((int)this + 0x28);
      if (piVar3 == (int *)0x0) {
        return;
      }
      uVar2 = FUN_00d396e0(piVar3);
      if ((char)uVar2 == '\0') {
        return;
      }
      FUN_00d39a50(piVar3);
      return;
    case 0x65:
      pvVar1 = *(void **)((int)this + 0x28);
      if (pvVar1 == (void *)0x0) {
        return;
      }
      uVar2 = FUN_00d39720((int)pvVar1);
      if ((char)uVar2 == '\0') {
        return;
      }
      FUN_00d39b90(pvVar1);
      return;
    case 0x66:
      if (*(int *)((int)this + 0x28) == 0) {
        return;
      }
      FUN_00d39870(*(int *)((int)this + 0x28));
      return;
    case 0x67:
      if (DAT_011edbc4 == (void *)0x0) {
        return;
      }
      visitCounter = (uint *)0x0;
      uVar5 = FUN_00c5f560((int)DAT_011edbc4);
      piVar3 = WorldObjects_FindLotByGuid
                         (pvVar1,(uint)uVar5,(uint)((ulonglong)uVar5 >> 0x20),visitCounter);
      if (piVar3 == (int *)0x0) {
        return;
      }
      *(undefined1 *)((int)this + 0x1d0) = 1;
      FUN_00ceb790(local_160,piVar3);
      FUN_00ca6800(local_160);
      FUN_00ceb9a0(local_160);
      return;
    case 0x68:
      *(undefined1 *)((int)this + 0x1d0) = 0;
      return;
    }
  }
  else {
    if (param_1 < 0x1f6) {
      if (499 < param_1) {
        if (DAT_011edbc4 == (void *)0x0) {
          return;
        }
        FUN_00468000(DAT_011edbc4,param_1);
        return;
      }
      switch(param_1) {
      case 300:
      case 0x12d:
      case 0x12e:
        if (DAT_011edbc4 != (void *)0x0) {
          FUN_00c62750(DAT_011edbc4,param_1);
          return;
        }
        break;
      default:
        goto switchD_00cebbd4_default;
      case 400:
      case 0x191:
        if (DAT_011edbc4 != (void *)0x0) {
          FUN_00c627c0(param_1);
          return;
        }
      }
      return;
    }
    if (param_1 == 0x1f6) {
      if (*(int *)((int)this + 0x28) == 0) {
        return;
      }
      FUN_00d397b0(*(int *)((int)this + 0x28));
      return;
    }
    if ((599 < param_1) && (param_1 < 0x25a)) {
      if (DAT_011edbc4 == (void *)0x0) {
        return;
      }
      FUN_00c5f4a0(DAT_011edbc4,param_1);
      return;
    }
  }
switchD_00cebbd4_default:
  FUN_00c9fac0(local_1e8);
  FUN_00b17ef0(&local_230);
  local_240 = param_2;
  local_23c = param_3;
  local_238 = param_5;
  local_234 = param_4;
  if (param_1 != 0x33) goto LAB_00cebe23;
  if (param_5 < 0x4f3cc02) {
    if (param_5 == 0x4f3cc01) {
      param_1 = 0x13;
      goto LAB_00cebe23;
    }
    if (param_5 == 0x418fe2a) {
      param_1 = 8;
      goto LAB_00cebe23;
    }
    if (param_5 == 0x49ca4cd) {
      param_1 = 0x10;
      goto LAB_00cebe23;
    }
    if (param_5 == 0x4c58103) {
      param_1 = 0x11;
      goto LAB_00cebe23;
    }
  }
  else if ((param_5 != 0x319e4f1d) && (param_5 == 0x515ca4cd)) {
    if ((DAT_011ee034 != (void *)0x0) &&
       (uVar4 = ProductCatalog_FindExactKeyInFourBanks(DAT_011ee034,&local_240), uVar4 != 0)) {
      if (*(int *)(uVar4 + 0x88) == 2) {
        param_1 = 1;
      }
      else if (*(int *)(uVar4 + 0x88) == 1) {
        param_1 = 2;
      }
    }
    goto LAB_00cebe23;
  }
  param_1 = 4;
LAB_00cebe23:
  UserToolHost_PrepareParameters(param_1,&local_240,param_6,local_1e8,&local_230);
  UserToolHost_SelectOrReuseTool(this,param_1,(int)local_1e8);
  FUN_00626e50(local_22c);
  if (local_230 != (int *)0x0) {
    (**(code **)(*local_230 + 4))();
  }
  FUN_00c9fa30(local_1e8);
  return;
}


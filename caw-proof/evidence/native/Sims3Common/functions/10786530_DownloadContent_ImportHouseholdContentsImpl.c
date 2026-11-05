/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ImportHouseholdContentsImpl.
   Export ordinal(s): 389. Entry VA: 0x10786530. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001180. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
DownloadContent_ImportHouseholdContentsImpl
          (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  void *this;
  char cVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  char *local_d4;
  undefined4 local_d0;
  int local_cc [4];
  int *local_bc [6];
  int local_a4;
  int local_a0;
  int local_94 [4];
  undefined1 local_84 [132];
  
                    /* 0x786530  389  DownloadContent_ImportHouseholdContentsImpl */
  piVar2 = (int *)FUN_1055b120();
  this = DAT_10c8de94;
  FUN_105ca870(local_bc);
  uVar3 = FUN_10790830(this,local_bc);
  if ((char)uVar3 == '\0') {
    uVar4 = FUN_105ca900((int)local_bc);
    return uVar4 & 0xffffff00;
  }
  FUN_105c9b50(local_84,0);
  cVar1 = FUN_105ca360(local_84,(uint *)local_bc,0x283095,param_1,param_2,(undefined4 *)0x0);
  if (cVar1 == '\0') {
    FUN_105c9800((int)local_84);
    uVar4 = FUN_105ca900((int)local_bc);
    return uVar4 & 0xffffff00;
  }
  local_d4 = "Scratch/DownloadContent/IndexedKeyListImport";
  FUN_10727810(local_cc,&local_d4);
  FUN_105ca570(local_84,local_cc);
  uVar3 = FUN_10789a00(local_cc,local_bc[0]);
  if ((char)uVar3 == '\0') {
    if (local_cc[0] != 0) {
      FUN_10918e90(local_cc[0]);
    }
    FUN_105c9800((int)local_84);
    uVar4 = FUN_105ca900((int)local_bc);
    return uVar4 & 0xffffff00;
  }
  uVar3 = FUN_10784810(piVar2,local_cc,param_3);
  if ((char)uVar3 == '\0') {
    if (local_cc[0] != 0) {
      FUN_10918e90(local_cc[0]);
    }
    FUN_105c9800((int)local_84);
    uVar4 = FUN_105ca900((int)local_bc);
    return uVar4 & 0xffffff00;
  }
  FUN_1079ed80(&local_a4);
  cVar1 = FUN_1079eda0(&local_a4,local_bc,0,param_1,param_2);
  if (cVar1 == '\0') {
    if (local_a4 != 0) {
      FUN_10918e90(local_a4);
    }
    if (local_cc[0] != 0) {
      FUN_10918e90(local_cc[0]);
    }
    FUN_105c9800((int)local_84);
    uVar4 = FUN_105ca900((int)local_bc);
    return uVar4 & 0xffffff00;
  }
  uVar3 = FUN_10784140(piVar2,local_a4,local_a0 - local_a4,param_5);
  if ((char)uVar3 == '\0') {
    if (local_a4 != 0) {
      FUN_10918e90(local_a4);
    }
    if (local_cc[0] != 0) {
      FUN_10918e90(local_cc[0]);
    }
    FUN_105c9800((int)local_84);
    uVar4 = FUN_105ca900((int)local_bc);
    return uVar4 & 0xffffff00;
  }
  local_d4 = "Scratch/DownloadContent/ObjectIdList";
  FUN_10727810(local_94,&local_d4);
  local_d4 = (char *)0x0;
  local_d0 = 0;
  FUN_10036d60(local_94,&local_d4);
  uVar3 = FUN_107848f0(piVar2,local_94,param_4);
  if ((char)uVar3 == '\0') {
    if (local_94[0] != 0) {
      FUN_10918e90(local_94[0]);
    }
    if (local_a4 != 0) {
      FUN_10918e90(local_a4);
    }
    if (local_cc[0] != 0) {
      FUN_10918e90(local_cc[0]);
    }
    FUN_105c9800((int)local_84);
    uVar4 = FUN_105ca900((int)local_bc);
    return uVar4 & 0xffffff00;
  }
  FUN_1009b0a0(param_1,param_2,(uint *)local_bc);
  if (local_94[0] != 0) {
    FUN_10918e90(local_94[0]);
  }
  if (local_a4 != 0) {
    FUN_10918e90(local_a4);
  }
  if (local_cc[0] != 0) {
    FUN_10918e90(local_cc[0]);
  }
  FUN_105c9800((int)local_84);
  uVar3 = FUN_105ca900((int)local_bc);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}


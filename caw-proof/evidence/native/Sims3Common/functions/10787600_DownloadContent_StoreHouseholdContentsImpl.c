/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_StoreHouseholdContentsImpl.
   Export ordinal(s): 411. Entry VA: 0x10787600. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600117F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
DownloadContent_StoreHouseholdContentsImpl
          (int param_1,undefined4 param_2,undefined4 param_3,void *param_4,undefined4 param_5)

{
  char cVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  void *pvVar5;
  char *local_124;
  int local_120 [4];
  int *local_110 [6];
  undefined **local_f8;
  int local_f0;
  undefined4 local_ec;
  int local_e8 [4];
  int local_d8 [4];
  int local_c8;
  int local_c4;
  int local_b8;
  undefined1 local_9c [24];
  undefined1 local_84 [132];
  
                    /* 0x787600  411  DownloadContent_StoreHouseholdContentsImpl */
  piVar2 = (int *)FUN_1055b120();
  local_124 = "Scratch/DownloadContent/IndexedKeyList";
  FUN_10727810(local_120,&local_124);
  uVar3 = FUN_10784010(piVar2,param_3);
  if ((char)uVar3 != '\0') {
    FUN_105c9b50(local_84,0);
    uVar3 = FUN_1078e350(local_120,local_84);
    pvVar5 = DAT_10c8de94;
    if ((char)uVar3 != '\0') {
      FUN_105ca870(local_110);
      uVar3 = FUN_10790830(pvVar5,local_110);
      if ((char)uVar3 == '\0') {
        FUN_105ca900((int)local_110);
        FUN_105c9800((int)local_84);
        uVar4 = 0;
        if (local_120[0] != 0) {
          uVar4 = FUN_10918e90(local_120[0]);
        }
        return uVar4 & 0xffffff00;
      }
      FUN_105c98b0(local_84,local_110,0x283095,param_1,param_2,(void *)0x0);
      local_124 = "Scratch/DownloadContent/ObjectIdList";
      FUN_10727810(local_e8,&local_124);
      uVar3 = FUN_107869e0(piVar2,param_4);
      if ((char)uVar3 == '\0') {
        if (local_e8[0] != 0) {
          FUN_10918e90(local_e8[0]);
        }
        FUN_105ca900((int)local_110);
        FUN_105c9800((int)local_84);
        uVar4 = 0;
        if (local_120[0] != 0) {
          uVar4 = FUN_10918e90(local_120[0]);
          return uVar4 & 0xffffff00;
        }
      }
      else {
        FUN_10914090(&local_c8,0,0,"Scratch/DownloadContent/MemoryStream");
        FUN_10913a70(&local_c8,1,1.0);
        FUN_105cc2a0(local_9c,&local_c8,1);
        cVar1 = FUN_10784080(piVar2,param_5);
        if (cVar1 != '\0') {
          FUN_1079ed80(local_d8);
          if (local_c4 == 0) {
            pvVar5 = (void *)0x0;
          }
          else {
            pvVar5 = *(void **)(local_c4 + 8);
          }
          FUN_1079ee50(local_d8,pvVar5,local_b8);
          FUN_1079ecf0(local_d8,local_110,0,param_1,param_2);
          local_f8 = &PTR_LAB_10ab59cc;
          local_f0 = param_1;
          local_ec = param_2;
          FUN_105cbff0(local_110[0],*(int **)(DAT_10c700c4 + 0x84));
          local_f8 = &PTR_LAB_10ab3a7c;
          if (local_d8[0] != 0) {
            FUN_10918e90(local_d8[0]);
          }
          FUN_105ca900((int)local_9c);
          FUN_1001e1d0(&local_c8);
          if (local_e8[0] != 0) {
            FUN_10918e90(local_e8[0]);
          }
          FUN_105ca900((int)local_110);
          FUN_105c9800((int)local_84);
          uVar3 = 0;
          if (local_120[0] != 0) {
            uVar3 = FUN_10918e90(local_120[0]);
          }
          return CONCAT31((int3)((uint)uVar3 >> 8),1);
        }
        FUN_105ca900((int)local_9c);
        FUN_1001e1d0(&local_c8);
        if (local_e8[0] != 0) {
          FUN_10918e90(local_e8[0]);
        }
        FUN_105ca900((int)local_110);
        FUN_105c9800((int)local_84);
        uVar4 = 0;
        if (local_120[0] != 0) {
          uVar4 = FUN_10918e90(local_120[0]);
        }
      }
      return uVar4 & 0xffffff00;
    }
    FUN_105c9800((int)local_84);
  }
  uVar4 = 0;
  if (local_120[0] != 0) {
    uVar4 = FUN_10918e90(local_120[0]);
  }
  return uVar4 & 0xffffff00;
}


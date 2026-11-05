/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ImportInventoryImpl. Export
   ordinal(s): 390. Entry VA: 0x107849b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600117D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
DownloadContent_ImportInventoryImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  void *this;
  undefined4 uVar5;
  uint local_5c;
  uint local_58;
  char *local_54;
  uint local_50;
  uint local_4c;
  int local_48 [4];
  int local_38 [4];
  int local_28 [4];
  int *local_18 [2];
  int *local_10;
  char local_4;
  
                    /* 0x7849b0  390  DownloadContent_ImportInventoryImpl */
  piVar2 = (int *)FUN_1055b120();
  iVar3 = FUN_107744c0();
  FUN_107742c0(iVar3);
  FUN_105ca870(local_18);
  cVar1 = FUN_1079f0f0(param_1,param_2,local_18);
  if (cVar1 != '\0') {
    uVar4 = FUN_10912610(local_10,&local_58);
    FUN_105ca960(local_18,(byte)uVar4);
    uVar4 = FUN_10912610(local_10,&local_50);
    FUN_105ca960(local_18,(byte)uVar4);
    uVar4 = FUN_10912610(local_10,&local_4c);
    FUN_105ca960(local_18,(byte)uVar4);
    uVar4 = FUN_10912610(local_10,&local_5c);
    FUN_105ca960(local_18,(byte)uVar4);
    if (local_4 != '\0') {
      iVar3 = FUN_105cb330((int)local_18);
      FUN_105cb350(local_18,local_58,0);
      local_54 = "Scratch/DownloadContent/IndexedKeyList";
      FUN_10727810(local_48,&local_54);
      cVar1 = FUN_105cc850(local_48,local_18);
      if (cVar1 != '\0') {
        FUN_105cb350(local_18,local_50,0);
        local_54 = "Scratch/DownloadContent/LocalIndexedKeyList";
        FUN_10727810(local_38,&local_54);
        cVar1 = FUN_105cc850(local_38,local_18);
        if (cVar1 == '\0') {
          if (local_38[0] != 0) {
            FUN_10918e90(local_38[0]);
          }
        }
        else {
          FUN_105cb350(local_18,local_4c,0);
          local_54 = "Scratch/DownloadContent/ObjectIdList";
          FUN_10727810(local_28,&local_54);
          cVar1 = FUN_10728190(local_28,local_18);
          if (cVar1 == '\0') {
            if (local_28[0] != 0) {
              FUN_10918e90(local_28[0]);
            }
            if (local_38[0] != 0) {
              FUN_10918e90(local_38[0]);
            }
          }
          else {
            FUN_105cb350(local_18,iVar3,0);
            this = (void *)FUN_1072a1a0();
            iVar3 = FUN_1072bc60(this,local_18,local_48,local_38,local_28);
            if (iVar3 == 0) {
              if (local_28[0] != 0) {
                FUN_10918e90(local_28[0]);
              }
              if (local_38[0] != 0) {
                FUN_10918e90(local_38[0]);
              }
            }
            else {
              uVar5 = FUN_10789a00(local_38,local_18[0]);
              if ((char)uVar5 == '\0') {
                if (local_28[0] != 0) {
                  FUN_10918e90(local_28[0]);
                }
                if (local_38[0] != 0) {
                  FUN_10918e90(local_38[0]);
                }
              }
              else {
                FUN_105cb350(local_18,local_5c,0);
                iVar3 = (**(code **)(*local_10 + 0x1c))();
                uVar5 = FUN_107840c0(piVar2,local_10,iVar3 - local_5c);
                if ((char)uVar5 == '\0') {
                  if (local_28[0] != 0) {
                    FUN_10918e90(local_28[0]);
                  }
                  if (local_38[0] != 0) {
                    FUN_10918e90(local_38[0]);
                  }
                }
                else {
                  uVar5 = FUN_10784810(piVar2,local_48,param_3);
                  if ((char)uVar5 == '\0') {
                    if (local_28[0] != 0) {
                      FUN_10918e90(local_28[0]);
                    }
                    if (local_38[0] != 0) {
                      FUN_10918e90(local_38[0]);
                    }
                  }
                  else {
                    uVar5 = FUN_107848f0(piVar2,local_28,param_4);
                    if ((char)uVar5 != '\0') {
                      FUN_105ca9e0((int)local_18);
                      if (local_28[0] != 0) {
                        FUN_10918e90(local_28[0]);
                      }
                      if (local_38[0] != 0) {
                        FUN_10918e90(local_38[0]);
                      }
                      if (local_48[0] != 0) {
                        FUN_10918e90(local_48[0]);
                      }
                      uVar5 = FUN_105ca900((int)local_18);
                      return CONCAT31((int3)((uint)uVar5 >> 8),1);
                    }
                    if (local_28[0] != 0) {
                      FUN_10918e90(local_28[0]);
                    }
                    if (local_38[0] != 0) {
                      FUN_10918e90(local_38[0]);
                    }
                  }
                }
              }
            }
          }
        }
      }
      if (local_48[0] != 0) {
        FUN_10918e90(local_48[0]);
      }
    }
  }
  uVar4 = FUN_105ca900((int)local_18);
  return uVar4 & 0xffffff00;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ImportLotContentsImpl. Export
   ordinal(s): 392. Entry VA: 0x10784d60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001184. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
DownloadContent_ImportLotContentsImpl
          (uint param_1,uint param_2,int param_3,int param_4,undefined2 *param_5,ushort *param_6,
          undefined4 param_7,undefined4 param_8)

{
  void *this;
  char cVar1;
  undefined1 uVar2;
  int *piVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  uint local_50;
  char *local_4c;
  int local_48 [4];
  int local_38 [4];
  uint local_28;
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  int *local_18 [2];
  int *local_10;
  
                    /* 0x784d60  392  DownloadContent_ImportLotContentsImpl */
  piVar3 = (int *)FUN_1055b120();
  this = DAT_10c6e9d8;
  if (DAT_10c6e9d8 == (void *)0x0) {
    return (uint)piVar3 & 0xffffff00;
  }
  local_4c = "Scratch/LotExport/ObjectIdList";
  FUN_10727810(local_48,&local_4c);
  FUN_105ca870(local_18);
  uVar4 = FUN_1009a8c0(this,param_1,param_2,param_3,param_4,param_5,param_6,(uint *)local_18,
                       local_48);
  if ((char)uVar4 != '\0') {
    local_28 = param_1;
    local_24 = param_2;
    local_20 = 0x94ec4b54;
    local_1c = 0;
    cVar1 = FUN_105cb380(local_18,&local_28,'\0');
    if (cVar1 != '\0') {
      uVar4 = FUN_10912610(local_10,&local_50);
      FUN_105ca960(local_18,(byte)uVar4);
      iVar5 = FUN_105cb330((int)local_18);
      FUN_105cb350(local_18,local_50,0);
      local_4c = "Scratch/LotExport/ResourceKeyList";
      FUN_10727810(local_38,&local_4c);
      uVar2 = FUN_105cc850(local_38,local_18);
      uVar6 = FUN_10789a00(local_38,local_18[0]);
      if ((char)uVar6 == '\0') {
        if (local_38[0] != 0) {
          FUN_10918e90(local_38[0]);
        }
        FUN_105ca900((int)local_18);
        uVar4 = 0;
        if (local_48[0] != 0) {
          uVar4 = FUN_10918e90(local_48[0]);
          return uVar4 & 0xffffff00;
        }
        goto LAB_10784fb1;
      }
      FUN_105cb350(local_18,iVar5,0);
      uVar6 = FUN_107840c0(piVar3,local_10,local_50 - iVar5);
      if ((char)uVar6 == '\0') {
        if (local_38[0] != 0) {
          FUN_10918e90(local_38[0]);
        }
        FUN_105ca900((int)local_18);
        uVar4 = 0;
        if (local_48[0] != 0) {
          uVar4 = FUN_10918e90(local_48[0]);
          return uVar4 & 0xffffff00;
        }
        goto LAB_10784fb1;
      }
      uVar6 = FUN_10784810(piVar3,local_38,param_7);
      if ((char)uVar6 == '\0') {
        if (local_38[0] != 0) {
          FUN_10918e90(local_38[0]);
        }
        FUN_105ca900((int)local_18);
        uVar4 = 0;
        if (local_48[0] != 0) {
          uVar4 = FUN_10918e90(local_48[0]);
          return uVar4 & 0xffffff00;
        }
        goto LAB_10784fb1;
      }
      uVar6 = FUN_107848f0(piVar3,local_48,param_8);
      if ((char)uVar6 != '\0') {
        FUN_105ca9e0((int)local_18);
        if (local_38[0] != 0) {
          FUN_10918e90(local_38[0]);
        }
        FUN_105ca900((int)local_18);
        uVar6 = 0;
        if (local_48[0] != 0) {
          uVar6 = FUN_10918e90(local_48[0]);
        }
        return CONCAT31((int3)((uint)uVar6 >> 8),uVar2) & 0xffffff01;
      }
      if (local_38[0] != 0) {
        FUN_10918e90(local_38[0]);
      }
    }
  }
  FUN_105ca900((int)local_18);
  uVar4 = 0;
  if (local_48[0] != 0) {
    uVar4 = FUN_10918e90(local_48[0]);
  }
LAB_10784fb1:
  return uVar4 & 0xffffff00;
}


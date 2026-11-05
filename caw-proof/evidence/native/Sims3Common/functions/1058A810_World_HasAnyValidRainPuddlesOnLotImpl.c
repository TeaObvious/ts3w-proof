/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasAnyValidRainPuddlesOnLotImpl. Export
   ordinal(s): 1404. Entry VA: 0x1058a810. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000D02. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_HasAnyValidRainPuddlesOnLotImpl(int param_1,int param_2)

{
  void *pvVar1;
  char cVar2;
  int *in_EAX;
  int *this;
  undefined3 extraout_var;
  uint uVar3;
  undefined4 uVar4;
  uint local_10 [3];
  char *local_4;
  
                    /* 0x58a810  1404  World_HasAnyValidRainPuddlesOnLotImpl */
  pvVar1 = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = this;
    if ((this != (int *)0x0) && (*(int *)((int)pvVar1 + 0x74) != 0)) {
      cVar2 = FUN_10342d80();
      in_EAX = (int *)CONCAT31(extraout_var,cVar2);
      if (cVar2 != '\0') {
        local_10[0] = 0;
        local_10[1] = 0;
        local_10[2] = 0;
        local_4 = "Scratch/ValidTilePartsPerLevel";
        uVar3 = FUN_100754f0(this,local_10);
        if ((char)uVar3 != '\0') {
          uVar4 = FUN_10064cc0(local_10);
          return CONCAT31((int3)((uint)uVar4 >> 8),1);
        }
        in_EAX = (int *)FUN_10064cc0(local_10);
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}


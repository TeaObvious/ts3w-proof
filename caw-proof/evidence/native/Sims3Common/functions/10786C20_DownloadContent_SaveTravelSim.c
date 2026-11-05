/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_SaveTravelSim. Export ordinal(s):
   405. Entry VA: 0x10786c20. Original managed P/Invoke MethodDef(s): ScriptCore:0x06001178. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl DownloadContent_SaveTravelSim(undefined4 param_1,undefined4 param_2)

{
  void *this;
  int iVar1;
  char cVar2;
  undefined4 *puVar3;
  uint3 extraout_var;
  undefined4 *in_stack_00000020;
  uint local_40 [4];
  undefined4 local_30 [4];
  uint local_20 [4];
  undefined4 local_10;
  undefined4 local_c;
  
                    /* 0x786c20  405  DownloadContent_SaveTravelSim */
  puVar3 = (undefined4 *)FUN_10786a20(local_20,param_1,param_2);
  local_c = puVar3[1];
  this = (void *)puVar3[2];
  iVar1 = puVar3[3];
  if ((char)*puVar3 == '\0') {
    return (uint)puVar3 & 0xffffff00;
  }
  FUN_1055dbb0(&stack0x00000010,local_30);
  FUN_1055dbb0(in_stack_00000020,local_40);
  cVar2 = FUN_107bd5a0(this,iVar1,local_30,local_40);
  if (cVar2 != '\0') {
    puVar3 = (undefined4 *)FUN_1055daa0(&local_10,local_40);
    *in_stack_00000020 = *puVar3;
    in_stack_00000020[1] = puVar3[1];
    in_stack_00000020[2] = puVar3[2];
    in_stack_00000020[3] = puVar3[3];
    return CONCAT31((int3)((uint)puVar3 >> 8),1);
  }
  return (uint)extraout_var << 8;
}


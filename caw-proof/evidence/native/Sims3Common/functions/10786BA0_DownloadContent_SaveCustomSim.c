/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_SaveCustomSim. Export ordinal(s):
   404. Entry VA: 0x10786ba0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06001176. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl
DownloadContent_SaveCustomSim
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  int *piVar1;
  void *this;
  int iVar2;
  undefined4 *puVar3;
  short *psVar4;
  uint uVar5;
  undefined4 in_stack_00000024;
  undefined4 local_20 [4];
  uint local_10 [4];
  
                    /* 0x786ba0  404  DownloadContent_SaveCustomSim */
  puVar3 = (undefined4 *)FUN_10786a20(local_10,param_1,param_2);
  piVar1 = (int *)puVar3[1];
  this = (void *)puVar3[2];
  iVar2 = puVar3[3];
  if ((char)*puVar3 == '\0') {
    return (uint)puVar3 & 0xffffff00;
  }
  FUN_1055dbb0(&stack0x00000014,local_20);
  puVar3 = local_20;
  psVar4 = (short *)(**(code **)(*piVar1 + 0x58))();
  uVar5 = FUN_107bc3e0(this,iVar2,psVar4,param_4,(int)puVar3,in_stack_00000024);
  return uVar5;
}


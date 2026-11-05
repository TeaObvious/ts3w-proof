/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_CreateLoadSaveFileInfo_Impl.
   Export ordinal(s): 1882. Entry VA: 0x10534960. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600002A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LoadSaveManager_CreateLoadSaveFileInfo_Impl(int param_1)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 uVar4;
  int aiStack_14 [5];
  
  if (param_1 == 0) {
    return 0;
  }
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    if ((psVar2 != (short *)0x0) && (*psVar2 != 0)) {
      iVar3 = FUN_1006ee60();
      if (iVar3 != 0) {
        FUN_1006aaa0(aiStack_14,psVar2,(undefined4 *)&stack0xffffffe8);
        uVar4 = FUN_100705f0(aiStack_14,(undefined4 *)&stack0x00000000);
        if ((char)uVar4 != '\0') {
          uVar4 = (**(code **)(*piVar1 + 200))(0,0x40);
          FUN_1001f4e0((int *)&stack0xffffffe4);
          return uVar4;
        }
        FUN_1001f4e0(aiStack_14);
      }
      return 0;
    }
  }
  return 0;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_GetLastPath. Export ordinal(s):
   1240. Entry VA: 0x105760c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F1B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 VideoRecorder_GetLastPath(void)

{
  int *piVar1;
  undefined4 local_34;
  undefined *local_30;
  undefined *local_2c;
  undefined2 *local_28;
  undefined **local_24;
  undefined **ppuStack_20;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  byte bStack_18;
  
                    /* 0x5760c0  1240  VideoRecorder_GetLastPath */
  local_34 = 0;
  piVar1 = (int *)FUN_107cd170();
  if (piVar1 != (int *)0x0) {
    local_30 = &_Dst_10ca8244;
    local_2c = &_Dst_10ca8244;
    local_24 = (undefined **)0x10b21924;
    local_28 = &DAT_10ca8246;
    (**(code **)(*piVar1 + 0x1c))(&local_30);
    piVar1 = (int *)FUN_1055b120();
    local_24 = &PTR_FUN_10aca5b4;
    uStack_1a = 0x13;
    uStack_1c = 0xb;
    FUN_10928b90(&local_24,0x13,9,&local_34,0x10,1);
    (**(code **)(*piVar1 + 0x50))(&local_24,&stack0xffffffc8);
    ppuStack_20 = &PTR_FUN_10aca5b4;
    if ((bStack_18 & 4) != 0) {
      FUN_10928a90(&ppuStack_20,'\0');
    }
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined *)0x0))
    {
      FUN_10918e90((int)local_30);
    }
  }
  return local_34;
}


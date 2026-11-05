/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_LookupBBPreviewBound. Export
   ordinal(s): 1054. Entry VA: 0x10569ec0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000391. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ThumbnailManager_LookupBBPreviewBound(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int *piVar2;
  undefined1 auStack_6c [8];
  undefined4 local_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined1 auStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
                    /* 0x569ec0  1054  ThumbnailManager_LookupBBPreviewBound */
  if (DAT_10c71150 != (void *)0x0) {
    uVar1 = FUN_10327650(DAT_10c71150,param_1,param_2,&local_60,&local_40);
    if ((char)uVar1 != '\0') {
      piVar2 = (int *)FUN_1055b120();
      if (piVar2 != (int *)0x0) {
        local_28 = local_60;
        local_20 = uStack_58;
        local_24 = uStack_5c;
        local_1c = local_40;
        local_50 = local_40;
        uStack_4c = uStack_3c;
        uStack_48 = uStack_38;
        uStack_44 = uStack_34;
        local_64 = 0;
        local_18 = uStack_3c;
        local_14 = uStack_38;
        (**(code **)(*piVar2 + 0x8c))(&local_64,6);
        uVar1 = 6;
        (**(code **)(*piVar2 + 0xa8))(auStack_6c,auStack_30,0);
        return uVar1;
      }
    }
  }
  return 0;
}


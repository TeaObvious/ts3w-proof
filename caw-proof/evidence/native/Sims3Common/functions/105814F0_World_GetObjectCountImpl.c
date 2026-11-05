/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetObjectCountImpl. Export ordinal(s):
   1360. Entry VA: 0x105814f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C13. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl
World_GetObjectCountImpl(int param_1,int param_2,char param_3,undefined1 param_4,undefined1 param_5)

{
  int *this;
  int iVar1;
  char local_14;
  undefined1 local_13;
  undefined1 local_12;
  int local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x5814f0  1360  World_GetObjectCountImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (this != (int *)0x0) {
      local_14 = param_3;
      local_13 = param_4;
      local_12 = param_5;
      local_10 = 0;
      local_c = 0;
      local_8 = 0;
      local_4 = "World/UserMayPlaceFloorPattern";
      FUN_1008d4f0(this,&local_14,&local_10,'\0','\0','\x01',&DAT_0000000f,0,5);
      iVar1 = local_c - local_10;
      if (local_10 != 0) {
        FUN_10918e90(local_10);
      }
      return iVar1 >> 2;
    }
  }
  return 0;
}


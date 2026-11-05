/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetSourceKeyFromLocalKey. Export
   ordinal(s): 1789. Entry VA: 0x10982980. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EFF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
ContentManager_GetSourceKeyFromLocalKey
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 *param_5)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 *this;
  undefined4 local_140;
  void *local_13c;
  undefined4 local_138;
  undefined4 local_134;
  undefined4 local_130;
  undefined4 local_12c;
  undefined4 local_128;
  undefined4 local_124 [4];
  int local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108;
  ushort local_104 [130];
  
                    /* 0x982980  1789  ContentManager_GetSourceKeyFromLocalKey */
  local_13c = (void *)FUN_107744c0();
  if (local_13c != (void *)0x0) {
    local_114 = param_3;
    local_110 = param_4;
    local_10c = param_1;
    local_108 = param_2;
    local_134 = 0;
    local_130 = 0;
    local_12c = 0;
    local_128 = 0;
    FUN_10933570(local_124);
    local_140 = 0;
    uVar2 = FUN_107757e0(local_13c,&local_114,local_124,&local_134);
    if ((char)uVar2 != '\0') {
      *param_5 = local_12c;
      param_5[2] = local_134;
      param_5[3] = local_130;
      param_5[1] = local_128;
LAB_10982a24:
      FUN_10934980(local_124,local_104,&local_140,0x10);
      Ordinal_2(local_104);
      return;
    }
    this = FUN_10521400();
    local_13c = (void *)0x0;
    local_138 = 0;
    if (this != (undefined4 *)0x0) {
      cVar1 = FUN_10521270(this,&local_114,&local_13c);
      if (cVar1 != '\0') {
        param_5[1] = param_2;
        *param_5 = param_1;
        param_5[2] = param_3;
        param_5[3] = param_4;
        FUN_10933450(local_124);
        FUN_109333c0(local_124,0,local_138);
        goto LAB_10982a24;
      }
    }
  }
  Ordinal_2(&_Str2_10b624fc);
  return;
}


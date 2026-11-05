/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_GetBoneDelta. Export ordinal(s):
   2324. Entry VA: 0x10990bb0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C8A. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
SimBuilderWrap_GetBoneDelta
          (void *param_1,int *param_2,undefined4 *param_3,void *param_4,undefined4 *param_5)

{
  undefined4 *puVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  LPCWSTR local_44;
  undefined4 local_40;
  int iStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  int iStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  int iStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x990bb0  2324  SimBuilderWrap_GetBoneDelta */
  local_44 = (LPCWSTR)0x0;
  puVar1 = (undefined4 *)FUN_103dd730(param_1,param_2,&local_44);
  if (puVar1 != (undefined4 *)0x0) {
    FUN_1055dc20(param_3,puVar1);
    FUN_1055dc20(param_5,puVar1 + 8);
    local_40 = puVar1[4];
    iStack_3c = puVar1[5];
    uStack_38 = puVar1[6];
    uStack_34 = puVar1[7];
    local_30 = local_40;
    iStack_2c = iStack_3c;
    uStack_28 = uStack_38;
    uStack_24 = uStack_34;
    local_20 = local_40;
    iStack_1c = iStack_3c;
    uStack_18 = uStack_38;
    uStack_14 = uStack_34;
    FUN_1055da40(param_4,local_40,iStack_3c,uStack_38);
    local_20 = puVar1[4];
    iStack_1c = puVar1[5];
    uStack_18 = puVar1[6];
    uStack_14 = puVar1[7];
    *(undefined4 *)((int)param_4 + 0xc) = uStack_14;
    pWVar2 = local_44;
    if (local_44 == (LPCWSTR)0x0) {
      pWVar2 = L"";
    }
    puVar1 = FUN_10926db0(&local_40,pWVar2,0xffffffff,(char *)0x0);
    uVar3 = Ordinal_2(*puVar1);
    if ((2 < (int)(iStack_3c - (int)local_44 & 0xfffffffeU)) && (local_44 != (LPCWSTR)0x0)) {
      FUN_10918e90((int)local_44);
    }
    return uVar3;
  }
  return 0;
}


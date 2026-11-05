/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PresetEncoderWrap_EncodePresetData. Export
   ordinal(s): 2010. Entry VA: 0x10989ad0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060007E9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl PresetEncoderWrap_EncodePresetData(LPCWSTR param_1)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined4 *puStack_b4;
  undefined **local_a4;
  undefined4 *local_a0;
  int local_98;
  undefined1 auStack_8c [20];
  undefined1 local_78 [4];
  undefined4 auStack_74 [5];
  undefined4 local_60 [24];
  
                    /* 0x989ad0  2010  PresetEncoderWrap_EncodePresetData */
  FUN_103ba880(local_60);
  puStack_b4 = (undefined4 *)0x10989aee;
  FUN_10914090(&local_a4,0,0,0);
  local_98 = local_98 + 1;
  FUN_10913a70(&local_a4,1,1.0);
  FUN_103bae20(local_60,param_1);
  FUN_105cc2a0(local_78,(int *)&local_a4,1);
  cVar1 = FUN_103ba320(local_60,local_78);
  if (cVar1 == '\0') {
    FUN_105ca900((int)local_78);
    local_a4 = &PTR_FUN_10b8ad10;
    if (local_a0 != (undefined4 *)0x0) {
      FUN_10913a30(local_a0);
    }
    local_a4 = &PTR_LAB_10aafee4;
    FUN_103baaa0(local_60);
    return 0;
  }
  uVar2 = FUN_105cb330((int)local_78);
  puStack_b4 = (undefined4 *)0x0;
  iVar3 = Ordinal_411(0x11);
  iVar4 = Ordinal_21(iVar3);
  if (-1 < iVar4) {
    FUN_10913ee0(&puStack_b4,0,0);
    FUN_10913f70(&puStack_b4,*(void **)(iVar3 + 0xc),uVar2);
    Ordinal_22(iVar3);
    FUN_105ca900((int)auStack_8c);
    if (puStack_b4 != (undefined4 *)0x0) {
      FUN_10913a30(puStack_b4);
    }
    FUN_103baaa0(auStack_74);
    return iVar3;
  }
  Ordinal_16(iVar3);
  FUN_105ca900((int)auStack_8c);
  if (puStack_b4 != (undefined4 *)0x0) {
    FUN_10913a30(puStack_b4);
  }
  FUN_103baaa0(auStack_74);
  return 0;
}


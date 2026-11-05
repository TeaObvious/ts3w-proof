/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EAText_GetMoneyString. Export ordinal(s): 417.
   Entry VA: 0x10533360. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A10. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl EAText_GetMoneyString(longlong param_1)

{
  int iVar1;
  int *piVar2;
  undefined1 *puVar3;
  int local_b4 [3];
  undefined **local_a8;
  undefined1 local_a4 [4];
  undefined **local_a0 [2];
  undefined2 local_98;
  undefined2 local_96;
  short local_80 [64];
  
                    /* 0x533360  417  EAText_GetMoneyString */
  FUN_10880990((double)param_1,local_80,0x40,0x10acf510,(int *)&DAT_10acf520);
  piVar2 = (int *)FUN_1055b120();
  local_b4[0] = 0;
  local_b4[1] = 0;
  local_b4[2] = 0;
  local_a8 = (undefined **)0x10b1a1b4;
  FUN_1006a620(local_b4,local_80);
  local_a0[0] = &PTR_FUN_10aca5b4;
  local_96 = 0x13;
  local_98 = 0xb;
  FUN_10928b90(local_a0,0x13,9,local_b4,0x10,1);
  puVar3 = local_a4;
  (**(code **)(*piVar2 + 0x50))(local_a0);
  iVar1 = local_b4[2];
  local_a8 = &PTR_FUN_10aca5b4;
  if (((uint)local_a0[0] & 4) != 0) {
    FUN_10928a90(&local_a8,'\0');
  }
  if ((2 < (int)(local_b4[0] - (int)puVar3 & 0xfffffffeU)) && (puVar3 != (undefined1 *)0x0)) {
    FUN_10918e90((int)puVar3);
  }
  return iVar1;
}


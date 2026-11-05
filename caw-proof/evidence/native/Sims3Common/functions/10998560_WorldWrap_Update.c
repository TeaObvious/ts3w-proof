/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_Update. Export ordinal(s): 2723. Entry
   VA: 0x10998560. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004C9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldWrap_Update(void *param_1,float param_2,float param_3)

{
  int iVar1;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  undefined4 uVar2;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x998560  2723  WorldWrap_Update */
  if (param_1 != (void *)0x0) {
    iVar1 = FUN_104de3a0();
    iVar1 = FUN_109a5b50(iVar1);
    FUN_10752740(iVar1);
    local_20 = *(undefined4 *)(iVar1 + 0x60);
    uStack_1c = *(undefined4 *)(iVar1 + 100);
    uStack_18 = *(undefined4 *)(iVar1 + 0x68);
    uStack_14 = *(undefined4 *)(iVar1 + 0x6c);
    FUN_102422c0(param_1,param_2,param_3);
    uVar2 = extraout_EDX;
    if (DAT_10c70358 != (void *)0x0) {
      FUN_10252530(DAT_10c70358,param_3);
      uVar2 = extraout_EDX_00;
    }
    _DAT_10cb81ac = _DAT_10cb81ac + param_3;
    local_30 = 0.0 - *(float *)(iVar1 + 0x50);
    fStack_2c = 0.0 - *(float *)(iVar1 + 0x54);
    fStack_28 = 0.0 - *(float *)(iVar1 + 0x58);
    fStack_24 = 0.0 - *(float *)(iVar1 + 0x5c);
    FUN_105051c0(&local_20,uVar2,&local_20,&local_30,param_3);
  }
  return;
}


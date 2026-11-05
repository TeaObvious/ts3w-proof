/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x011566c0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitGetPartImpl [assembly=ScriptCore token=0x06000375; handle:
   System.UInt32, index: System.UInt32; return=Sims3.SimIFace.CAS.CASPart]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_CASUtils__CASUtils_SimOutfitGetPartImpl(undefined4 *param_1,uint param_2)

{
  int *piVar1;
  void *this;
  _GUID *p_Var2;
  int iVar3;
  
  memset(param_1,0,0x48);
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_2);
    if (this != (void *)0x0) {
      if ((int)param_2 < (*(int *)((int)this + 0x9c) - *(int *)((int)this + 0x98)) / 0x68) {
        if ((_DAT_011cf418 & 1) == 0) {
          _DAT_011cf418 = _DAT_011cf418 | 1;
          _DAT_011cf408 = 0xffffffff;
          _DAT_011cf40c = 0xffffffff;
          _DAT_011cf410 = 0xffffffff;
          _DAT_011cf414 = 0xffffffff;
        }
        p_Var2 = (_GUID *)FUN_005e5a80(this,param_2);
        if (p_Var2 != (_GUID *)0x0) {
          iVar3 = _AfxIsEqualGUID(p_Var2,(_GUID *)&DAT_011cf408);
          if ((char)iVar3 == '\0') {
            FUN_005a7e90((uint *)p_Var2,param_1);
          }
        }
      }
    }
  }
  return param_1;
}


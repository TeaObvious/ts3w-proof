/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_Save. Export ordinal(s): 1769.
   Entry VA: 0x10982780. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060005CB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl ConfigRegistry_Save(wchar_t *param_1,int *param_2)

{
  uint in_EAX;
  int *piVar1;
  int *piVar2;
  DWORD DVar3;
  uint uVar4;
  
                    /* 0x982780  1769  ConfigRegistry_Save */
  if (DAT_10cb7f30 != (void *)0x0) {
    FUN_10389ec0(DAT_10cb7f30,param_1,param_2);
    piVar1 = (int *)FUN_1055b130();
    piVar2 = (int *)FUN_10918eb0(0xc,"ConfigRegistryWrap",0);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      DVar3 = GetCurrentProcessId();
      *piVar2 = (int)&PTR_FUN_10b60b30;
      LOCK();
      piVar2[1] = 0;
      UNLOCK();
      *piVar2 = (int)&PTR_FUN_10b60b30;
      piVar2[2] = DVar3;
      (**(code **)(*piVar2 + 4))();
    }
    uVar4 = (**(code **)(*piVar1 + 0x18))(0xfc6aa1fe,piVar2,0);
    if (piVar2 != (int *)0x0) {
      uVar4 = (**(code **)(*piVar2 + 8))();
    }
    return uVar4 & 0xffffff00;
  }
  return in_EAX & 0xffffff00;
}


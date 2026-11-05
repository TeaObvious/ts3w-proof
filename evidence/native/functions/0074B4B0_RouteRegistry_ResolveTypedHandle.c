/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Route handles have top byte 0x25: (handle &
   0xff000000)==0x25000000. Under registry critical section at +8, host interface vtable+0xcc
   resolves the handle; nonnull result is adjusted by -4. Null/prefix mismatch return zero. This is
   a separate 32-bit handle family from ObjectGuid. */

int __thiscall RouteRegistry_ResolveTypedHandle(void *this,uint param_1)

{
  LPCRITICAL_SECTION this_00;
  int *piVar1;
  int iVar2;
  
  if ((param_1 & 0xff000000) != 0x25000000) {
    return 0;
  }
  this_00 = (LPCRITICAL_SECTION)((int)this + 8);
  FUN_004e1c00(this_00,(uint *)&DAT_01005194);
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    FUN_004e1cc0(this_00);
    return iVar2 + -4;
  }
  FUN_004e1cc0(this_00);
  return 0;
}


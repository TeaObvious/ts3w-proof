/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ebb0 (TS3W.exe).
   ScriptCore.Animation::Animation_EnableDisableScubaDivingMode [assembly=ScriptCore
   token=0x06000DC9; id: System.UInt64, bEnable: System.Boolean, bMermaid: System.Boolean;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC1.67 tomb/diving contract. Full uint64 object lookup then a temporary retain. Sets or
   clears Animation component flags+0x2c bit0x80000 according to stack enable byte. Original
   instruction body reads no mermaid argument; managed wrappers still pass it. Missing
   object/component silently does nothing. RET without stack cleanup proves cdecl. */

void __cdecl Animation_EnableDisableScubaDivingMode(ulonglong objectGuid,bool enable,bool mermaid)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,objectGuid);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar3 != (void *)0x0) {
      if (enable) {
        *(uint *)((int)pvVar3 + 0x2c) = *(uint *)((int)pvVar3 + 0x2c) | 0x80000;
      }
      else {
        *(uint *)((int)pvVar3 + 0x2c) = *(uint *)((int)pvVar3 + 0x2c) & 0xfff7ffff;
      }
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return;
}


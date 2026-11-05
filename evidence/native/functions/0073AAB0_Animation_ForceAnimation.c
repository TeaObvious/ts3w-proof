/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb50.
   ScriptCore.Animation::Animation_ForceAnimation [assembly=ScriptCore token=0x06000DBD; objId:
   System.UInt64, force: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl two ObjectGuid words
   and low-byte bool force. Calls component SetForce then releases object; no return status.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl two ObjectGuid words
   and low-byte bool force. Calls component SetForce then releases object; no return status.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl two ObjectGuid words
   and low-byte bool force. Calls component SetForce then releases object; no return status. */

void __cdecl Animation_ForceAnimation(uint objectIdLo,uint objectIdHi,bool force)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(objectIdHi,objectIdLo));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar3 != (void *)0x0) {
      AnimationComponent_SetForce(pvVar3,force);
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


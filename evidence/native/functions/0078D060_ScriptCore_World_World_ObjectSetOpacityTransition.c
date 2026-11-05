/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163618 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetOpacityTransition [assembly=ScriptCore token=0x060007C4; objId:
   System.UInt64, translucency1: System.Single, transitionTime: System.Single, translucency2:
   System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 original instruction review. Native managed ABI: __cdecl(uint objectIdLo,uint
   objectIdHi,float fromOpacity,float duration,float toOpacity). Missing registry/object/VisualState
   is a no-op. Calls component(to,duration,from,true). Full body through RET0078D0B3, caller cleans
   wrapper args. */

void __cdecl
ScriptCore_World__World_ObjectSetOpacityTransition
          (uint objectIdLo,uint objectIdHi,float fromOpacity,float duration,float toOpacity)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(objectIdHi,objectIdLo));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8);
      if (pvVar1 != (void *)0x0) {
        VisualState_SetOpacityTransition(pvVar1,toOpacity,duration,fromOpacity,1);
      }
    }
  }
  return;
}


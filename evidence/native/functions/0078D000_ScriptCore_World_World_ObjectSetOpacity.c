/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011635f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetOpacity [assembly=ScriptCore token=0x060007C3; objId:
   System.UInt64, translucency: System.Single, transitionTime: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 original instruction review. Native managed ABI: __cdecl(uint objectIdLo,uint
   objectIdHi,float opacity,float duration). Resolves registry, full GUID and VisualState; missing
   any is a no-op. Calls component with(target,duration,0,false). Wrapper copies float32 through
   x87; do not infer exceptional payload-bit preservation. Complete body ends at RET0078D051. */

void __cdecl
ScriptCore_World__World_ObjectSetOpacity
          (uint objectIdLo,uint objectIdHi,float opacity,float duration)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(objectIdHi,objectIdLo));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8);
      if (pvVar1 != (void *)0x0) {
        VisualState_SetOpacityTransition(pvVar1,opacity,duration,0.0,0);
      }
    }
  }
  return;
}


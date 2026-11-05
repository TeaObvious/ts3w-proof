/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f98 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetVector2FloatPropertyImpl [assembly=ScriptCore
   token=0x06000E2E; handle: System.UInt32, propID: System.UInt32, value: Sims3.SimIFace.Vector2&;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   Complete stored body: 255 bytes, 78 actual Listing instructions. A null supplied Vector2 pointer
   exits before handle-object lookup. On success the generic descriptor write uses the supplied
   pointer, followed by property-context callback virtual+0x1C without testing write return. This
   does not prove the current bridge policy of converting a null pointer to Zero and storing it. The
   inspected instructions require handle high byte 0x30, resolve the handle through global UI
   interface virtual+0xCC, and request property interface 0xEEC58382. Descriptor lookup/read/write
   calls and virtual child effects remain separate boundaries; current CLR stores are not an
   inferred native representation. */

void __cdecl
ScriptCore.UIManager::UIManager_SetVector2FloatPropertyImpl
          (uint param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  void *this;
  undefined4 auStack_50 [3];
  int iStack_44;
  undefined4 auStack_40 [3];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [40];
  int iStack_4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((((param_1 & 0xff000000) == 0x30000000) && (param_3 != 0)) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(), piVar1 != (int *)0x0)) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382), piVar1 != (int *)0x0)) {
    ppuStack_30 = &PTR_LAB_0100eea8;
    FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    (**(code **)(*piVar1 + 0x10))(auStack_40);
    this = (void *)FUN_00511ca0(&iStack_44,auStack_50,iStack_4,&ppuStack_34);
    if (this != (void *)0x0) {
      FUN_00511d40(this,(int)auStack_50,(undefined4 *)&stack0xffffffa4,&ppuStack_34);
      (**(code **)(iStack_44 + 0x1c))(auStack_40[0]);
    }
    ppuStack_34 = &PTR_LAB_0100eea8;
    FUN_004e8da0(&ppuStack_30);
  }
  return;
}


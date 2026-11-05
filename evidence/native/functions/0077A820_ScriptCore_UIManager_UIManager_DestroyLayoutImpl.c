/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162dc8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_DestroyLayoutImpl [assembly=ScriptCore token=0x06000DF4;
   layoutHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Complete original DestroyLayout bridge, one UInt32 input
   and caller-clean plain RET. Guard null global service, kind0x30 and nonnull saved pointer from
   service virtual0xD8. That slot is typed-registration release0076A7A0; it consumes a registration
   and returns the saved pointer even when a forward row remains. On a returned actual layout, form
   interface object+0xA0, decrement DWORD interface+4 (object+0xA4), and when it becomes0 restore1
   then invoke interface virtual0 with stackword1. There is no current CLR
   released-layout/attachment/lease-dictionary collector in this body. This is an actual native
   reference/finalization consumer; deeper selected destructor behavior remains a separate boundary.
   Preserve original binding name and prior annotation. RET0077A86E excludes the following INT3. */

void __cdecl ScriptCore.UIManager::UIManager_DestroyLayoutImpl(uint layoutHandle)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((layoutHandle & 0xff000000) == 0x30000000)) {
    iVar2 = (**(code **)(*piVar1 + 0xd8))(layoutHandle);
    if (iVar2 != 0) {
      iVar3 = *(int *)(iVar2 + 0xa4) + -1;
      *(int *)(iVar2 + 0xa4) = iVar3;
      if (iVar3 == 0) {
        *(undefined4 *)(iVar2 + 0xa4) = 1;
        (*(code *)**(undefined4 **)(iVar2 + 0xa0))(1);
      }
    }
  }
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e18 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetClassIDImpl [assembly=ScriptCore token=0x06000DFE; winHandle:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Genuine GetClassID bridge reads one full UInt32 at entry
   ESP+4 and returns caller-clean (plain RET failure path or tail JMP to property-interface
   virtual+14). Previous stdcall metadata/one-byte body/bounded80byte export were not the actual ABI
   or body. Complete physical body ends0077A8B7; following8INT3 are not owned. Guard handle kind30,
   service virtualCC resolver, nonnull object and QueryEEC58382. Successful property-interface class
   getter uses ECX receiver with no stack words and preserves full32bit EAX identity. This is class
   identity, distinct from custom-type identity selected by GetCustomControlID. Preserve actual
   binding name and existing registration annotation; no foreign callee prototype inferred. */

uint __cdecl ScriptCore_UIManager__UIManager_GetClassIDImpl(uint windowHandle)

{
  int *piVar1;
  uint uVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(windowHandle);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382);
      if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0077a8b3. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar2 = (**(code **)(*piVar1 + 0x14))();
        return uVar2;
      }
    }
  }
  return 0;
}


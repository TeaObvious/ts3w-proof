/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e28 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetCustomControlIDImpl [assembly=ScriptCore token=0x06000E00;
   winHandle: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Genuine GetCustomControlID complete body ends0077A9A6 plain
   RET, excludes following INT3; previous1byte body/160byte window and stdcall metadata were
   insufficient. One UInt32 caller-clean word. Guard kind30/object/IWindow. Query proxy056BB768,
   propertyEEC58382, custom03F29FC8; proxy+property returns property virtual14 identity, otherwise
   custom virtual14 identity or0. Actual proxy7E2D20 returns complete+250 and custom5360C0 returns
   interface+4. Tail-JMPs transfer the original caller-clean boundary; preserve original binding
   name/annotation. */

uint __cdecl ScriptCore_UIManager__UIManager_GetCustomControlIDImpl(uint windowHandle)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(windowHandle);
    if (piVar1 != (int *)0x0) {
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (iVar2 != 0) {
        iVar2 = (**(code **)(*piVar1 + 0xc))(0x56bb768);
        piVar3 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382);
        piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0x3f29fc8);
        if ((iVar2 != 0) && (piVar3 != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x0077a991. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar4 = (**(code **)(*piVar3 + 0x14))();
          return uVar4;
        }
        if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0077a9a0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          uVar4 = (**(code **)(*piVar1 + 0x14))();
          return uVar4;
        }
      }
    }
  }
  return 0;
}


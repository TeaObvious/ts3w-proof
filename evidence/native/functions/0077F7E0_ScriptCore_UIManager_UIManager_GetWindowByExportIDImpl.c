/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e38 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetWindowByExportIDImpl [assembly=ScriptCore token=0x06000E02;
   layout: System.UInt32, exportID: System.Int32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Complete original GetWindowByExportID bridge: two actual
   incoming stack DWORDs layout UInt32 and exportID Int32, caller-clean plain RET. At0077F7EC first
   input is ESP+0x14, second at0077F811 is ESP+0x18 after two saved registers and8 local bytes. Old
   one-argument metadata omitted the actual export key. Require handle kind0x30; service+0xCC
   resolves actual layout, then actual layout+0x44 export map is queried through00A5B9B0. Missing
   iterator/null stored object returns0. Found actual object virtual0 acquires its independent
   reference, virtual0x0C queries IWindow0xEEEE8218, then service+0xC8 registers that
   pointer/type0x30. PUSH0x30 before QueryInterface is the later registration argument, not a second
   QueryInterface input; actual C may alias stack/register values around unresolved indirect calls.
   This independent returned object reference is released when the original managed wrapper consumes
   it, regardless of whether a new wrapper is created. Preserve all existing genuine binding
   annotations/names. Final original RET ends0077F877; following INT3 padding is outside the
   function. */

uint __cdecl ScriptCore.UIManager::UIManager_GetWindowByExportIDImpl(uint layoutHandle,int exportId)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  int unaff_ESI;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((layoutHandle & 0xff000000) == 0x30000000) {
    iVar3 = (**(code **)(*piVar2 + 0xcc))(layoutHandle);
    if (iVar3 != 0) {
      UInt32PairMap_Find((void *)(iVar3 + 0x44),&stack0xfffffff4,(uint *)&stack0x00000000);
      if ((unaff_ESI != *(int *)(*(int *)(iVar3 + 0x48) + *(int *)(iVar3 + 0x4c) * 4)) &&
         (piVar1 = *(int **)(unaff_ESI + 4), piVar1 != (int *)0x0)) {
        (**(code **)*piVar1)();
        iVar3 = *piVar2;
        uVar4 = (**(code **)(*piVar1 + 0xc))(0xeeee8218,0x30);
        uVar5 = (**(code **)(iVar3 + 200))(uVar4);
        return uVar5;
      }
    }
  }
  return 0;
}


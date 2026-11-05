/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x0108d660 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.TaskControl::TaskControl_GetFieldValue [assembly=ScriptCore token=0x06000127; taskId:
   System.UInt64, fieldRef: ScriptCore.TaskFieldReference&; return=System.Object]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst behavioral addition, static PC1.67: Read a task field as a managed Object representation.
   The UInt64 task ID and input frame/field pair feed LocateTaskFieldSlotAndType; only its AL is
   admission status. Locator failure returns full EAX=0, indistinguishable from a legitimate null
   reference field. Resolve the selected type to its class; descriptor kind0x15 replaces the
   selected descriptor with class+0xA0 before the byref-bit test. Selected descriptor+4
   bit0x40000000 follows one stored pointer. Class+0x14 bit8 selects EA3440 boxing from the
   resulting value address; otherwise return one object-pointer DWORD from that address. The input
   pair-pointer argument stack slot is reused as the locator address output, so its decompiler
   HighVariable cannot keep an input-only semantic name throughout.
   Captured Ghidra ownership is only [D83870,D83871),1 byte, with no listing instructions.
   Behavioral evidence is the independently checked original-PE normal CFG [D83870,D838F7),135
   bytes/57 reachable instructions, with normal-return child-call assumptions; it is NOT a repaired
   owned body or a complete owned listing. The old144-byte window also includes9 trailing CC bytes.
   Actual bridge/calling convention and decompiler types remain qualified; no signature change is
   implied. Valid host/task/frame/type/storage lifetime is required. Metadata/cache children, boxing
   allocation/assertion/errors, GC and synchronization remain external contracts. No separate TryGet
   flag, rollback guarantee or runtime observation. */

undefined4 *
ScriptCore_TaskControl__TaskControl_GetFieldValue(uint param_1,undefined4 param_2,uint *param_3)

{
  undefined4 uVar1;
  uint *puVar2;
  LPCRITICAL_SECTION p_Var3;
  undefined4 *puVar4;
  uint *puVar5;
  int *piStack_4;
  
  uVar1 = LocateTaskFieldSlotAndType(param_1,param_2,*param_3,param_3[1],&piStack_4,(int *)&param_3)
  ;
  if ((char)uVar1 == '\0') {
    return (undefined4 *)0x0;
  }
  puVar2 = (uint *)RuntimeTypeDescriptor_ResolveClass(piStack_4);
  if (*(char *)((int)piStack_4 + 6) == '\x15') {
    piStack_4 = (int *)RuntimeClass_GetEmbeddedTypeDescriptor((int)puVar2);
  }
  if ((piStack_4[1] & 0x40000000U) == 0) {
    puVar5 = param_3;
  }
  else {
    puVar5 = (uint *)*param_3;
  }
  if ((puVar2[5] & 8) == 0) {
    return (undefined4 *)*puVar5;
  }
  p_Var3 = (LPCRITICAL_SECTION)FUN_00e75550();
  puVar4 = RuntimeValue_Box(p_Var3,puVar2,puVar5);
  return puVar4;
}


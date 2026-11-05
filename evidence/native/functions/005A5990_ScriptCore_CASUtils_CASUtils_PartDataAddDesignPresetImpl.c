/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156250 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_PartDataAddDesignPresetImpl [assembly=ScriptCore token=0x060002E5;
   partKey: Sims3.SimIFace.ResourceKey, preset: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CASUtils::CASUtils_PartDataAddDesignPresetImpl(void)

{
  int *piVar1;
  void *this;
  short *psVar2;
  undefined4 in_stack_00000014;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)FUN_00b302a0();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(in_stack_00000014);
  if (psVar2 == (short *)0x0) {
    return;
  }
  FUN_00b328e0(this,(uint *)&stack0xffffffec,psVar2,0,0);
  return;
}


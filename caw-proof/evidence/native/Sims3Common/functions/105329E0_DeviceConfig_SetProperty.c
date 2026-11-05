/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_SetProperty. Export ordinal(s): 354.
   Entry VA: 0x105329e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EF4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl DeviceConfig_SetProperty(int param_1)

{
  int *piVar1;
  void *this;
  short *psVar2;
  short *psVar3;
  
                    /* 0x5329e0  354  DeviceConfig_SetProperty */
  piVar1 = (int *)FUN_1055b120();
  this = (void *)FUN_10389500();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((psVar2 != (short *)0x0) && (this != (void *)0x0)) {
    memset(&stack0xffffffbe,0,0x3e);
    psVar3 = (short *)FUN_10931490(param_1,(short *)&stack0xffffffbc,10);
    FUN_1038ab80(this,L"Options",psVar2,psVar3);
  }
  return;
}


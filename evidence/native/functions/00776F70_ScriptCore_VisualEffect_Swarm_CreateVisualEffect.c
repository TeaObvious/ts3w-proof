/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011629a0 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_CreateVisualEffect [assembly=ScriptCore token=0x060004B8;
   effectName: System.String; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_VisualEffect__Swarm_CreateVisualEffect(undefined4 param_1)

{
  undefined8 uVar1;
  void *this;
  int *piVar2;
  ushort *puVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  uint uVar6;
  int aiStack_140 [3];
  int aiStack_134 [12];
  byte abStack_104 [260];
  
  this = (void *)FUN_00937570();
  if (this != (void *)0x0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))(param_1);
    if (puVar3 != (ushort *)0x0) {
      FUN_004fdfa0(abStack_104,puVar3,0x100,-1);
      uVar4 = FUN_0092f9c0();
      FUN_00939a40(aiStack_134,uVar4);
      FUN_00939f90(aiStack_134,0x8cdb555b,(char *)abStack_104);
      FUN_00939eb0(aiStack_134,aiStack_140);
      uVar6 = DAT_011e9e90 | DAT_011ea158;
      FUN_004fa780(abStack_104,0x811c9dc5,0);
      puVar5 = FUN_00938c00(this,aiStack_140,uVar6,&stack0xfffffeb0,0,0);
      if (puVar5 == (undefined4 *)0x0) {
        FUN_00582cf0(aiStack_134);
        return 0;
      }
      uVar1 = *(undefined8 *)(puVar5 + 2);
      FUN_00582cf0(aiStack_134);
      return uVar1;
    }
  }
  return 0;
}


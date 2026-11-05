/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011629a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.VisualEffect::Swarm_CreateVisualEffect [assembly=ScriptCore token=0x060004B8;
   effectName: System.String; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_VisualEffect__Swarm_CreateVisualEffect(undefined4 param_1)

{
  undefined8 uVar1;
  void *pvVar2;
  int *piVar3;
  ushort *inputCodeUnits;
  undefined4 uVar4;
  uint baseMask;
  uint auStack_148 [2];
  uint auStack_140 [3];
  int aiStack_134 [12];
  byte abStack_104 [260];
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    inputCodeUnits = (ushort *)(**(code **)(*piVar3 + 0x58))(param_1);
    if (inputCodeUnits != (ushort *)0x0) {
      CodeUnits16_EncodeBoundedBytes(abStack_104,inputCodeUnits,0x100,0xffffffff);
      uVar4 = FUN_0092f9c0();
      FUN_00939a40(aiStack_134,uVar4);
      ParameterBuilder_AppendByteString(aiStack_134,0x8cdb555b,(char *)abStack_104);
      ParameterBuilder_FinalizeBorrowedTable(aiStack_134,auStack_140);
      baseMask = DAT_011e9e90 | DAT_011ea158;
      FUN_004fa780(abStack_104,0x811c9dc5,0);
      pvVar2 = ObjectRegistry_CreateInitializedObject
                         (pvVar2,auStack_140,baseMask,auStack_148 + -2,0);
      if (pvVar2 == (void *)0x0) {
        FUN_00582cf0(aiStack_134);
        return 0;
      }
      uVar1 = *(undefined8 *)((int)pvVar2 + 8);
      FUN_00582cf0(aiStack_134);
      return uVar1;
    }
  }
  return 0;
}


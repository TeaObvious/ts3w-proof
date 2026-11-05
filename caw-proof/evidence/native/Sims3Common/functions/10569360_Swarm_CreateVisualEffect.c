/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Swarm_CreateVisualEffect. Export ordinal(s):
   1005. Entry VA: 0x10569360. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000624. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 __cdecl Swarm_CreateVisualEffect(undefined4 param_1)

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
  
  this = (void *)FUN_1072a1a0();
  if (this != (void *)0x0) {
    piVar2 = (int *)FUN_1055b120();
    puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))(param_1);
    if (puVar3 != (ushort *)0x0) {
      FUN_10930890(abStack_104,puVar3,0x100,-1);
      uVar4 = FUN_10722830();
      FUN_1072c690(aiStack_134,uVar4);
      FUN_1072cbe0(aiStack_134,0x8cdb555b,(char *)abStack_104);
      FUN_1072cb00(aiStack_134,aiStack_140);
      uVar6 = DAT_10c8d6d0 | DAT_10c8d998;
      FUN_1092d070(abStack_104,0x811c9dc5,0);
      puVar5 = FUN_1072b830(this,aiStack_140,uVar6,&stack0xfffffeb0,0,0);
      if (puVar5 == (undefined4 *)0x0) {
        FUN_100d0720(aiStack_134);
        return 0;
      }
      uVar1 = *(undefined8 *)(puVar5 + 2);
      FUN_100d0720(aiStack_134);
      return uVar1;
    }
  }
  return 0;
}


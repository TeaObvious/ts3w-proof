/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x1065501c) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_SetEventModifiersImpl. Export ordinal(s):
   30. Entry VA: 0x10654f40. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600008E. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Audio_SetEventModifiersImpl(int param_1,int param_2,int param_3)

{
  int *this;
  char cVar1;
  void *pvVar2;
  int *piVar3;
  int *piVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint uVar7;
  int *piVar8;
  int *piVar9;
  undefined8 uStack_14;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
                    /* 0x654f40  30  Audio_SetEventModifiersImpl */
  if ((DAT_10c7d4a0 != 0) && (this = (int *)(DAT_10c7d4a0 + -0x27bd0), this != (int *)0x0)) {
    if (param_1 != 0) {
      pvVar2 = (void *)FUN_10918eb0(0xc,"Audio/EventModifierSim",0);
      if (pvVar2 == (void *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = (int *)FUN_1065d150(pvVar2,param_1);
      }
      FUN_10657d70(this,0x20681cd4,piVar3);
    }
    if (param_3 != 0) {
      pvVar2 = (void *)FUN_10918eb0(0xc,"Audio/EventModifierQuality",0);
      if (pvVar2 == (void *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = (int *)FUN_1065cf80(pvVar2,param_3);
      }
      FUN_10657d70(this,0x51c4acef,piVar3);
    }
    if (param_2 != 0) {
      uStack_14 = (**(code **)(*this + 0x118))();
      uStack_c = 0x2b9f662;
      uStack_8 = 0x1407ec;
      piVar4 = (int *)FUN_108e50d0();
      piVar3 = (int *)0x0;
      piVar8 = (int *)0x0;
      cVar1 = (**(code **)(*piVar4 + 0xc))(&uStack_14,&stack0xffffffe0,0,0,0,0);
      piVar4 = piVar3;
      if (cVar1 != '\0') {
        if (piVar3 != (int *)0x0) {
          (**(code **)*piVar3)();
        }
        cVar1 = (**(code **)(piVar3[10] + 0x20))(0xc499357c,&stack0xffffffd0);
        if (((cVar1 != '\0') && (*(short *)((int)piVar4 + 10) == 0x13)) &&
           ((*(byte *)(piVar4 + 2) & 0x10) != 0)) {
          piVar9 = piVar4;
          uVar5 = FUN_10242b60((int)piVar4);
          puVar6 = (undefined4 *)FUN_100c29e0((int)piVar4);
          piVar3 = piVar8;
          piVar4 = piVar9;
          for (; uVar5 != 0; uVar5 = uVar5 - 1) {
            pvVar2 = (void *)FUN_10918eb0(0x1c,"Audio/EventModifierSkill",0);
            if (pvVar2 == (void *)0x0) {
              piVar8 = (int *)0x0;
            }
            else {
              piVar8 = FUN_1065d5e0(pvVar2,param_2,(short *)*puVar6);
            }
            uVar7 = FUN_1092d120((ushort *)*puVar6,0x811c9dc5,1);
            FUN_10657d70(this,uVar7,piVar8);
            puVar6 = puVar6 + 4;
          }
        }
        (**(code **)(*piVar3 + 4))();
      }
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 4))();
      }
    }
  }
  return;
}


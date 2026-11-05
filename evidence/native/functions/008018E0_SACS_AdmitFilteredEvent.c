/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX driver,one stack pointer RET4. Retains
   incoming event; only bound queue+12C enters filter scan. Three row zeros are wildcards; scans all
   rows, consumes every matched one-shot lowbyte, leaves unmatched/persistent rows, delivers once
   via SACS_DeliverAdmittedEvent if any. Releases incoming event after. C# Matches is nonconsuming;
   row-only Admit lacks native queue gate because its owner supplies queue lifecycle separately.
   Existing reviewed entry comments preserved. */

void __thiscall SACS_AdmitFilteredEvent(void *this,int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  
  if (param_1 != (int *)0x0) {
    (**(code **)*param_1)();
  }
  if (*(int *)((int)this + 300) != 0) {
    iVar1 = param_1[3];
    iVar2 = param_1[2];
    iVar3 = param_1[4];
    piVar7 = *(int **)((int)this + 0x130);
    piVar5 = *(int **)((int)this + 0x134);
    bVar4 = false;
    if (piVar7 != piVar5) {
      piVar6 = piVar7 + 4;
      do {
        if ((((*piVar7 == 0) || (*piVar7 == iVar2)) && ((piVar7[1] == 0 || (piVar7[1] == iVar1))))
           && (((piVar7[2] == 0 || (piVar7[2] == iVar3)) && (bVar4 = true, (char)piVar7[3] != '\0'))
              )) {
          if (piVar6 < *(int **)((int)this + 0x134)) {
            FUN_007fff00(piVar6,*(int **)((int)this + 0x134),piVar7);
          }
          *(int *)((int)this + 0x134) = *(int *)((int)this + 0x134) + -0x10;
          piVar5 = *(int **)((int)this + 0x134);
        }
        else {
          piVar7 = piVar7 + 4;
          piVar6 = piVar6 + 4;
        }
      } while (piVar7 != piVar5);
      if (bVar4) {
        SACS_DeliverAdmittedEvent(*(void **)((int)this + 300),param_1);
      }
    }
  }
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
  }
  return;
}


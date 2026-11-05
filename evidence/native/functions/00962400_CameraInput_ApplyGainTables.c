/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Copies56 float words (4banks*7fields rate plus4banks*7fields impulse) into
   input+400. Copies each bank's seven RATE-table gains into bankbase+0..18; perbank signed
   modifiers+1C..34 remain independent. Actual drag angular impulse uses these bankgains and signed
   modifiers, not a direct use of the second stored table. */

void __thiscall CameraInput_ApplyGainTables(void *this,undefined4 *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;

  puVar1 = (undefined4 *)((int)this + 0x400);
  for (iVar2 = 0x38; iVar2 != 0; iVar2 = iVar2 + -1) {
    *puVar1 = *param_1;
    param_1 = param_1 + 1;
    puVar1 = puVar1 + 1;
  }
  iVar2 = 4;
  puVar1 = (undefined4 *)((int)this + 8);
  puVar3 = (undefined4 *)((int)this + 0x408);
  do {
    puVar1[-2] = puVar3[-2];
    iVar2 = iVar2 + -1;
    puVar1[-1] = puVar3[-1];
    *puVar1 = *puVar3;
    puVar1[1] = puVar3[1];
    puVar1[2] = puVar3[2];
    puVar1[3] = puVar3[3];
    puVar1[4] = puVar3[4];
    puVar1 = puVar1 + 0x40;
    puVar3 = puVar3 + 7;
  } while (iVar2 != 0);
  return;
}


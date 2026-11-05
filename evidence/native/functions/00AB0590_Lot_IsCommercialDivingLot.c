/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. ECX lot pointer, no stack parameters, plainRET.
   Compare DWORD lot+408==1 and lot+40C==50hex; true only for both. Instructions MOV EAX1 / XOR EAX
   plus XOR ECX,TEST AL,SETNZ CL,MOV EAX,ECX prove fullEAX0/1, although existing inferred return
   metadata saysAL. Used by63E0A0 as routing level1/0; no prototype/type repair is made.
   Complete34bytes/11instructions. */

undefined1 __fastcall Lot_IsCommercialDivingLot(int param_1)

{
  undefined1 uVar1;
  
  uVar1 = 1;
  if ((*(int *)(param_1 + 0x408) != 1) || (*(int *)(param_1 + 0x40c) != 0x50)) {
    uVar1 = 0;
  }
  return uVar1;
}


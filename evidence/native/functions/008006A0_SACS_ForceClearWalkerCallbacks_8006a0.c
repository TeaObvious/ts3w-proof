/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 forced callback cleanup on walker list +0x58. Invokes the callback with the source
   Walker*, then removes/releases the list node even when callback returns false; may issue a
   retained notification through callback vtable +0x0C. The registered bridge watch has zero
   notification target fields. Raw proof: the reviewed original reference reference PC1.67 identity
   recorded centrally
   
   Analyst note (PC1.67 SACS migration contract): ECX walker with callback list+58; forced cleanup
   invokes callback with actual source Walker and removes/releases entries including callbacks whose
   result is false, with optional retained notification target. Original body includes disjoint
   owned instruction ranges with explicitly nonowned alignment in the envelope. This is not proof
   that current project task cancellation or completion has identical event/VM semantics. */

void __thiscall SACS_ForceClearWalkerCallbacks_8006a0(void *this,undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  code *pcVar4;
  int *piVar5;
  int *piVar6;
  longlong lVar7;
  undefined8 uVar8;
  undefined **appuStack_20 [2];
  ushort uStack_18;
  undefined2 uStack_16;
  undefined4 uStack_10;
  
  piVar6 = *(int **)((int)this + 0x58);
  if (piVar6 != (int *)((int)this + 0x58)) {
    do {
      piVar1 = (int *)piVar6[2];
      if (piVar1 != (int *)0x0) {
        pcVar4 = (code *)(**(code **)(*piVar1 + 0x10))(piVar1,this);
        cVar3 = (*pcVar4)();
        if (cVar3 == '\0') {
          uStack_10 = param_1;
          appuStack_20[0] = &PTR_FUN_00fba6f4;
          uStack_16 = 0x10;
          uStack_18 = 0;
          lVar7 = (**(code **)(*piVar1 + 0xc))();
          if (lVar7 != 0) {
            piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
            iVar2 = *piVar5;
            uVar8 = (**(code **)(*piVar1 + 0xc))(appuStack_20);
            (**(code **)(iVar2 + 0x124))(uVar8);
          }
          (**(code **)(*piVar1 + 8))();
          piVar6 = (int *)*piVar6;
          piVar1 = (int *)piVar6[1];
          *(int *)piVar1[1] = *piVar1;
          *(int *)(*piVar1 + 4) = piVar1[1];
          Memory_FreeIfNonNull(piVar1);
          appuStack_20[0] = &PTR_FUN_00fba6f4;
          if ((uStack_18 & 4) != 0) {
            FUN_004f5760(appuStack_20,'\0');
          }
        }
      }
    } while (piVar6 != (int *)((int)this + 0x58));
  }
  return;
}


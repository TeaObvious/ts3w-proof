/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 load-pump leaf. ECX opaque forwardedcookie, no stackargs, RET via tailjump589280.
   Resolve9E0120; ifnonnull and9DAB50 ALtrue call9DC700(receiver, callbackECA830, cookie) withtwo
   callee-poppedstackwords. Read6E8170 global;nonnullcall6EBA00(ECXglobal).
   IfDWORD11D2530nonnullcallECA590(ECXcookie,stack1). Ifpriorglobalnonnullcall6E8640(ECXsameglobal).
   Tailjump589280afterrestoringcallee-savedregisters. These selected calls/order are established;
   complete UI/render/task effects and readiness in childbodies remain unexpanded. No caller-owned
   aggregate or Engine policy inferred from global names. */

void __thiscall LoadPump_RunSelectedFrameServices(void *this)

{
  void *pvVar1;
  undefined4 uVar2;
  
  pvVar1 = (void *)FUN_009e0120();
  if (pvVar1 != (void *)0x0) {
    uVar2 = FUN_009dab50((int)pvVar1);
    if ((char)uVar2 != '\0') {
      FUN_009dc700(pvVar1,FUN_00eca830,this);
    }
  }
  pvVar1 = LoadPump_ReadFrameServiceGlobal();
  if (pvVar1 != (void *)0x0) {
    FUN_006eba00((int)pvVar1);
  }
  if (DAT_011d2530 != 0) {
    FUN_00eca590(1);
  }
  if (pvVar1 != (void *)0x0) {
    FUN_006e8640((int)pvVar1);
  }
  FUN_00589280();
  return;
}


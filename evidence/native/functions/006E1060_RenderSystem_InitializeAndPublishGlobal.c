/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX containing system. Initializes embedded render owner at+10
   through6E01C0. On success publishes precisely that embedded pointer to11D2530; AL true, else
   initializer false. This identifies the owner consumed by flora6E3710 calls. */

bool __fastcall RenderSystem_InitializeAndPublishGlobal(int param_1)

{
  bool bVar1;
  
  bVar1 = RenderSystem_InitializeConfigurationAndBindings((int *)(param_1 + 0x10));
  if (bVar1) {
    DAT_011d2530 = (int *)(param_1 + 0x10);
    return true;
  }
  return false;
}


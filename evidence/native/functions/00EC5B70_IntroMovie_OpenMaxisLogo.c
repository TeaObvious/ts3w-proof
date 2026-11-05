/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 intro gain and resource-open instruction contract. thiscall ECX phase object, NO
   explicit stack arguments, RET; normalizes called result AL to boolean. Optional service44C4F0
   virtual+24 receives phase+10,06168BE5,0,0; complete service meaning unexpanded. Calls configured
   gain with MaxisLogoGain, FSTP stores ST0 to binary32 in reused stack argument slot, then calls
   named-open with phase+10 receiver and FOUR stack words: exact resource name MAXISLogo,
   width1024,height640,gain. Original resource spelling and gain-key spelling differ for MAXISLogo.
   Entire77-byte body; full startup ordering/input skip/decoder/lifetime remain separate static
   consumers. */

bool __thiscall IntroMovie_OpenMaxisLogo(void *this)

{
  bool bVar1;
  int *arg0;
  float10 fVar2;
  
  arg0 = (int *)MessageDispatch_GetCurrent();
  if (arg0 != (int *)0x0) {
    (**(code **)(*arg0 + 0x24))(arg0,(void *)((int)this + 0x10),0x6168be5,0,0);
  }
  fVar2 = IntroMovie_ComputeConfiguredGain((ushort *)L"MaxisLogoGain");
                    /* Reuse gainKey stack slot for binary32 gain, followed by
                       height640,width1024,exact name MAXISLogo. */
  bVar1 = IntroMovie_OpenNamedResource
                    ((void *)((int)this + 0x10),(ushort *)L"MAXISLogo",0x400,0x280,(float)fVar2);
  return bVar1;
}


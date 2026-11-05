/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, pristine PC1.67 instructions. ECX manager storage, EAX returns the same address,
   plain RET; stored undefined return is inferred and is not an ABI promise. Clears container/state
   fields, installs embedded table identities +0C/+28/+38, sets signed frame fields +3C=60, +40=16
   ScriptReturnFrames, +44=35 LoopDelayFrames, enable byte+48=1. Names of frame fields are
   established by 007FCCD0 UTF-16 setting registrations; 00805250 consumes signed manager+40/+44
   using CVTSI2SS/MULSS;00569250 uses signed FILD/FMUL followed by binary32 FSTP. Both use
   scalar00FC2B9C (0x3D088889), not simulation-step counts. These are initial defaults, not proof
   runtime tuning cannot change them. No object allocation, global publication or complete manager
   lifecycle belongs to this initializer. */

void __fastcall SacsManager_InitializeState(undefined4 *param_1)

{
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = "SACS/ComponentList";
  param_1[4] = *param_1;
  param_1[5] = 0;
  *(undefined1 *)(param_1 + 6) = 0;
  *(undefined1 *)((int)param_1 + 0x19) = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = "SACS/ActiveDriverList";
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = "SACS/ActiveDriverListCopy";
  param_1[0xf] = 0x3c;
  param_1[0x10] = 0x10;
  param_1[0x11] = 0x23;
  *(undefined1 *)(param_1 + 0x12) = 1;
  return;
}


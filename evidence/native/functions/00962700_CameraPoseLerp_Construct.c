/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: initializes the shared position/target lerp object with vtable 01045B4C,
   elapsed +70=0, inactive duration +74=-1, and zeroed pose vectors. The main and fly controller
   constructors place one at controller +570. Raw instruction proof:
   00962700_CameraPoseLerp_Construct.asm.
   original PC 1.67 TS3W.exe. */

void __fastcall CameraPoseLerp_Construct(undefined4 *param_1)

{
  param_1[0x1c] = 0;
  param_1[0x1d] = DAT_00fab218;
  *param_1 = &PTR_CameraPoseLerp_TickCubicEaseOut_01045b4c;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  param_1[0x11] = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  return;
}


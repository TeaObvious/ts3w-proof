/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name from the factory and TREE consumer. ECX is the owner; physical EAX retains it,
   although the stored decompiler return is void. Constructor writes duplicated float4 bounds -1/+1,
   size 1, variation/offset 0, radius 1, collision 0 and empty Vector16 begin/end/capacity. Original
   default collision is present: only value 3 disables the consumer. */

void __fastcall TreeTemplate_ConstructDefault(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_00fecfc0;
  param_1[2] = &PTR_FUN_00fb3c14;
  LOCK();
  param_1[3] = 0;
  UNLOCK();
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[2] = &PTR_FUN_00fc4158;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[9] = 0;
  param_1[8] = 0;
  *param_1 = &PTR_LAB_0101728c;
  param_1[2] = &PTR_LAB_01017274;
  param_1[0xc] = -1.0;
  param_1[0xd] = -1.0;
  param_1[0xe] = -1.0;
  param_1[0xf] = -1.0;
  param_1[0x10] = 1.0;
  param_1[0x11] = 1.0;
  param_1[0x12] = 1.0;
  param_1[0x13] = 1.0;
  param_1[0x14] = 1.0;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 1.0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0;
  param_1[0x1c] = "SpeedTree/SpeedTreeTemplateData";
  return;
}


/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Returns original
   input allocation in EAX. Initializes reference count, vector descriptors +0x28,+0x38,+0x48,
   version +0x58=9 and bytes +0x5c..+0x5e=0. Original diagnostic allocation name is
   Objects/FootprintResource. */

void * __fastcall FootprintResource_Construct(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00fb3c14;
  LOCK();
  param_1[1] = 0;
  UNLOCK();
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[7] = 0;
  param_1[6] = 0;
  *param_1 = &PTR_thunk_FUN_00731c10_01043bec;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = "Objects/FootprintResource";
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  param_1[0x11] = "Objects/FootprintResource";
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = "Objects/FootprintResource";
  param_1[0x16] = 9;
  *(undefined1 *)(param_1 + 0x17) = 0;
  *(undefined1 *)((int)param_1 + 0x5d) = 0;
  *(undefined1 *)((int)param_1 + 0x5e) = 0;
  return param_1;
}


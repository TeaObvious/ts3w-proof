/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d810. Initializes attached-object EASTL fixed_set/pool at supplied
   receiver. This is not a transform matrix initializer. Generic allocator/tree helpers remain their
   own providers. */

void * __fastcall StaticRotate_InitializeAttachedSet(void *param_1)

{
  int local_14;
  char *local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_14 = 0;
  local_10 = "EASTL fixed_pool";
  FUN_004e0cb0(&local_14,0,0x140,0x14,4);
  local_c = 0;
  local_8 = 0x140;
  local_4 = 0x14;
  FUN_0053d690(param_1,&local_14);
  *(char **)((int)param_1 + 0x1c) = "EASTL fixed_set";
  FUN_004e0cb0((void *)((int)param_1 + 0x18),(int)param_1 + 0x2c,0x140,0x14,4);
  *(int *)((int)param_1 + 0x20) = (int)param_1 + 0x2c;
  *(int *)((int)param_1 + 0x24) = (int)param_1 + 0x16c;
  *(undefined4 *)((int)param_1 + 0x28) = 0x14;
  return param_1;
}


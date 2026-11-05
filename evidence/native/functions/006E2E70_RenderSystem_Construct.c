/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX owner, no stack args, returns this in EAX. Primary callback
   tableFF8DC8, separate interface table at+0C. Initializes F1 false, vector pointers238/23C/240
   zero and revision248 zero. This constructor/default state is distinct from live FSAALevel
   refresh. Vector allocator label is Renderer/RenderSystem/GlobalShaderSettings. */

undefined4 * __fastcall RenderSystem_Construct(undefined4 *param_1)

{
  undefined4 *puVar1;
  
  *param_1 = &PTR_LAB_00ffd294;
  param_1[3] = &PTR_LAB_00ff0f30;
  LOCK();
  param_1[4] = 0;
  UNLOCK();
  *param_1 = &PTR_RenderSystem_OnBeforeDeviceReset_00ff8dc8;
  param_1[3] = &PTR_LAB_00ff8db8;
  *(undefined1 *)((int)param_1 + 0xf1) = 0;
  param_1[0x3d] = 0;
  param_1[0x3e] = 0;
  param_1[0x3f] = 0;
  param_1[0x40] = 0;
  param_1[0x41] = 0;
  param_1[0x42] = 0;
  param_1[0x43] = 0x80000000;
  param_1[0x44] = 0;
  param_1[0x45] = 0;
  param_1[0x46] = 0;
  param_1[0x47] = 0;
  param_1[0x48] = 0;
  param_1[0x49] = 0;
  param_1[0x4a] = 0;
  param_1[0x4b] = 0;
  param_1[0x4c] = 0;
  param_1[0x4d] = 0;
  param_1[0x4e] = 0;
  param_1[0x4f] = 0;
  param_1[0x50] = 0;
  FUN_00722fa0(param_1 + 0x52);
  FUN_00722fa0(param_1 + 0x58);
  *(undefined1 *)((int)param_1 + 0x179) = 0;
  *(undefined1 *)((int)param_1 + 0x17d) = 0;
  *(undefined1 *)((int)param_1 + 0x17e) = 0;
  *(undefined1 *)((int)param_1 + 0x17f) = 0;
  *(undefined1 *)(param_1 + 0x60) = 0;
  param_1[0x61] = 0;
  param_1[0x62] = 0;
  FUN_004e1cf0(param_1 + 100,(char *)0x0,'\x01');
  param_1[0x70] = 0;
  param_1[0x71] = 0;
  param_1[0x72] = 0;
  param_1[0x73] = 0;
  param_1[0x74] = 0;
  param_1[0x75] = 0;
  param_1[0x76] = 0;
  param_1[0x77] = 0;
  param_1[0x78] = 0;
  param_1[0x79] = 0;
  param_1[0x7a] = "Renderer/RenderSystem/RenderingJobs";
  FUN_00610c90(param_1 + 0x70,0);
  FUN_004e1cf0(param_1 + 0x7c,(char *)0x0,'\x01');
  puVar1 = param_1 + 0x88;
  param_1[0x89] = puVar1;
  *puVar1 = puVar1;
  param_1[0x8a] = 0;
  param_1[0x8b] = 0;
  param_1[0x8c] = 0;
  param_1[0x8d] = "Renderer/RenderSystem/CondemnedResources";
  param_1[0x8e] = 0;
  param_1[0x8f] = 0;
  param_1[0x90] = 0;
  param_1[0x91] = "Renderer/RenderSystem/GlobalShaderSettings";
  param_1[0x92] = 0;
  FUN_00693650(param_1 + 0x93);
  return param_1;
}


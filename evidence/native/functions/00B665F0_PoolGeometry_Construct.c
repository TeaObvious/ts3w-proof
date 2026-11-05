/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX receiver, no stack arguments, EAX receiver result. Initialize observed
   geometry fields/containers and0xBAD level sentinel; diagnostic strings identify
   PoolPresenceArray/GeomPartInfos/ScenePartInfos. Observed manager allocation0x280 is a boundary,
   not a recovered complete C++ type. Child destruction/refcount and resource representations remain
   open. Descriptive role, not recovered symbol. */

undefined4 * __fastcall PoolGeometry_Construct(undefined4 *param_1)

{
  FUN_006fd4e0(param_1,0,0);
  param_1[0x84] = 0;
  param_1[0x85] = 0;
  *param_1 = &PTR_FUN_0106f528;
  param_1[0x87] = 0;
  param_1[0x88] = 0;
  param_1[0x86] = &PTR_FUN_0105fb94;
  param_1[0x89] = 0;
  param_1[0x8a] = 0;
  param_1[0x8b] = 0;
  param_1[0x8c] = "Misc/PoolGeometry/PoolPresenceArray";
  param_1[0x8d] = 0;
  param_1[0x8e] = 0;
  param_1[0x8f] = 0;
  param_1[0x91] = 0;
  param_1[0x92] = 0;
  param_1[0x93] = 0;
  param_1[0x94] = "Misc/PoolGeometry/GeomPartInfos";
  param_1[0x95] = 0;
  param_1[0x96] = 0;
  param_1[0x97] = 0;
  param_1[0x98] = "Misc/PoolGeometry/ScenePartInfos";
  param_1[0x11] = param_1[0x11] | 0x40080;
  *(undefined1 *)(param_1 + 0x9a) = 0;
  param_1[0x9b] = 0;
  param_1[0x9c] = 0;
  param_1[0x67] = 0;
  param_1[0x68] = 0;
  param_1[0x99] = 0xbad;
  return param_1;
}


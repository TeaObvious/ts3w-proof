/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   Initializes the renderer object, its edge and pending-removal containers and subset-spec map,
   then clears renderer/resource fields. Diagnostic labels identify ThicknessGeomEdges,
   MustRemoveThicknessGeomEdges and IDToSubsetSpecMap.
   Stored __fastcall parameter is in ECX; returns the receiver pointer in EAX. The initialized
   fields and actual body are preserved. Labels do not establish a complete C++ type, allocation
   size, container ABI or disposal/refcount policy.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

undefined4 * __fastcall FloorRenderer_InitializeContainers(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_010648bc;
  param_1[1] = 0;
  *(undefined1 *)(param_1 + 2) = 0;
  param_1[5] = 0;
  *(undefined1 *)(param_1 + 6) = 1;
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
  param_1[0x18] = 1.0;
  param_1[0x19] = 0x40000000;
  param_1[0x1b] = "LotRenderer/FloorRenderer/ThicknessGeomEdges";
  param_1[0x16] = 1;
  param_1[0x15] = &DAT_0114d900;
  param_1[0x17] = 0;
  param_1[0x1a] = 0;
  param_1[0x20] = 1.0;
  param_1[0x21] = 0x40000000;
  param_1[0x23] = "LotRenderer/FloorRenderer/MustRemoveThicknessGeomEdges";
  param_1[0x1e] = 1;
  param_1[0x1d] = &DAT_0114d900;
  param_1[0x1f] = 0;
  param_1[0x22] = 0;
  *(undefined1 *)(param_1 + 0x24) = 0;
  param_1[0x25] = 0;
  param_1[0x26] = 0;
  FUN_00afbba0(param_1 + 0x28);
  param_1[0x34] = 0;
  param_1[0x35] = 0;
  param_1[0x36] = "LotRenderer/FloorRenderer/IDToSubsetSpecMap";
  param_1[0x37] = 0x58;
  param_1[0x3c] = 1.0;
  param_1[0x3d] = 0x40000000;
  param_1[0x3a] = 1;
  param_1[0x39] = &DAT_0114d900;
  param_1[0x3b] = 0;
  param_1[0x3e] = 0;
  param_1[0x3f] = param_1 + 0x34;
  param_1[0x40] = 0;
  param_1[0x41] = 0;
  param_1[0x42] = 0;
  param_1[0x43] = 0;
  param_1[0x44] = 0;
  param_1[0x46] = 0;
  param_1[0x47] = 1.0;
  param_1[0x48] = 400;
  *(undefined1 *)(param_1 + 0x49) = 0;
  *(undefined1 *)((int)param_1 + 0x125) = 0;
  *(undefined1 *)((int)param_1 + 0x126) = 0;
  param_1[0x4a] = 0;
  param_1[0x4b] = 0;
  param_1[0x4c] = 0;
  param_1[0x4d] = 0;
  param_1[0x4e] = 0;
  param_1[0x4f] = 0;
  return param_1;
}


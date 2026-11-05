# Blend-unit fixed key slot

## Exact selected helper

[CasBlendUnit_SelectFixedKeySlot full owned ASM](../../evidence/native/functions/005A3D60_CasBlendUnit_SelectFixedKeySlot.asm) ([actual saved C](../../evidence/native/functions/005A3D60_CasBlendUnit_SelectFixedKeySlot.c)) cover the complete existing defined body: one contiguous 25-byte range, eight instructions. The inferred signature is retained; the physical instructions establish ECX as receiver, one unsigned stack DWORD as index, EAX as the selected address, and RET 4 on both paths.

The unsigned comparison selects receiver + 0x28 + index * 0x10 for indices zero and one. Every index at least two selects receiver + 0x28. The helper returns an address; it neither copies nor initializes a key and does not inspect a resource entry count.

## Actual export caller

[retained BlendUnitGetBlendKeyAtIndex caller ASM window](../../evidence/native/functions/005A6C70_ScriptCore_CASUtils_CASUtils_BlendUnitGetBlendKeyAtIndexImpl.asm) ([original C](../../evidence/native/functions/005A6C70_ScriptCore_CASUtils_CASUtils_BlendUnitGetBlendKeyAtIndexImpl.c)) show the join. The retained ASM remains its existing bounded 112-byte linear window, not a newly claimed current owned function extent. The physical E8 at 0x005a6cb4 targets the selected helper. The caller first gates the handle category against 0x35000000, obtains a manager lookup through an indirect call at interface offset 0xcc, and passes the successful lookup as ECX. A wrong category or null lookup writes four zero DWORDs to the exported key.

After the selected helper returns, the caller reads the four DWORDs at returned offsets 0, 4, 8 and 12. Output order is source offsets 8, 12, 0 and 4. The manager dispatch remains indirect; this evidence does not invent a concrete manager target or its ownership policy. The helper has no outgoing calls. Its one retained incoming direct-call row is physically checked against the pristine executable.

## Evidence limits

Initialization of fixed slots missing from a variable-length decoded resource, manager lifetime, allocation/free behavior and all other blend metadata are outside this helper. Returning the first slot for index two or greater does not prove that an absent fixed slot is initialized or safe to read. No decoder padding, fabricated key, new function definition or wider native policy follows from this selection body. No data table or constant payload is required: the relevant selector constants are instruction immediates in the paired Listing.

# Construction tool preparation and retained material context — PC1.67

## Complete canonical originals

All addresses select the original PC1.67 TS3W.exe. Names below are analyst roles, not recovered C++ symbols. Original instruction bytes and physical calling convention were checked; the companion C is the actual annotated Ghidra decompiler output, including explicitly described inference artifacts.

| Function | Complete original pair | Physical boundary |
| --- | --- | --- |
| CE9020 UserToolHost_PrepareParameters | [ASM](../../evidence/native/functions/00CE9020_UserToolHost_PrepareParameters.asm) ([C](../../evidence/native/functions/00CE9020_UserToolHost_PrepareParameters.c)) | cdecl five DWORDs; plain RET; active GUID/typed lot, key/variant and selected context preparation |
| CEFFC0 UserToolHost_SelectOrReuseTool | [ASM](../../evidence/native/functions/00CEFFC0_UserToolHost_SelectOrReuseTool.asm) ([C](../../evidence/native/functions/00CEFFC0_UserToolHost_SelectOrReuseTool.c)) | ECX host, two stack DWORDs, RET8; reuse/retirement/constructor/init/bind |
| CEFD60 UserToolHost_BindActiveTool | [ASM](../../evidence/native/functions/00CEFD60_UserToolHost_BindActiveTool.asm) ([C](../../evidence/native/functions/00CEFD60_UserToolHost_BindActiveTool.c)) | ECX host, pointer/low-byte boolean in two DWORD slots, RET8 |
| CEFD10 UserToolHost_QueueRetainedTool | [ASM](../../evidence/native/functions/00CEFD10_UserToolHost_QueueRetainedTool.asm) ([C](../../evidence/native/functions/00CEFD10_UserToolHost_QueueRetainedTool.c)) | ECX list, pointer-to-tool-pointer, RET4; 12-byte AddRef node insertion |
| A63AF0 PatternContext_PrepareFromBankProduct | [ASM](../../evidence/native/functions/00A63AF0_PatternContext_PrepareFromBankProduct.asm) ([C](../../evidence/native/functions/00A63AF0_PatternContext_PrepareFromBankProduct.c)) | cdecl five DWORDs; preserves child AL success |
| A62710 PatternContext_PrepareFromProductPreset | [ASM](../../evidence/native/functions/00A62710_PatternContext_PrepareFromProductPreset.asm) ([C](../../evidence/native/functions/00A62710_PatternContext_PrepareFromProductPreset.c)) | cdecl four DWORDs; only AL=1/0 is defined |

Complete function bodies contain 1,403 owned instructions/4,458 pristine original bytes. Tables are data outside those bodies, not extra instructions. The exact necessary selector/target inputs are [parameter targets](../../evidence/native/data/0x00ce92ac-parameter-switch-targets.bin), [parameter selectors](../../evidence/native/data/0x00ce92d4-parameter-switch-selectors.bin), [tool targets](../../evidence/native/data/0x00cf0974-tool-switch-targets.bin), [tool selectors](../../evidence/native/data/0x00cf09e4-tool-switch-selectors.bin): respectively40/31/112/51 bytes.

## Actual selected producer and consumer chain

Existing original registered wrapper CEBB90 calls CE9020 before CEFFC0. CE9020 resolves the WorldManager active GUID/typed lot and prepares its 16-byte key as a typed0201 aggregate. Its unsigned toolId-1 <=1E selector routes tool1 to bank2 and tool2 to bank1, then calls A63AF0(lot,key,preset,bank,outContext). Other selected kinds use distinct preparers; no common grammar is invented.

A63AF0 resolves the exact bank product using C8EA70, then calls A62710(lot,product,preset,outContext). Actual ADD ESP,10 and RET preserve AL. A62710's success epilogue A62A1C sets AL=1; all failure epilogues converge on A62A57 XOR AL,AL. CE9020@CE90AF tests only AL. Both inferred void returns were corrected to boolean; upper EAX is unspecified, never a new32-bit error code.

A62710 checks original product/preset count/index and retrieves the selected preset/Complate. After actual AL prerequisites, it calls existing ComplateNative_BuildPrograms5C0310 with an output vector and flags1/0. It consumes12-byte records, appends resource ownership to output+4 and splits16-byte key identities by the actual byte+8 flag, skipping type0341ACC9. A required primary key precedes unused-instance selection type044AE110, resource registration, lot identity retention and output Complate/key publication. Thus the selected path performs material-program preparation before tool initialization. It does not establish that all original game assets are staged synchronously or that current whole-lot speculative compilation is native policy.

The actual A62710 C retains child-signature/stack-inference artifacts, including shifted local names and unaff stack aliases. Annotations explicitly reject interpreting those as extra physical parameters, escaped return addresses or established semantic key names. The four actual entry slots and final MOV sources/stores are in its full instructions. No foreign callee ABI was changed to make the C cosmetically cleaner.

## Real tool lifetime

CEFFC0 can reuse an active tool only after ID and complete retained typed-variant comparisons. Replacement retires the old tool through virtual+8 under its lot+0D0 lock and releases its retained pointer. Active typed-lot absence admits only world tool IDs1C/1D. The unsigned0..32 switch constructs the actual selected kind; terrain sculpt, lot paint and water use the real+28 interface adjustment. A nonnull result receives virtual+4 initialization under its lot lock before CEFD60 binds it and retained variants are copied.

CEFD60 compares the actual current pointer, resets timing state for replacements, and uses old virtual+34 AL to select immediate retirement or retention in host+180's list. CEFD10 allocates a12-byte node and AddRefs the stored tool. Replacement AddRefs the new pointer before decrementing/releasing the old. Null binding emits event1140E90A with a normalized boolean; nonnull binding notifies the WorldManager. Deferred-list draining, constructor-internal resources, all first-edit callbacks and GPU completion remain outside this bounded proof.

## Project comparison and limits

The current process request path, normalized-world dedup, lot generation dictionary, minus-one suppression, detached ground-prefetch Task, mark-warm-on-fault and Volatile interaction hint are observed host mechanisms. This native chain establishes concrete original preparation/reuse/lifetime facts, not an equivalent host scheduling/retry/generation contract. No original managed policy duplication is confirmed or removed here. Native/managed registered hook names and widths stay unchanged.

All conclusions here are static decompilation/instruction/data/producer-consumer findings. The database was saved clean with original bytes unchanged. No original executable, product test, fixture, compiler or gameplay execution is claimed by these exports.

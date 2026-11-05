# Shared host no-op exports

In the [original CAW module](../README.md#original-module-identities), twenty named exports share `Sims3Common.dll:0x1055e150`. Their complete body is the single original byte `C3` (`RET`), ending at `0x1055e151`. Following `INT3` bytes are padding. [Original instructions](../evidence/native/Sims3Common/functions/1055E150_CAW_SharedNoOpExport.asm) ([actual annotated pseudocode](../evidence/native/Sims3Common/functions/1055E150_CAW_SharedNoOpExport.c)).

The body reads no parameter, writes no data or result register, makes no call and has no immediate stack cleanup. In particular, it implements no permission registry, profiling timer, object-factory initialization or renderer update. The export names retain their API identities; their shared address does not establish a common parameter list, return value or calling convention. Eighteen matched original managed P/Invoke declarations return void and have differing parameter lists; the two Console aliases have no matched declaration in the retained import index. The actual decompiler's `void(void)` is a representative rendering of this instruction body.

| Export family | Original aliases |
| --- | --- |
| Permissions and profiling | `App3D_GrantThreadPermissions`, `App3D_RevokeThreadPermissions`, `App3D_BeginProfiling`, `App3D_EndProfiling` |
| Factory lifecycle | `GameObjectFactoryWrap_Init`, `GameObjectFactoryWrap_Shutdown` |
| Animation | `Animation_SetMissingAnimationCallback`, `AnimationClipIkInfo_Dispose`, `AnimationComponent_SetWorldSpacePosition`, `AnimationComponent_Update`, `AnimationManager_UpdateRenderer` |
| Other shared aliases | `Console_GetPickInfoImpl`, `Console_ShutdownCursorImpl`, `DownloadContent_ShutdownImpl`, `RouteManager_SetCarSpeedGlobalMultiplier`, `ModelComponent_UpdateMaterialShader`, `SacsWrap_StateMachineDriver_LogState`, `StreamHost_Flush`, `TextureBuilderWrap_DestroyRTT`, `WorldWrap_TriggerCloudChange` |

The [API index](../API-INDEX.tsv) retains each distinct PE ordinal and matched MethodDef, all referring to this one canonical native pair. Their original aliases and registration comments are retained inside the annotated C file.

The complete existing `GfxDevice_EndScene` export at `0x10985af0` loads a global into ECX and tail-jumps to this no-op. [Original instructions](../evidence/native/Sims3Common/functions/10985AF0_GfxDevice_EndScene.asm) ([pseudocode](../evidence/native/Sims3Common/functions/10985AF0_GfxDevice_EndScene.c)). It contains no draw-count or frame-order validation. This boundary does not establish the full original Begin/Draw/Present scheduling or all managed callers' responsibilities. Those are separate static questions. No original editor session is claimed.

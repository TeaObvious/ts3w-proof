using System;
using System.Runtime.InteropServices;
using ColladaUtils;

namespace Sims3.Pipeline;

public class TextureUtils
{
	private static readonly string[] mExtensions = new string[8] { ".jpg", ".jpeg", ".targa", ".tga", ".tif", ".tiff", ".png", ".dds" };

	public static string[] Extensions => mExtensions;

	[DllImport("Sims3PipelineHelper", EntryPoint = "CreateTextureEngine")]
	private static extern IntPtr RawCreateNativeTextureEngine();

	public static INativeTextureEngine CreateNativeTextureEngine()
	{
		IntPtr pUnk = RawCreateNativeTextureEngine();
		try
		{
			return (INativeTextureEngine)Marshal.GetTypedObjectForIUnknown(pUnk, typeof(INativeTextureEngine));
		}
		finally
		{
			Marshal.Release(pUnk);
		}
	}

	public static void CoerceTextureFormat(INativeTextureEngine engine, ref INativeTextureBuffer tex, TextureFormat format, bool allowDither)
	{
		if (tex.GetFormat() != format)
		{
			engine.ConvertTexture(tex, format, allowDither, out var bufResult);
			tex.Shutdown();
			tex = bufResult;
		}
	}

	public static void GenerateMipMaps(INativeTextureEngine engine, ref INativeTextureBuffer tex, ResamplingFilter filter, bool allowDither, ILogger logger)
	{
		if (tex.GetMipCount() != 1)
		{
			return;
		}
		if (tex.IsCubeMap() || tex.IsVolume())
		{
			logger?.LogOutput("\t\tWarning: Cannot currently mip cube or volume textures.");
			return;
		}
		uint num = 1u;
		for (uint num2 = System.Math.Max(tex.GetWidth(), tex.GetHeight()); num2 > 1; num2 >>= 1)
		{
			num++;
		}
		engine.CreateTexture(out var buf);
		buf.Init(tex.GetWidth(), tex.GetHeight(), tex.GetDepth(), num, cubeMap: false, tex.GetFormat());
		engine.CopyImage(buf, 0, 0, 0, tex, 0, 0, 0);
		engine.FilterTexture(buf, filter, 0f, allowDither);
		tex.Shutdown();
		tex = buf;
	}
}

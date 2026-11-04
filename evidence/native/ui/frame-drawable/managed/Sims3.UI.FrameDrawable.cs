/* Actual original-assembly ILSpy output. Dispatch semantics are verified against
   the paired original IL; unresolved-reference diagnostic comments are retained.
   Static evidence only, no original runtime execution or renderer behavior. */

using Sims3.SimIFace;
using Sims3.UI;

public class FrameDrawable : DrawableBase
{
	protected enum PropertyID
	{
		kPropFrameDrawableBorderWidth = 51183616,
		kPropFrameDrawableOutlineColor = 51183618
	}

	internal enum FrameDrawableGenericID
	{
		kFrameDrawableGetBorderStyle,
		kFrameDrawableSetBorderStyle,
		kFrameDrawableGetBorderColor,
		kFrameDrawableSetBorderColor
	}

	public enum BorderStyle
	{
		Default,
		Hidden,
		Solid,
		Dotted,
		Dashed,
		Inset,
		Outset,
		Groove,
		Ridge,
		OutsetOutline,
		InsetOutline
	}

	internal const uint ClassId = 51205305u;

	public Rect BorderWidth
	{
		get
		{
			//IL_000b: Unknown result type (might be due to invalid IL or missing references)
			return UIManager.GetRectProperty(DrawableHandle, 51183616u);
		}
		set
		{
			//IL_000b: Unknown result type (might be due to invalid IL or missing references)
			UIManager.SetRectProperty(DrawableHandle, 51183616u, value);
		}
	}

	public Color OutlineColor
	{
		get
		{
			//IL_000b: Unknown result type (might be due to invalid IL or missing references)
			return UIManager.GetColorProperty(DrawableHandle, 51183618u);
		}
		set
		{
			//IL_000b: Unknown result type (might be due to invalid IL or missing references)
			UIManager.SetColorProperty(DrawableHandle, 51183618u, value);
		}
	}

	public FrameDrawable(uint drawableHandle)
		: base(drawableHandle)
	{
	}

	public Color GetBorderColorForState(ControlStates state)
	{
		//IL_0009: Unknown result type (might be due to invalid IL or missing references)
		return new Color(UIManager.FrameDrawableGeneric(this, FrameDrawableGenericID.kFrameDrawableGetBorderColor, state, 0u));
	}

	public void SetBorderColorForState(ControlStates state, Color color)
	{
		UIManager.FrameDrawableGeneric(this, FrameDrawableGenericID.kFrameDrawableSetBorderColor, state, color.ARGB);
	}

	public BorderStyle GetBorderStyleForState(ControlStates state)
	{
		return (BorderStyle)UIManager.FrameDrawableGeneric(this, FrameDrawableGenericID.kFrameDrawableGetBorderStyle, state, 0u);
	}

	public void SetBorderStyleForState(ControlStates state, BorderStyle style)
	{
		UIManager.FrameDrawableGeneric(this, FrameDrawableGenericID.kFrameDrawableSetBorderStyle, state, (uint)style);
	}
}

/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gdkpixbuf
 * outFile = PixbufSimpleAnimation
 * strct   = GdkPixbufSimpleAnim
 * realStrct=
 * ctorStrct=
 * clss    = PixbufSimpleAnimation
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- gdk_pixbuf_simple_anim_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdkpixbuf.PixbufSimpleAnimation;

public  import gtkc.gdkpixbuftypes;

private import gtkc.gdkpixbuf;


private import gdk.Pixbuf;



private import gobject.ObjectG;

/**
 * Description
 *  The gdk-pixbuf library provides a simple mechanism to load and represent
 *  animations. An animation is conceptually a series of frames to be displayed
 *  over time. Each frame is the same size. The animation may not be represented
 *  as a series of frames internally; for example, it may be stored as a
 *  sprite and instructions for moving the sprite around a background. To display
 *  an animation you don't need to understand its representation, however; you just
 *  ask gdk-pixbuf what should be displayed at a given point in time.
 */
public class PixbufSimpleAnimation : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkPixbufSimpleAnim* gdkPixbufSimpleAnim;
	
	
	public GdkPixbufSimpleAnim* getPixbufSimpleAnimationStruct()
	{
		return gdkPixbufSimpleAnim;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPixbufSimpleAnim;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkPixbufSimpleAnim* gdkPixbufSimpleAnim)
	{
		if(gdkPixbufSimpleAnim is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkPixbufSimpleAnim passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gdkPixbufSimpleAnim);
		if( ptr !is null )
		{
			this = cast(PixbufSimpleAnimation)ptr;
			return;
		}
		super(cast(GObject*)gdkPixbufSimpleAnim);
		this.gdkPixbufSimpleAnim = gdkPixbufSimpleAnim;
	}
	
	/**
	 */
	
	/**
	 * Creates a new, empty animation.
	 * Since 2.8
	 * Params:
	 * width =  the width of the animation
	 * height =  the height of the animation
	 * rate =  the speed of the animation, in frames per second
	 */
	public this (int width, int height, float rate)
	{
		// GdkPixbufSimpleAnim* gdk_pixbuf_simple_anim_new (gint width,  gint height,  gfloat rate);
		auto p = gdk_pixbuf_simple_anim_new(width, height, rate);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GdkPixbufSimpleAnim*) p);
	}
	
	/**
	 * Adds a new frame to animation. The pixbuf must
	 * have the dimensions specified when the animation
	 * was constructed.
	 * Since 2.8
	 * Params:
	 * pixbuf =  the pixbuf to add
	 */
	public void addFrame(Pixbuf pixbuf)
	{
		// void gdk_pixbuf_simple_anim_add_frame (GdkPixbufSimpleAnim *animation,  GdkPixbuf *pixbuf);
		gdk_pixbuf_simple_anim_add_frame(gdkPixbufSimpleAnim, (pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}
}


/*
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene : SEScene
{
	SESprite image1;
	SESprite a;
	SESprite b;
	SESprite c;
	SESprite d;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("myimage1","image1",0,0);
		image1 = add_sprite_for_image(SEImage.for_resource("myimage1"));
		image1.move(0,0);

		rsc.prepare_image("mymain","pic",0.95*get_scene_width(),0.95*get_scene_height());
		a = add_sprite_for_image(SEImage.for_resource("mymain"));
		a.move(0.95*get_scene_width(),0.95*get_scene_height());

	}

	public void cleanup() {
		base.cleanup();
	}
		public void on_pointer_press(SEPointerInfo pi) {	
		base.on_pointer_press(pi);
		switch_scene(new MainScene());	
		
	}
}

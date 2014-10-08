
/*
 * ThirdScene
 * Created by Eqela Studio 2.0b7.4
 */

public class ThirdScene : SEScene
{	
	SESprite image2;
//	SESprite text;
		
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("myimage2","image2",0,0);
		image2 = add_sprite_for_image(SEImage.for_resource("myimage2"));
		image2.move(0,0);


	//	rsc.prepare_font("myfont","arial bold color=Black",40);
	//	text = add_sprite_for_text("Main","myfont");
	//	text.move(0.25*get_scene_width()-0.5*text.get_width(),0.25*get_scene_height()-0.5*text.get_height());
	
	}

	public void cleanup() {
		base.cleanup();
	}

	public void on_pointer_press(SEPointerInfo pi) {	
		base.on_pointer_press(pi);
		switch_scene(new MainScene());	
		
	}
	
}

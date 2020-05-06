package game.framework;

import org.junit.jupiter.api.Test;

class FunctionTests {

	@Test
	void test_add1() {
		float x = (float) 0.0;
		float y = (float) 0.0;
		Vector2 vec = new Vector2(x, y);
		x = 1; y = 20;
		Vector2 vec2 = new Vector2(x, y);
		Vector2 vec3 = vec.add(vec2);
		System.out.println(vec3.toString());
	}
	
	@Test
	void test_add2() {
		float x = (float) 0xffffffff; // max float size
		float y = (float) 0xffffffff; // max float size
		Vector2 vec = new Vector2(x, y);
		x = 1; y = 20;
		Vector2 vec2 = new Vector2(x, y);
		Vector2 vec3 = vec.add(vec2);
		System.out.println(vec3.toString());
	}
	
	@Test
	void test_add3() {
		float x = (float) 0xffffffff; // max float size
		float y = (float) 0xffffffff; // max float size
		Vector2 vec = new Vector2(x, y);
		x = 1; y = 20;
		Vector2 vec2 = new Vector2(x, y);
		Vector2 vec3 = vec.add(vec2);
		System.out.println(vec3.toString());
	}
	
	@Test
	void test_barycentric1() {
		float x = (float) 0x2; // max float size
		float y = (float) 0x2; // max float size
		Vector2 vec = new Vector2(x, y);
		x = 3; y = 3;
		Vector2 vec2 = new Vector2(x, y);
		x = 7; y = 7;
		Vector2 vec3 = new Vector2(x,y);
		Vector2 vec4 = vec.barycentric(vec, vec2, vec3, (float) 101, (float) 209);
		System.out.println(vec.barycentric(vec, vec2, vec3, (float) 101, (float) 209));
	}
}

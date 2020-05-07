package game.framework;

import org.junit.jupiter.api.Test;

class TestVector2 {
    @Test
    void TestCase1() {
        Vector2 vec1 = new Vector2(48332,7860);
        System.out.println(vec1.add(0,0));
    }
    @Test
    void TestCase2() {
        Vector2 vec1 = new Vector2(54810,64167);
        System.out.println(vec1.add(28697,28307));
    }
    @Test
    void TestCase3() {
        Vector2 vec1 = new Vector2(2217,2144);
        System.out.println(vec1.add(40368,41831));
    }
    @Test
    void TestCase4() {
        Vector2 vec1 = new Vector2(34824,30939);
        System.out.println(vec1.addX(0));
    }
    @Test
    void TestCase5() {
        Vector2 vec1 = new Vector2(7708,52895);
        System.out.println(vec1.addX(64107));
    }
    @Test
    void TestCase6() {
        Vector2 vec1 = new Vector2(18417,58034);
        System.out.println(vec1.addX(21368));
    }
    @Test
    void TestCase7() {
        Vector2 vec1 = new Vector2(2253,4572);
        System.out.println(vec1.addY(0));
    }
    @Test
    void TestCase8() {
        Vector2 vec1 = new Vector2(19144,61968);
        System.out.println(vec1.addY(63321));
    }
    @Test
    void TestCase9() {
        Vector2 vec1 = new Vector2(39833,4994);
        System.out.println(vec1.addY(6654));
    }
    @Test
    void TestCase10() {
        Vector2 vec1 = new Vector2(61357,7999);
        Vector2 vec2 = new Vector2(13562,52862);
        Vector2 vec3 = new Vector2(19742,52348);
        System.out.println(vec1.barycentric(vec1,vec2,vec3,0,0));
    }
    @Test
    void TestCase11() {
        Vector2 vec1 = new Vector2(8543,13163);
        Vector2 vec2 = new Vector2(48462,13515);
        Vector2 vec3 = new Vector2(7858,8533);
        System.out.println(vec1.barycentric(vec1,vec2,vec3,19390,2667));
    }
    @Test
    void TestCase12() {
        Vector2 vec1 = new Vector2(26436,34212);
        Vector2 vec2 = new Vector2(58506,36661);
        Vector2 vec3 = new Vector2(32985,32908);
        System.out.println(vec1.barycentric(vec1,vec2,vec3,42314,52959));
    }
    @Test
    void TestCase13() {
        Vector2 vec1 = new Vector2(50242,4950);
        Vector2 vec2 = new Vector2(35096,44467);
        Vector2 vec3 = new Vector2(26637,13666);
        System.out.println(vec1.clamp(vec1,vec2,vec3));
    }
    @Test
    void TestCase14() {
        Vector2 vec1 = new Vector2(60081,31607);
        Vector2 vec2 = new Vector2(58882,33299);
        Vector2 vec3 = new Vector2(47986,2081);
        System.out.println(vec1.clamp(vec1,vec2,vec3));
    }
    @Test
    void TestCase15() {
        Vector2 vec1 = new Vector2(39897,49064);
        Vector2 vec2 = new Vector2(57008,26332);
        Vector2 vec3 = new Vector2(41183,35263);
        System.out.println(vec1.clamp(vec1,vec2,vec3));
    }
    @Test
    void TestCase16() {
        Vector2 vec1 = new Vector2(7278,44020);
        System.out.println(vec1.divide(0));
    }
    @Test
    void TestCase17() {
        Vector2 vec1 = new Vector2(36559,4366);
        System.out.println(vec1.divide(17808));
    }
    @Test
    void TestCase18() {
        Vector2 vec1 = new Vector2(46790,43063);
        System.out.println(vec1.divide(19147));
    }
    @Test
    void TestCase19() {
        Vector2 vec1 = new Vector2(57870,15072);
        Vector2 vec2 = new Vector2(16537,55263);
        System.out.println(vec1.dotProduct(vec2));
    }
    @Test
    void TestCase20() {
        Vector2 vec1 = new Vector2(52790,10581);
        Vector2 vec2 = new Vector2(39172,15252);
        System.out.println(vec1.dotProduct(vec2));
    }
    @Test
    void TestCase21() {
        Vector2 vec1 = new Vector2(4091,33516);
        Vector2 vec2 = new Vector2(23935,24704);
        System.out.println(vec1.dotProduct(vec2));
    }
}

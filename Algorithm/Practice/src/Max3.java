
class Max3 {
	static int max3(int a, int b, int c) {
		int max = a;
		if(b > max) max = b;
		if(c > max) max = c;
		return max;
	}
	public static void main(String[] args) {
		System.out.println("max3(3,25,1) = " + max3(3,25,1));
	}

}


class Median {
	static int med3(int a, int b, int c) {
	int med = 0;
	if(a<=b){
		if(a>=c) {
			med = a;
		}
		else {
			med = (b>=c)?c:b;
		}
	}
	else {
		if(a<=c) {
			med = a;
		}
		else {
			med = (b>=c)?b:c;
		}
	}
	return med;
	}
	public static void main(String[] args) {
		System.out.println(med3(3,5,4));
	

	}

}

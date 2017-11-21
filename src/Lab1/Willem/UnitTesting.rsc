module Lab1::Willem::UnitTesting

import Lab1::Willem::Metric;
import IO;

Metric unitTesting() {
	real percentage = 70.0;
	println("Percentage: <percentage>");
	return toMetric(percentage);
}

private Metric toMetric(real result) {
	int sc = 0;
	if (result >= 95) {
		sc = 2;
	} else if (result >= 80) {
		sc = 1;
	} else if (result >= 60) {
		sc = 0;
	} else if (result >= 20) {
		sc = -1;
	} else {
		sc = -2;
	}
	return metric("Unit Testing", score(sc));
}
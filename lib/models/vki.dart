class VKI {
  const VKI(this.age, this.height, this.weight);

  final int age, height, weight; //height in cm, weight in kg

  double calculateBMI(double weight, double height) {
  return weight / ((height / 100) * (height / 100));
}

}

class Project {
  String name;
  int year;
  String description;
  String imgUrl;
  List<String>? technologiesUsed;

  Project(
      {required this.name,
      required this.year,
      required this.description,
      required this.imgUrl,
      this.technologiesUsed});
}

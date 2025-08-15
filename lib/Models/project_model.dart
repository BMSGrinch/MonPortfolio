class ProjectModel {
  final String imgURL;
  final String projectName;
  final String? description;

  ProjectModel({
    required this.imgURL,
    required this.projectName,
    this.description,
  });
}

List<ProjectModel> projects = [
  ProjectModel(
    imgURL: "asset/project_img/Main_screen_animal_fav.png",
    projectName: "Animal Favoris",
    description: "Application mobile pour gérer les animaux favoris.",
  ),
  ProjectModel(
    imgURL: "asset/project_img/Main_screen.mvpfast.png",
    projectName: "Ecommerce App",
    description: "Une boutique en ligne pour acheter des vêtements.",
  ),
  ProjectModel(
    imgURL: "asset/project_img/Main_page_appvitrine.png",
    projectName: "App Vitrine",
    description: "Application vitrine d'une boutique de vêtements.",
  ),
];

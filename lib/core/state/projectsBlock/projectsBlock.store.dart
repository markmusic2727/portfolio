import 'package:mobx/mobx.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/projectDisplay/projectDisplay.ui.dart';

part 'projectsBlock.store.g.dart';

class ProjectsBlockStore extends _ProjectsBlockStore with _$ProjectsBlockStore {
}

abstract class _ProjectsBlockStore with Store {
  @observable
  String title = '';

  @observable
  String context = '';

  @observable
  List<Project> projectList = [];

  @observable
  List<ProjectDisplay> projects = [];

  @action
  void addProject(ProjectDisplay p) => projects.add(p);

  @action
  void addProjectList(Project project) => projectList.add(project);

  @action
  void changeTitle(String v) => title = v;

  @action
  void changeContext(String v) => context = v;
}

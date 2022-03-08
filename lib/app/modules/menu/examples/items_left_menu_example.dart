import 'package:poc_portal/app/modules/menu/models/items_left_menu_model.dart';
import 'package:poc_portal/app/utils/strings.dart';

class ItemsLeftMenuExample {
  static final itemsLeftMenuFirstSteps = [
    ItemsLeftMenuModel(title: Strings.titleJiraTopic, path: './jira'),
    ItemsLeftMenuModel(title: Strings.titleGitbookTopic, path: './gitbook'),
    ItemsLeftMenuModel(title: Strings.titleGithubTopic, path: './github'),
    ItemsLeftMenuModel(title: Strings.titleVPNTopic, path: './vpn'),
    ItemsLeftMenuModel(title: Strings.titleAWSTopic, path: './aws'),
    ItemsLeftMenuModel(title: Strings.titleShortcutTopic, path: './shortcut'),
  ];
  static final itemsLeftMenuTech = [
    ItemsLeftMenuModel(
        title: Strings.titleCleanArchTopic, path: './clean_arch'),
    ItemsLeftMenuModel(title: Strings.titleBackTopic, path: './back'),
    ItemsLeftMenuModel(title: Strings.titleFrontTopic, path: './front'),
    ItemsLeftMenuModel(title: Strings.titleSRETopic, path: './sre'),
  ];

  static final itemsLeftMenuStudy = [
    ItemsLeftMenuModel(
        title: Strings.titleCleanArchTopic, path: './clean_arch'),
    ItemsLeftMenuModel(title: Strings.titleSRETopic, path: './sre'),
    ItemsLeftMenuModel(title: Strings.titleFlutterTopic, path: './flutter'),
    ItemsLeftMenuModel(title: Strings.titleDockerTopic, path: './docker'),
  ];
}

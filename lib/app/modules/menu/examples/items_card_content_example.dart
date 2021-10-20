import 'package:poc_portal/app/modules/menu/models/items_card_content_model.dart';
import 'package:poc_portal/app/utils/strings.dart';

class ItemsCardContentExample {
  static final itemsCardContentJira = [
    ItemsCardContentModel(
        titulo: Strings.titleJiraTopic, content: Strings.genericLongText),
  ];

  static final itemsCardContentGitbook = [
    ItemsCardContentModel(
        titulo: Strings.titleGitbookTopic, content: Strings.genericLongText),
    ItemsCardContentModel(
        titulo: Strings.titleGitbookTopic, content: Strings.genericSmallText),
  ];

  static final itemsCardContentGithub = [
    ItemsCardContentModel(
        titulo: Strings.titleGithubTopic, content: Strings.genericLongText),
    ItemsCardContentModel(
        titulo: Strings.titleGithubTopic, content: Strings.genericSmallText),
  ];
}

import 'package:poc_portal/app/modules/menu/models/items_card_content_model.dart';
import 'package:poc_portal/app/utils/strings.dart';

class ItemsCardContentExample {
  //cards first steps and access
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

  static final itemsCardContentVPN = [
    ItemsCardContentModel(
        titulo: Strings.titleVPNTopic, content: Strings.genericSmallText),
    ItemsCardContentModel(
        titulo: Strings.titleVPNTopic, content: Strings.genericSmallText),
    ItemsCardContentModel(
        titulo: Strings.titleVPNTopic, content: Strings.genericSmallText),
    ItemsCardContentModel(
        titulo: Strings.titleVPNTopic, content: Strings.genericSmallText),
    ItemsCardContentModel(
        titulo: Strings.titleVPNTopic, content: Strings.genericSmallText),
  ];

  static final itemsCardContentAWS = [
    ItemsCardContentModel(
        titulo: Strings.titleAWSTopic, content: Strings.genericSmallText),
  ];

  static final itemsCardContentShortcut = [
    ItemsCardContentModel(
        titulo: Strings.titleShortcutTopic, content: Strings.genericSmallText),
  ];

  //cards useds techs

  static final itemsCardContentCleanArch = [
    ItemsCardContentModel(
        titulo: Strings.titleCleanArchTopic, content: Strings.genericSmallText),
  ];

  static final itemsCardContentBack = [
    ItemsCardContentModel(
        titulo: Strings.titleBackTopic, content: Strings.genericSmallText),
  ];

  static final itemsCardContentFront = [
    ItemsCardContentModel(
        titulo: Strings.titleFrontTopic, content: Strings.genericSmallText),
  ];

  static final itemsCardContentSRE = [
    ItemsCardContentModel(
        titulo: Strings.titleSRETopic, content: Strings.genericSmallText),
  ];

  //cards studys materials
  static final itemsCardContentFlutter = [
    ItemsCardContentModel(
        titulo: Strings.titleFlutterTopic, content: Strings.genericSmallText),
  ];

  static final itemsCardContentDocker = [
    ItemsCardContentModel(
        titulo: Strings.titleDockerTopic, content: Strings.genericSmallText),
  ];

  // cards glossary
  static final cardGlossary = [
    ItemsCardContentModel(
      titulo: 'API',
      content: Strings.apiContentGlossary,
      buttomTitle: 'product management',
    ),
    ItemsCardContentModel(
      titulo: 'backlog',
      content: Strings.backlogGlossary,
      buttomTitle: 'product management',
    ),
    ItemsCardContentModel(
      titulo: 'churn',
      content: Strings.churnGlossary,
      buttomTitle: 'negócios',
    ),
    ItemsCardContentModel(
      titulo: 'DAU',
      content: Strings.dauGlossary,
      buttomTitle: 'negócios',
    )
  ];
}

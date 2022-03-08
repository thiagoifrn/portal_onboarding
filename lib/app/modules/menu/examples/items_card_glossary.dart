import 'package:poc_portal/app/modules/menu/models/items_card_content_model.dart';
import 'package:poc_portal/app/utils/strings.dart';

class ItemsCardsGlossary {
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
